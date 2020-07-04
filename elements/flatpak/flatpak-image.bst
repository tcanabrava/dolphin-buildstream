kind: compose

depends:
- filename: dolphin.bst
  type: build

config:
  include-orphans: True
  exclude:
  - devel
  - debug
