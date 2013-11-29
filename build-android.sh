
cd android

  ndk-build clean

  echo =================================================
  echo Building Release
  echo =================================================
  ndk-build
  mkdir -p release
  cp obj/local/armeabi/libwebsockets.a release

  ndk-build clean
  rm -rf obj

  echo =================================================
  echo Building Debug
  echo =================================================
  ndk-build APP_OPTIM=debug
  mkdir -p debug
  cp obj/local/armeabi/libwebsockets.a debug
