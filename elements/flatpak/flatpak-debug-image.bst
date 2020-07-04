kind: compose

depends:
- filename: dolphin.bst
  type: build

config:
  include-orphans: False
  include:
  - debug
