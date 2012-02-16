adb remount
make clean
make .build/framework.jar-phone
make .build/android.policy.jar-phone
make .build/services.jar-phone
adb shell stop;adb shell start
