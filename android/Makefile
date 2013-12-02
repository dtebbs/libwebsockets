BUILDDIR := ../../../tzbuild

ANDROID_NDK := $(BUILDDIR)/../android/android-ndk-r9b

include $(BUILDDIR)/config.mk

libwebsockets_src := $(wildcard ../lib/*.c)
libwebsockets_incdirs := ../lib jni
libwebsockets_cxxflags := -DLWS_BUILTIN_GETIFADDRS -Wno-error -Os
libwebsockets_unity := 1

LIBS += libwebsockets

include $(BUILDDIR)/rules.mk
