GO_LIBRARY()
IF (OS_DARWIN AND ARCH_ARM64 OR OS_LINUX AND ARCH_AARCH64)
    SRCS(
		md5.go
		md5block.go
		md5block_arm64.s
		md5block_decl.go
    )
ELSEIF (OS_DARWIN AND ARCH_X86_64 OR OS_LINUX AND ARCH_X86_64 OR OS_WINDOWS AND ARCH_X86_64)
    SRCS(
		md5.go
		md5block.go
		md5block_amd64.s
		md5block_decl.go
    )
ENDIF()
END()
