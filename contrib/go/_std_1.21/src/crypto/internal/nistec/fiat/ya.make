GO_LIBRARY()
IF (OS_DARWIN AND ARCH_ARM64 OR OS_DARWIN AND ARCH_X86_64 OR OS_LINUX AND ARCH_AARCH64 OR OS_LINUX AND ARCH_X86_64 OR OS_WINDOWS AND ARCH_X86_64)
    SRCS(
		p224.go
		p224_fiat64.go
		p224_invert.go
		p256.go
		p256_fiat64.go
		p256_invert.go
		p384.go
		p384_fiat64.go
		p384_invert.go
		p521.go
		p521_fiat64.go
		p521_invert.go
    )
ENDIF()
END()
