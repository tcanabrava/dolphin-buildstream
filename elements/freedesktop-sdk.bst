kind: junction

config:
  options:
    bootstrap_build_arch: "%{arch}"
    target_arch: "%{arch}"
    (?):
    - target_arch == 'i686':
        bootstrap_build_arch: 'x86_64'
    - target_arch == 'arm':
        bootstrap_build_arch: 'aarch64'

sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk
  track: '19.08'
  track-tags: true
  ref: freedesktop-sdk-19.08.11-0-gac942905b94dfeda1b2d0d45d8ca3f8110e0ebe3
  submodules:
    utils/buildstream-abi-checker:
      url: https://gitlab.com/freedesktop-sdk/buildstream-abi-checker.git
