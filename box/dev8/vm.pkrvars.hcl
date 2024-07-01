config_id = "kkdt/dev8"
server_name = "dev8"

# Red Hat Modules
# - Format: module:stream/profile, e.g. nodejs:14/common
# - Command: yum module list <module>

#[root@dev8 ~]# yum module list nodejs
#Red Hat Enterprise Linux 8 for x86_64 - AppStream (RPMs)
#Name            Stream       Profiles                                       Summary
#nodejs          10 [d][e]    common [d], development, minimal, s2i          Javascript runtime
#nodejs          12           common [d], development, minimal, s2i          Javascript runtime
#nodejs          14           common [d], development, minimal, s2i          Javascript runtime
#nodejs          16           common [d], development, minimal, s2i          Javascript runtime
#nodejs          18           common [d], development, minimal, s2i          Javascript runtime

vm_modules = [
  "nodejs:14"
]

vm_packages = [
  "@base",
  "@core",
  "ansible-core",
  "autoconf",
  "buildah",
  "bzip2",
  "container-commons",
  "createrepo",
  "elfutils-libelf-devel",
  "gcc",
  "gettext",
  "kernel-devel",
  "kernel-firmware",
  "kernel-headers",
  "kernel",
  "libvirt-daemon-driver-qemu",
  "libvirt-daemon-kvm",
  "libX11-common",
  "libX11-devel",
  "libX11",
  "libXmu-devel",
  "libXmu",
  "libXp-devel",
  "libXp",
  "libXt-devel",
  "libXt",
  "make",
  "nfs-utils",
  "npm",
  "openssl-devel",
  "perl",
  "podman",
  "podman-docker",
  "shadow-utils",
  "skopeo",
  "systemd-container",
  "tar",
  "tftp",
  "xorriso",
  "yum-utils"
]
