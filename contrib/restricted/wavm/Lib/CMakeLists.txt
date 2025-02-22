
# This file was generated by the build system used internally in the Yandex monorepo.
# Only simple modifications are allowed (adding source-files to targets, adding simple properties
# like target_include_directories). These modifications will be ported to original
# ya.make files by maintainers. Any complex modifications which can't be ported back to the
# original buildsystem will not be accepted.



add_library(restricted-wavm-Lib)
target_compile_options(restricted-wavm-Lib PRIVATE
  -DHAS_FUTIMENS
  -DHAS_UTIMENSAT
  -DWASM_C_API=WAVM_API
  -DWAVM_API=
  $<IF:$<CXX_COMPILER_ID:MSVC>,,-Wno-everything>
)
target_include_directories(restricted-wavm-Lib PRIVATE
  ${CMAKE_SOURCE_DIR}/contrib/libs/libunwind/include
  ${CMAKE_BINARY_DIR}/contrib/libs/llvm16/include
  ${CMAKE_SOURCE_DIR}/contrib/libs/llvm16/include
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Include
)
target_link_libraries(restricted-wavm-Lib PUBLIC
  contrib-libs-linux-headers
  contrib-libs-cxxsupp
  contrib-libs-libunwind
  llvm16-lib-Analysis
  llvm16-lib-AsmParser
  llvm16-lib-BinaryFormat
  lib-Bitcode-Reader
  lib-Bitcode-Writer
  lib-Bitstream-Reader
  llvm16-lib-CodeGen
  lib-CodeGen-AsmPrinter
  lib-CodeGen-GlobalISel
  lib-CodeGen-MIRParser
  lib-CodeGen-SelectionDAG
  lib-DebugInfo-CodeView
  lib-DebugInfo-DWARF
  lib-DebugInfo-MSF
  llvm16-lib-Demangle
  llvm16-lib-ExecutionEngine
  lib-ExecutionEngine-JITLink
  lib-ExecutionEngine-Orc
  lib-ExecutionEngine-RuntimeDyld
  lib-Frontend-OpenMP
  llvm16-lib-IR
  llvm16-lib-IRReader
  llvm16-lib-Linker
  llvm16-lib-MC
  lib-MC-MCDisassembler
  lib-MC-MCParser
  llvm16-lib-Object
  llvm16-lib-Passes
  llvm16-lib-ProfileData
  llvm16-lib-Remarks
  llvm16-lib-Support
  llvm16-lib-Target
  lib-Target-AArch64
  Target-AArch64-AsmParser
  Target-AArch64-Disassembler
  Target-AArch64-MCTargetDesc
  Target-AArch64-TargetInfo
  Target-AArch64-Utils
  lib-Target-ARM
  Target-ARM-AsmParser
  Target-ARM-Disassembler
  Target-ARM-MCTargetDesc
  Target-ARM-TargetInfo
  Target-ARM-Utils
  lib-Target-BPF
  Target-BPF-AsmParser
  Target-BPF-Disassembler
  Target-BPF-MCTargetDesc
  Target-BPF-TargetInfo
  lib-Target-NVPTX
  Target-NVPTX-MCTargetDesc
  Target-NVPTX-TargetInfo
  lib-Target-PowerPC
  Target-PowerPC-AsmParser
  Target-PowerPC-Disassembler
  Target-PowerPC-MCTargetDesc
  Target-PowerPC-TargetInfo
  lib-Target-WebAssembly
  Target-WebAssembly-AsmParser
  Target-WebAssembly-Disassembler
  Target-WebAssembly-MCTargetDesc
  Target-WebAssembly-TargetInfo
  lib-Target-X86
  Target-X86-AsmParser
  Target-X86-Disassembler
  Target-X86-MCTargetDesc
  Target-X86-TargetInfo
  llvm16-lib-TextAPI
  lib-Transforms-AggressiveInstCombine
  lib-Transforms-CFGuard
  lib-Transforms-Coroutines
  lib-Transforms-IPO
  lib-Transforms-InstCombine
  lib-Transforms-Instrumentation
  lib-Transforms-Scalar
  lib-Transforms-Utils
  lib-Transforms-Vectorize
  cpp-sanitizer-include
)
target_sources(restricted-wavm-Lib PRIVATE
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Emscripten/Emscripten.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Emscripten/EmscriptenThreads.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/IR/DisassemblyNames.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/IR/FeatureSpec.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/IR/FloatPrinting.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/IR/Module.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/IR/Operators.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/IR/RandomModule.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/IR/Types.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/IR/Validate.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/LLVMJIT/EmitConvert.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/LLVMJIT/EmitCore.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/LLVMJIT/EmitExceptions.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/LLVMJIT/EmitFunction.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/LLVMJIT/EmitMem.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/LLVMJIT/EmitModule.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/LLVMJIT/EmitNumeric.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/LLVMJIT/EmitTable.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/LLVMJIT/EmitVar.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/LLVMJIT/LLVMCompile.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/LLVMJIT/LLVMJIT.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/LLVMJIT/LLVMModule.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/LLVMJIT/Thunk.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/LLVMJIT/Win64EH.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Logging/Logging.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/NFA/NFA.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/ObjectCache/ObjectCache.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Platform/POSIX/ClockPOSIX.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Platform/POSIX/DiagnosticsPOSIX.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Platform/POSIX/ErrorPOSIX.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Platform/POSIX/EventPOSIX.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Platform/POSIX/FilePOSIX.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Platform/POSIX/MemoryPOSIX.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Platform/POSIX/MutexPOSIX.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Platform/POSIX/POSIX-X86_64.S
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Platform/POSIX/RWMutexPOSIX.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Platform/POSIX/RandomPOSIX.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Platform/POSIX/SignalPOSIX.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Platform/POSIX/ThreadPOSIX.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/RegExp/RegExp.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Runtime/Atomics.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Runtime/Compartment.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Runtime/Context.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Runtime/Exception.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Runtime/Global.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Runtime/Instance.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Runtime/Intrinsics.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Runtime/Invoke.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Runtime/Linker.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Runtime/Memory.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Runtime/Module.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Runtime/ObjectGC.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Runtime/ResourceQuota.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Runtime/Runtime.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Runtime/Table.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Runtime/VectorOverMMap.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/Runtime/WAVMIntrinsics.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/ThreadTest/ThreadTest.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/VFS/SandboxFS.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/VFS/VFS.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/WASI/WASI.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/WASI/WASIArgsEnvs.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/WASI/WASIClocks.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/WASI/WASIDiagnostics.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/WASI/WASIFile.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/WASM/WASMSerialization.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/WASTParse/Lexer.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/WASTParse/Parse.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/WASTParse/ParseFunction.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/WASTParse/ParseModule.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/WASTParse/ParseNumbers.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/WASTParse/ParseTests.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/WASTPrint/Print.cpp
  ${CMAKE_SOURCE_DIR}/contrib/restricted/wavm/Lib/wavm-c/wavm-c.cpp
)
