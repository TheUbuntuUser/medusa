export ARCH=arm
export SUBARCH=arm
export CROSS_COMPILE=$(pwd)/Toolchain/bin/arm-eabi-
export KBUILD_BUILD_HOST="-Andrew"
export KBUILD_BUILD_USER="andrew2193-"
echo -e "\033[1;31m*****Compileing Your Kernel*****\033[0m"
mkdir output
make -C $(pwd) O=output j2y18lte_defconfig
make -C $(pwd) O=output -j16
cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
