#pragma once

#include "public.h"

#include <yt/yt/ytlib/chunk_client/public.h>

#include <library/cpp/yt/memory/ref.h>

namespace NYT::NTableClient {

////////////////////////////////////////////////////////////////////////////////

//! This session manages dictionary compressors to compress tabular data.
struct IDictionaryCompressionSession
    : public TRefCounted
{
    //! Prior to compressing, session should be fed with enough samples to elect
    //! best compressor policy regarding the data samples.
    //! Returns |true| if session needs more samples and |false| if ready to compress.
    virtual bool FeedSample(TVersionedRow row, TChunkedMemoryPool* pool) = 0;

    //! Using elected compressor policy performs inline compression of suitable values of #row.
    virtual void CompressValuesInRow(TMutableVersionedRow* row, TChunkedMemoryPool* pool) = 0;

    //! Returns elected dictionary id (i.e. one used for compression).
    virtual NChunkClient::TChunkId GetCompressionDictionaryId() const = 0;

    virtual TDuration GetCompressionTime() const = 0;
};

DEFINE_REFCOUNTED_TYPE(IDictionaryCompressionSession)

////////////////////////////////////////////////////////////////////////////////

//! This session manages dictionary decompressors to decompress tabular data.
struct IDictionaryDecompressionSession
    : public TRefCounted
{
    //! Decompresses #compressedValues inline and returns list of blobs holding these uncompressed values.
    //! The #dictionaryIds list reflects for each of its elements which compression dictionary is to be used
    //! to decompress corresponding element of #compressedValues. No dictionary id can be null.
    //! NB: #compressedValues and #dictionaryIds must be of equal size.
    virtual TFuture<std::vector<TSharedRef>> DecompressValues(
        std::vector<TUnversionedValue*> compressedValues,
        std::vector<NChunkClient::TChunkId> dictionaryIds,
        NChunkClient::TClientChunkReadOptions chunkReadOptions) = 0;

    virtual TDuration GetDecompressionTime() const = 0;
};

DEFINE_REFCOUNTED_TYPE(IDictionaryDecompressionSession)

////////////////////////////////////////////////////////////////////////////////

struct IDictionaryCompressionFactory
    : public TRefCounted
{
    virtual IDictionaryCompressionSessionPtr CreateDictionaryCompressionSession() const = 0;

    virtual IDictionaryDecompressionSessionPtr CreateDictionaryDecompressionSession() const = 0;
};

DEFINE_REFCOUNTED_TYPE(IDictionaryCompressionFactory)

////////////////////////////////////////////////////////////////////////////////

} // namespace NYT::NTableClient
