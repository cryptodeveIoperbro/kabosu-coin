packages:=boost openssl zeromq libiconv

native_packages :=

hardware_packages := hidapi libusb
hardware_native_packages :=

multiprocess_packages = libmultiprocess capnp
multiprocess_native_packages = native_libmultiprocess native_capnp

darwin_native_packages = native_biplist native_ds_store native_mac_alias $(hardware_native_packages)
darwin_packages = sodium ncurses readline $(hardware_packages)

linux_packages = unwind eudev ncurses readline sodium $(hardware_packages)
linux_native_packages = $(hardware_native_packages)

ifeq ($(build_tests),ON)
packages += gtest
endif

mingw32_packages = icu4c sodium $(hardware_packages)
mingw32_native_packages = $(hardware_native_packages)

ifneq ($(build_os),darwin)
darwin_native_packages += native_cctools native_cdrkit native_libdmg-hfsplus
endif

