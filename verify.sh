adb root
sleep 1
adb remount

rm -rf out/framework.jar out/services.jar out/android.policy.jar out/framework2.jar
make out/framework.jar-phone
make out/framework2.jar-phone
make out/android.policy.jar-phone
make out/services.jar-phone
adb reboot


