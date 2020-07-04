kind: flatpak_image

depends:
- filename: flatpak/flatpak-debug-image.bst
  type: build

config:
  directory: '%{debugdir}'

  metadata:
    Runtime:
      name: org.kde.Dolphin.Debug

    ExtensionOf:
      ref: org.kde.Dolphin/%{gcc_arch}/%{branch}
