kind: cmake
description: dolphin

depends:
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/curl.bst
  junction: freedesktop-sdk.bst
- filename: platform.bst
  junction: kf5.bst
- filename: kf5/Not-in-manifest/baloo.bst
  junction: kf5.bst

variables:
  cmake-local: >
    -DBUILD_TESTING=OFF
    -DBUILD_COVERAGE=OFF

public:
  bst:
    split-rules:
      cli: -'%{bindir}/dolphin'

sources:
- kind: git
  url: https://invent.kde.org/system/dolphin.git
  track: v20.04.2
  ref: 3ac1bab27dbbedec58b57fdca4ef05127a5a8b9a
