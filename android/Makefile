
websockets:

BUILDDIR := ../../../tzbuild

ANDROID_NDK := $(BUILDDIR)/../android/android-ndk-r9b

include $(BUILDDIR)/config.mk

websockets_src := $(wildcard ../lib/*.c)
websockets_incdirs := ../lib jni
websockets_cxxflags := -DLWS_BUILTIN_GETIFADDRS -Wno-error -Os
websockets_unity := 1

LIBS += websockets

include $(BUILDDIR)/rules.mk
