kind: flatpak_image

depends:
- filename: flatpak/flatpak-image.bst
  type: build
- filename: flatpak/export.bst
  type: build

config:
  directory: '%{prefix}'
  export: 'export'

  metadata:
    Application:
      name: org.kde.Dolphin
      runtime: org.freedesktop.Platform/%{gcc_arch}/%{runtime-branch}
      sdk: org.freedesktop.Sdk/%{gcc_arch}/%{runtime-branch}
      command: dolphin

    Context:
      shared: "network;ipc;"
      sockets: "x11;wayland;session-bus;"
      devices: "dri;"

    'Extension org.kde.Dolphin.Debug':
      directory: lib/debug
