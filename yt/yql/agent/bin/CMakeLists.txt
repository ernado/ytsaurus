
# This file was generated by the build system used internally in the Yandex monorepo.
# Only simple modifications are allowed (adding source-files to targets, adding simple properties
# like target_include_directories). These modifications will be ported to original
# ya.make files by maintainers. Any complex modifications which can't be ported back to the
# original buildsystem will not be accepted.



add_executable(ytserver-yql-agent)
target_compile_options(ytserver-yql-agent PRIVATE
  -Wdeprecated-this-capture
)
target_link_libraries(ytserver-yql-agent PUBLIC
  contrib-libs-linux-headers
  contrib-libs-cxxsupp
  yutil
  library-cpp-cpuid_check
  yt-yql-agent
)
target_link_options(ytserver-yql-agent PRIVATE
  -ldl
  -lrt
  -Wl,--no-as-needed
  -fPIC
  -fPIC
  -lpthread
  -lrt
  -ldl
  -lutil
)
target_sources(ytserver-yql-agent PRIVATE
  ${CMAKE_SOURCE_DIR}/yt/yql/agent/bin/main.cpp
)
target_allocator(ytserver-yql-agent
  cpp-malloc-tcmalloc
  libs-tcmalloc-default
)
vcs_info(ytserver-yql-agent)
