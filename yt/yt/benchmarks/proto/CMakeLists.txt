
# This file was generated by the build system used internally in the Yandex monorepo.
# Only simple modifications are allowed (adding source-files to targets, adding simple properties
# like target_include_directories). These modifications will be ported to original
# ya.make files by maintainers. Any complex modifications which can't be ported back to the
# original buildsystem will not be accepted.


get_built_tool_path(
  TOOL_protoc_bin
  TOOL_protoc_dependency
  contrib/tools/protoc/bin
  protoc
)
get_built_tool_path(
  TOOL_cpp_styleguide_bin
  TOOL_cpp_styleguide_dependency
  contrib/tools/protoc/plugins/cpp_styleguide
  cpp_styleguide
)
get_built_tool_path(
  TOOL_protoc_bin
  TOOL_protoc_dependency
  contrib/tools/protoc/bin
  protoc
)
get_built_tool_path(
  TOOL_cpp_styleguide_bin
  TOOL_cpp_styleguide_dependency
  contrib/tools/protoc/plugins/cpp_styleguide
  cpp_styleguide
)
get_built_tool_path(
  TOOL_protoc_bin
  TOOL_protoc_dependency
  contrib/tools/protoc/bin
  protoc
)
get_built_tool_path(
  TOOL_cpp_styleguide_bin
  TOOL_cpp_styleguide_dependency
  contrib/tools/protoc/plugins/cpp_styleguide
  cpp_styleguide
)

add_executable(proto)
target_link_libraries(proto PUBLIC
  contrib-libs-linux-headers
  contrib-libs-cxxsupp
  yutil
  library-cpp-cpuid_check
  contrib-libs-protobuf
)
target_link_options(proto PRIVATE
  -ldl
  -lrt
  -Wl,--no-as-needed
  -fPIC
  -fPIC
  -lpthread
  -lrt
  -ldl
)
target_proto_messages(proto PRIVATE
  ${CMAKE_SOURCE_DIR}/yt/yt/benchmarks/proto/test_base.proto
  ${CMAKE_SOURCE_DIR}/yt/yt/benchmarks/proto/test_full.proto
  ${CMAKE_SOURCE_DIR}/yt/yt/benchmarks/proto/test_part.proto
)
target_sources(proto PRIVATE
  ${CMAKE_BINARY_DIR}/yt/yt/benchmarks/proto/test_base.pb.h
  ${CMAKE_BINARY_DIR}/yt/yt/benchmarks/proto/test_full.pb.h
  ${CMAKE_BINARY_DIR}/yt/yt/benchmarks/proto/test_part.pb.h
  ${CMAKE_SOURCE_DIR}/yt/yt/benchmarks/proto/main.cpp
)
target_allocator(proto
  cpp-malloc-tcmalloc
  libs-tcmalloc-no_percpu_cache
)
target_proto_addincls(proto
  ./
  ${CMAKE_SOURCE_DIR}/
  ${CMAKE_BINARY_DIR}
  ${CMAKE_SOURCE_DIR}
  ${CMAKE_SOURCE_DIR}/contrib/libs/protobuf/src
  ${CMAKE_BINARY_DIR}
  ${CMAKE_SOURCE_DIR}/contrib/libs/protobuf/src
)
target_proto_outs(proto
  --cpp_out=${CMAKE_BINARY_DIR}/
  --cpp_styleguide_out=${CMAKE_BINARY_DIR}/
)
vcs_info(proto)
