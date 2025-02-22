GO_LIBRARY()
IF (OS_DARWIN AND ARCH_ARM64 OR OS_LINUX AND ARCH_AARCH64)
    SRCS(
		chacha20poly1305.go
		chacha20poly1305_generic.go
		chacha20poly1305_noasm.go
		xchacha20poly1305.go
    )
ELSEIF (OS_DARWIN AND ARCH_X86_64 OR OS_LINUX AND ARCH_X86_64 OR OS_WINDOWS AND ARCH_X86_64)
    SRCS(
		chacha20poly1305.go
		chacha20poly1305_amd64.go
		chacha20poly1305_amd64.s
		chacha20poly1305_generic.go
		xchacha20poly1305.go
    )
ENDIF()
END()
