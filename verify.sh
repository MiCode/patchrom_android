adb remount
make clean
make out/framework.jar-phone
make out/android.policy.jar-phone
make out/services.jar-phone
adb shell stop;adb shell start
