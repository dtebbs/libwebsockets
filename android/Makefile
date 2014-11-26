
websockets:

BUILDDIR := ../../../tzbuild

ANDROID_NDK := $(BUILDDIR)/../android/android-ndk-r9b

include $(BUILDDIR)/config.mk

websockets_src := $(wildcard ../lib/*.c)
websockets_src := $(filter-out %/libev.c %/lws-plat-win.c,$(websockets_src))
websockets_incdirs := ../lib jni
websockets_cxxflags := -x c -DLWS_BUILTIN_GETIFADDRS -Wno-error -Os
websockets_unity := 1

LIBS += websockets

include $(BUILDDIR)/rules.mk
