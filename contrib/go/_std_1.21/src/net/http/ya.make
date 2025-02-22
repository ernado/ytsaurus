GO_LIBRARY()
IF (OS_DARWIN AND ARCH_ARM64 OR OS_DARWIN AND ARCH_X86_64 OR OS_LINUX AND ARCH_AARCH64 OR OS_LINUX AND ARCH_X86_64 OR OS_WINDOWS AND ARCH_X86_64)
    SRCS(
		client.go
		clone.go
		cookie.go
		doc.go
		filetransport.go
		fs.go
		h2_bundle.go
		h2_error.go
		header.go
		http.go
		jar.go
		method.go
		request.go
		response.go
		responsecontroller.go
		roundtrip.go
		server.go
		sniff.go
		socks_bundle.go
		status.go
		transfer.go
		transport.go
		transport_default_other.go
    )
ENDIF()
END()
