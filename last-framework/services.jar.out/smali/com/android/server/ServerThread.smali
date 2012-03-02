.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 749
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 750
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 752
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 754
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 73
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    return-void
.end method

.method public run()V
    .locals 99

    .prologue
    .line 79
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 82
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 84
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 87
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 88
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 92
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 94
    .local v80, shutdownAction:Ljava/lang/String;
    if-eqz v80, :cond_0

    invoke-virtual/range {v80 .. v80}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 95
    const/4 v3, 0x0

    move-object/from16 v0, v80

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_7

    const/16 v77, 0x1

    .line 98
    .local v77, reboot:Z
    :goto_0
    invoke-virtual/range {v80 .. v80}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_8

    .line 99
    const/4 v3, 0x1

    invoke-virtual/range {v80 .. v80}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v80

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v76

    .line 104
    .local v76, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v77

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 108
    .end local v76           #reason:Ljava/lang/String;
    .end local v77           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 109
    .local v58, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v57, 0x0

    .line 112
    .local v57, factoryTest:I
    :goto_2
    const/16 v62, 0x0

    .line 113
    .local v62, lights:Lcom/android/server/LightsService;
    const/16 v75, 0x0

    .line 114
    .local v75, power:Lcom/android/server/PowerManagerService;
    const/16 v40, 0x0

    .line 115
    .local v40, battery:Lcom/android/server/BatteryService;
    const/16 v37, 0x0

    .line 116
    .local v37, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 117
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 118
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v67, 0x0

    .line 119
    .local v67, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v47, 0x0

    .line 120
    .local v47, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v96, 0x0

    .line 121
    .local v96, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v94, 0x0

    .line 122
    .local v94, wifi:Lcom/android/server/WifiService;
    const/16 v74, 0x0

    .line 123
    .local v74, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 124
    .local v4, context:Landroid/content/Context;
    const/16 v98, 0x0

    .line 125
    .local v98, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v41, 0x0

    .line 126
    .local v41, bluetooth:Landroid/server/BluetoothService;
    const/16 v43, 0x0

    .line 127
    .local v43, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v54, 0x0

    .line 128
    .local v54, dock:Lcom/android/server/DockObserver;
    const/16 v89, 0x0

    .line 129
    .local v89, usb:Lcom/android/server/usb/UsbService;
    const/16 v87, 0x0

    .line 130
    .local v87, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v78, 0x0

    .line 131
    .local v78, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v83, 0x0

    .line 132
    .local v83, throttle:Lcom/android/server/ThrottleService;
    const/16 v69, 0x0

    .line 136
    .local v69, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyService;

    invoke-direct {v9}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 139
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3b

    .line 141
    .end local v75           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 143
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static/range {v57 .. v57}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 146
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 149
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 151
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 154
    .local v51, cryptState:Ljava/lang/String;
    const/16 v73, 0x0

    .line 155
    .local v73, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 156
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/16 v73, 0x1

    .line 163
    :cond_1
    :goto_3
    if-eqz v57, :cond_b

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v73

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v74

    .line 166
    const/16 v59, 0x0

    .line 168
    .local v59, firstBoot:Z
    :try_start_2
    invoke-interface/range {v74 .. v74}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v59

    .line 172
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 174
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 178
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v3, "account"

    new-instance v9, Landroid/accounts/AccountManagerService;

    invoke-direct {v9, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 185
    :goto_6
    :try_start_5
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v3, 0x1

    move/from16 v0, v57

    if-ne v0, v3, :cond_c

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 189
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 192
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v63, Lcom/android/server/MiuiLightsService;

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 195
    .end local v62           #lights:Lcom/android/server/LightsService;
    .local v63, lights:Lcom/android/server/LightsService;
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v63

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3c

    .line 197
    .end local v40           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_7
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 199
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v3, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 204
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v63

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 206
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3d

    .line 208
    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_8
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 210
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 214
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v3, 0x1

    move/from16 v0, v57

    if-eq v0, v3, :cond_d

    const/4 v3, 0x1

    move v9, v3

    :goto_8
    if-nez v59, :cond_e

    const/4 v3, 0x1

    :goto_9
    invoke-static {v4, v6, v9, v3}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v98

    .line 218
    const-string v3, "window"

    move-object/from16 v0, v98

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 220
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v98

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 225
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 226
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_a
    move-object/from16 v62, v63

    .line 253
    .end local v51           #cryptState:Ljava/lang/String;
    .end local v59           #firstBoot:Z
    .end local v63           #lights:Lcom/android/server/LightsService;
    .end local v73           #onlyCore:Z
    .restart local v62       #lights:Lcom/android/server/LightsService;
    :goto_b
    const/16 v52, 0x0

    .line 254
    .local v52, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v81, 0x0

    .line 255
    .local v81, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v60, 0x0

    .line 256
    .local v60, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v38, 0x0

    .line 257
    .local v38, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v71, 0x0

    .line 258
    .local v71, notification:Lcom/android/server/NotificationManagerService;
    const/16 v92, 0x0

    .line 259
    .local v92, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v64, 0x0

    .line 260
    .local v64, location:Lcom/android/server/LocationManagerService;
    const/16 v49, 0x0

    .line 261
    .local v49, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v85, 0x0

    .line 264
    .local v85, tsms:Lcom/android/server/TextServicesManagerService;
    const/4 v3, 0x1

    move/from16 v0, v57

    if-eq v0, v3, :cond_2

    .line 266
    :try_start_9
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v61, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v61

    invoke-direct {v0, v4}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 268
    .end local v60           #imm:Lcom/android/server/InputMethodManagerService;
    .local v61, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_a
    const-string v3, "input_method"

    move-object/from16 v0, v61

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3a

    move-object/from16 v60, v61

    .line 274
    .end local v61           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v60       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_b
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 283
    :cond_2
    :goto_d
    :try_start_c
    invoke-virtual/range {v98 .. v98}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 289
    :goto_e
    :try_start_d
    invoke-interface/range {v74 .. v74}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    .line 295
    :goto_f
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403ba

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_39

    .line 302
    :goto_10
    const/4 v3, 0x1

    move/from16 v0, v57

    if-eq v0, v3, :cond_13

    .line 304
    :try_start_f
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v53, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7

    .line 306
    .end local v52           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v53, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_10
    const-string v3, "device_policy"

    move-object/from16 v0, v53

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_38

    move-object/from16 v52, v53

    .line 312
    .end local v53           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v52       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_11
    :try_start_11
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v82, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v82

    move-object/from16 v1, v98

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    .line 314
    .end local v81           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v82, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_12
    const-string v3, "statusbar"

    move-object/from16 v0, v82

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_37

    move-object/from16 v81, v82

    .line 320
    .end local v82           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v81       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_12
    :try_start_13
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    .line 328
    :goto_13
    :try_start_14
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 330
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a

    .line 336
    :goto_14
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v86, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v86

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_b

    .line 338
    .end local v85           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v86, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_16
    const-string v3, "textservices"

    move-object/from16 v0, v86

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_36

    move-object/from16 v85, v86

    .line 344
    .end local v86           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v85       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_15
    :try_start_17
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v68, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v68

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_c

    .line 346
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v68, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_18
    const-string v3, "netstats"

    move-object/from16 v0, v68

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_35

    move-object/from16 v12, v68

    .line 352
    .end local v68           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_16
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_d

    .line 356
    .end local v67           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1a
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_34

    .line 362
    :goto_17
    :try_start_1b
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v97, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v97

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_e

    .line 364
    .end local v96           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v97, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_1c
    const-string v3, "wifip2p"

    move-object/from16 v0, v97

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_33

    move-object/from16 v96, v97

    .line 370
    .end local v97           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v96       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_18
    :try_start_1d
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v95, Lcom/android/server/WifiService;

    move-object/from16 v0, v95

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_f

    .line 372
    .end local v94           #wifi:Lcom/android/server/WifiService;
    .local v95, wifi:Lcom/android/server/WifiService;
    :try_start_1e
    const-string v3, "wifi"

    move-object/from16 v0, v95

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_32

    move-object/from16 v94, v95

    .line 378
    .end local v95           #wifi:Lcom/android/server/WifiService;
    .restart local v94       #wifi:Lcom/android/server/WifiService;
    :goto_19
    :try_start_1f
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v48, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_10

    .line 381
    .end local v47           #connectivity:Lcom/android/server/ConnectivityService;
    .local v48, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_20
    const-string v3, "connectivity"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 382
    move-object/from16 v0, v48

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 383
    move-object/from16 v0, v48

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 384
    invoke-virtual/range {v94 .. v94}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 385
    invoke-virtual/range {v96 .. v96}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_31

    move-object/from16 v47, v48

    .line 391
    .end local v48           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v47       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1a
    :try_start_21
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v84, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v84

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_11

    .line 393
    .end local v83           #throttle:Lcom/android/server/ThrottleService;
    .local v84, throttle:Lcom/android/server/ThrottleService;
    :try_start_22
    const-string v3, "throttle"

    move-object/from16 v0, v84

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_30

    move-object/from16 v83, v84

    .line 404
    .end local v84           #throttle:Lcom/android/server/ThrottleService;
    .restart local v83       #throttle:Lcom/android/server/ThrottleService;
    :goto_1b
    :try_start_23
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v3, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_12

    .line 411
    :goto_1c
    :try_start_24
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v72, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v72

    move-object/from16 v1, v81

    move-object/from16 v2, v62

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_13

    .line 413
    .end local v71           #notification:Lcom/android/server/NotificationManagerService;
    .local v72, notification:Lcom/android/server/NotificationManagerService;
    :try_start_25
    const-string v3, "notification"

    move-object/from16 v0, v72

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 414
    move-object/from16 v0, v72

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_2f

    move-object/from16 v71, v72

    .line 420
    .end local v72           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v71       #notification:Lcom/android/server/NotificationManagerService;
    :goto_1d
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_14

    .line 428
    :goto_1e
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v65, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v65

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_15

    .line 430
    .end local v64           #location:Lcom/android/server/LocationManagerService;
    .local v65, location:Lcom/android/server/LocationManagerService;
    :try_start_28
    const-string v3, "location"

    move-object/from16 v0, v65

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_2e

    move-object/from16 v64, v65

    .line 436
    .end local v65           #location:Lcom/android/server/LocationManagerService;
    .restart local v64       #location:Lcom/android/server/LocationManagerService;
    :goto_1f
    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v50, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v50

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_16

    .line 438
    .end local v49           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v50, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_2a
    const-string v3, "country_detector"

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_2d

    move-object/from16 v49, v50

    .line 444
    .end local v50           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v49       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_20
    :try_start_2b
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_17

    .line 452
    :goto_21
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_18

    .line 460
    :goto_22
    :try_start_2d
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v93, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v93

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_19

    .line 462
    .end local v92           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v93, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_2e
    const-string v3, "wallpaper"

    move-object/from16 v0, v93

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_2c

    move-object/from16 v92, v93

    .line 468
    .end local v93           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v92       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_23
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1a

    .line 475
    :goto_24
    :try_start_30
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v55, Lcom/android/server/DockObserver;

    move-object/from16 v0, v55

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1b

    .end local v54           #dock:Lcom/android/server/DockObserver;
    .local v55, dock:Lcom/android/server/DockObserver;
    move-object/from16 v54, v55

    .line 483
    .end local v55           #dock:Lcom/android/server/DockObserver;
    .restart local v54       #dock:Lcom/android/server/DockObserver;
    :goto_25
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1c

    .line 491
    :goto_26
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v90, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v90

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1d

    .line 494
    .end local v89           #usb:Lcom/android/server/usb/UsbService;
    .local v90, usb:Lcom/android/server/usb/UsbService;
    :try_start_33
    const-string v3, "usb"

    move-object/from16 v0, v90

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_2b

    move-object/from16 v89, v90

    .line 500
    .end local v90           #usb:Lcom/android/server/usb/UsbService;
    .restart local v89       #usb:Lcom/android/server/usb/UsbService;
    :goto_27
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v88, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v88

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1e

    .end local v87           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v88, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v87, v88

    .line 508
    .end local v88           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v87       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_28
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1f

    .line 516
    :goto_29
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v39, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_20

    .line 518
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .local v39, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_37
    const-string v3, "appwidget"

    move-object/from16 v0, v39

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_2a

    move-object/from16 v38, v39

    .line 524
    .end local v39           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_2a
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v79, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v79

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_21

    .end local v78           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v79, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v78, v79

    .line 531
    .end local v79           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v78       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_2b
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_22

    .line 542
    :goto_2c
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_23

    .line 550
    :goto_2d
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance v70, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v70

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_24

    .end local v69           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v70, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v69, v70

    .line 559
    .end local v70           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v69       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_2e
    invoke-virtual/range {v98 .. v98}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v27

    .line 560
    .local v27, safeMode:Z
    if-eqz v27, :cond_12

    .line 561
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 563
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 565
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 573
    :goto_2f
    if-eqz v52, :cond_3

    .line 575
    :try_start_3c
    invoke-virtual/range {v52 .. v52}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_25

    .line 581
    :cond_3
    :goto_30
    if-eqz v71, :cond_4

    .line 583
    :try_start_3d
    invoke-virtual/range {v71 .. v71}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_26

    .line 590
    :cond_4
    :goto_31
    :try_start_3e
    invoke-virtual/range {v98 .. v98}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_27

    .line 595
    :goto_32
    if-eqz v27, :cond_5

    .line 596
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 602
    :cond_5
    invoke-virtual/range {v98 .. v98}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v46

    .line 603
    .local v46, config:Landroid/content/res/Configuration;
    new-instance v66, Landroid/util/DisplayMetrics;

    invoke-direct/range {v66 .. v66}, Landroid/util/DisplayMetrics;-><init>()V

    .line 604
    .local v66, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Landroid/view/WindowManager;

    .line 605
    .local v91, w:Landroid/view/WindowManager;
    invoke-interface/range {v91 .. v91}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v66

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 606
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v46

    move-object/from16 v1, v66

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 608
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 610
    :try_start_3f
    invoke-interface/range {v74 .. v74}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_28

    .line 616
    :goto_33
    move-object/from16 v16, v4

    .line 617
    .local v16, contextF:Landroid/content/Context;
    move-object/from16 v17, v5

    .line 618
    .local v17, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v18, v13

    .line 619
    .local v18, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v19, v12

    .line 620
    .local v19, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v20, v8

    .line 621
    .local v20, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v21, v47

    .line 622
    .local v21, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v22, v54

    .line 623
    .local v22, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v23, v89

    .line 624
    .local v23, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v33, v83

    .line 625
    .local v33, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v24, v87

    .line 626
    .local v24, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v26, v38

    .line 627
    .local v26, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v28, v92

    .line 628
    .local v28, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v29, v60

    .line 629
    .local v29, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v25, v78

    .line 630
    .local v25, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v31, v64

    .line 631
    .local v31, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v32, v49

    .line 632
    .local v32, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v34, v69

    .line 633
    .local v34, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v35, v85

    .line 634
    .local v35, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v30, v81

    .line 641
    .local v30, statusBarF:Lcom/android/server/StatusBarManagerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v35}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/TextServicesManagerService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 740
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 741
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_6
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 745
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-void

    .line 95
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #batteryF:Lcom/android/server/BatteryService;
    .end local v18           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v19           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v20           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v21           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v22           #dockF:Lcom/android/server/DockObserver;
    .end local v23           #usbF:Lcom/android/server/usb/UsbService;
    .end local v24           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v25           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v26           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v27           #safeMode:Z
    .end local v28           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v29           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v30           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v31           #locationF:Lcom/android/server/LocationManagerService;
    .end local v32           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v33           #throttleF:Lcom/android/server/ThrottleService;
    .end local v34           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v35           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .end local v43           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v46           #config:Landroid/content/res/Configuration;
    .end local v47           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v49           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v52           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v54           #dock:Lcom/android/server/DockObserver;
    .end local v57           #factoryTest:I
    .end local v58           #factoryTestStr:Ljava/lang/String;
    .end local v60           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v62           #lights:Lcom/android/server/LightsService;
    .end local v64           #location:Lcom/android/server/LocationManagerService;
    .end local v66           #metrics:Landroid/util/DisplayMetrics;
    .end local v69           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v71           #notification:Lcom/android/server/NotificationManagerService;
    .end local v74           #pm:Landroid/content/pm/IPackageManager;
    .end local v78           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v81           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v83           #throttle:Lcom/android/server/ThrottleService;
    .end local v85           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v87           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v89           #usb:Lcom/android/server/usb/UsbService;
    .end local v91           #w:Landroid/view/WindowManager;
    .end local v92           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v94           #wifi:Lcom/android/server/WifiService;
    .end local v96           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v98           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_7
    const/16 v77, 0x0

    goto/16 :goto_0

    .line 101
    .restart local v77       #reboot:Z
    :cond_8
    const/16 v76, 0x0

    .restart local v76       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 109
    .end local v76           #reason:Ljava/lang/String;
    .end local v77           #reboot:Z
    .restart local v58       #factoryTestStr:Ljava/lang/String;
    :cond_9
    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v57

    goto/16 :goto_2

    .line 158
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    .restart local v43       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v47       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v51       #cryptState:Ljava/lang/String;
    .restart local v54       #dock:Lcom/android/server/DockObserver;
    .restart local v57       #factoryTest:I
    .restart local v62       #lights:Lcom/android/server/LightsService;
    .restart local v67       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v69       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v73       #onlyCore:Z
    .restart local v74       #pm:Landroid/content/pm/IPackageManager;
    .restart local v78       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v83       #throttle:Lcom/android/server/ThrottleService;
    .restart local v87       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v89       #usb:Lcom/android/server/usb/UsbService;
    .restart local v94       #wifi:Lcom/android/server/WifiService;
    .restart local v96       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v98       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_a
    :try_start_40
    const-string v3, "1"

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/16 v73, 0x1

    goto/16 :goto_3

    .line 163
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 181
    .restart local v59       #firstBoot:Z
    :catch_0
    move-exception v56

    .line 182
    .local v56, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v56

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_40} :catch_1

    goto/16 :goto_6

    .line 248
    .end local v51           #cryptState:Ljava/lang/String;
    .end local v56           #e:Ljava/lang/Throwable;
    .end local v59           #firstBoot:Z
    .end local v73           #onlyCore:Z
    :catch_1
    move-exception v56

    move-object/from16 v7, v37

    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v40

    .line 249
    .end local v40           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v56, e:Ljava/lang/RuntimeException;
    :goto_34
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v56

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 186
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v56           #e:Ljava/lang/RuntimeException;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v51       #cryptState:Ljava/lang/String;
    .restart local v59       #firstBoot:Z
    .restart local v73       #onlyCore:Z
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 215
    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v40           #battery:Lcom/android/server/BatteryService;
    .end local v62           #lights:Lcom/android/server/LightsService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v63       #lights:Lcom/android/server/LightsService;
    :cond_d
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_8

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 227
    :cond_f
    const/4 v3, 0x1

    move/from16 v0, v57

    if-ne v0, v3, :cond_10

    .line 228
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 248
    :catch_2
    move-exception v56

    move-object/from16 v62, v63

    .end local v63           #lights:Lcom/android/server/LightsService;
    .restart local v62       #lights:Lcom/android/server/LightsService;
    goto :goto_34

    .line 230
    .end local v62           #lights:Lcom/android/server/LightsService;
    .restart local v63       #lights:Lcom/android/server/LightsService;
    :cond_10
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v42, Landroid/server/BluetoothService;

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_41} :catch_2

    .line 232
    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .local v42, bluetooth:Landroid/server/BluetoothService;
    :try_start_42
    const-string v3, "bluetooth"

    move-object/from16 v0, v42

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 233
    invoke-virtual/range {v42 .. v42}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 234
    new-instance v44, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_42} :catch_3e

    .line 235
    .end local v43           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v44, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_43
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v44

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 237
    invoke-virtual/range {v42 .. v42}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    .line 241
    .local v36, airplaneModeOn:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    .line 243
    .local v45, bluetoothOn:I
    if-nez v36, :cond_11

    if-eqz v45, :cond_11

    .line 244
    invoke-virtual/range {v42 .. v42}, Landroid/server/BluetoothService;->enable()Z
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_43} :catch_3f

    :cond_11
    move-object/from16 v43, v44

    .end local v44           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v43       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v41, v42

    .end local v42           #bluetooth:Landroid/server/BluetoothService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .line 269
    .end local v36           #airplaneModeOn:I
    .end local v45           #bluetoothOn:I
    .end local v51           #cryptState:Ljava/lang/String;
    .end local v59           #firstBoot:Z
    .end local v63           #lights:Lcom/android/server/LightsService;
    .end local v73           #onlyCore:Z
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v49       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v52       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v60       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v62       #lights:Lcom/android/server/LightsService;
    .restart local v64       #location:Lcom/android/server/LocationManagerService;
    .restart local v71       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v81       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v85       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v92       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v56

    .line 270
    .local v56, e:Ljava/lang/Throwable;
    :goto_35
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 277
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v56

    .line 278
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 284
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v56

    .line 285
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 290
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v56

    .line 291
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 307
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v56

    .line 308
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_36
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 315
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v56

    .line 316
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_37
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 323
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v56

    .line 324
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 331
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v56

    .line 332
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 339
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v56

    .line 340
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_38
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 347
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v56

    .line 348
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_39
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 357
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v56

    move-object/from16 v8, v67

    .line 358
    .end local v67           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3a
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 365
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v56

    .line 366
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3b
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 373
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v56

    .line 374
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3c
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 386
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v56

    .line 387
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3d
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 395
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v56

    .line 396
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3e
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 406
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v56

    .line 407
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 415
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v56

    .line 416
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3f
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 423
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v56

    .line 424
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 431
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v56

    .line 432
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_40
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 439
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v56

    .line 440
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_41
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 447
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v56

    .line 448
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 455
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v56

    .line 456
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 463
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v56

    .line 464
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_42
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 470
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v56

    .line 471
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 478
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v56

    .line 479
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 486
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v56

    .line 487
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 495
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v56

    .line 496
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_43
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 503
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v56

    .line 504
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 511
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v56

    .line 512
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v56

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    .line 519
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v56

    .line 520
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_44
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 526
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v56

    .line 527
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 533
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v56

    .line 534
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 545
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v56

    .line 546
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 552
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v56

    .line 553
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 568
    .end local v56           #e:Ljava/lang/Throwable;
    .restart local v27       #safeMode:Z
    :cond_12
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2f

    .line 576
    :catch_25
    move-exception v56

    .line 577
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 584
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v56

    .line 585
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 591
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v56

    .line 592
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 611
    .end local v56           #e:Ljava/lang/Throwable;
    .restart local v46       #config:Landroid/content/res/Configuration;
    .restart local v66       #metrics:Landroid/util/DisplayMetrics;
    .restart local v91       #w:Landroid/view/WindowManager;
    :catch_28
    move-exception v56

    .line 612
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 169
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v27           #safeMode:Z
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v46           #config:Landroid/content/res/Configuration;
    .end local v49           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v52           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v56           #e:Ljava/lang/Throwable;
    .end local v60           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v64           #location:Lcom/android/server/LocationManagerService;
    .end local v66           #metrics:Landroid/util/DisplayMetrics;
    .end local v71           #notification:Lcom/android/server/NotificationManagerService;
    .end local v81           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v85           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v91           #w:Landroid/view/WindowManager;
    .end local v92           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v51       #cryptState:Ljava/lang/String;
    .restart local v59       #firstBoot:Z
    .restart local v67       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v73       #onlyCore:Z
    :catch_29
    move-exception v3

    goto/16 :goto_5

    .line 519
    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v40           #battery:Lcom/android/server/BatteryService;
    .end local v51           #cryptState:Ljava/lang/String;
    .end local v59           #firstBoot:Z
    .end local v67           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v73           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v39       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v49       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v52       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v60       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v64       #location:Lcom/android/server/LocationManagerService;
    .restart local v71       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v81       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v85       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v92       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_2a
    move-exception v56

    move-object/from16 v38, v39

    .end local v39           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    goto :goto_44

    .line 495
    .end local v89           #usb:Lcom/android/server/usb/UsbService;
    .restart local v90       #usb:Lcom/android/server/usb/UsbService;
    :catch_2b
    move-exception v56

    move-object/from16 v89, v90

    .end local v90           #usb:Lcom/android/server/usb/UsbService;
    .restart local v89       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_43

    .line 463
    .end local v92           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v93       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_2c
    move-exception v56

    move-object/from16 v92, v93

    .end local v93           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v92       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_42

    .line 439
    .end local v49           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v50       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_2d
    move-exception v56

    move-object/from16 v49, v50

    .end local v50           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v49       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_41

    .line 431
    .end local v64           #location:Lcom/android/server/LocationManagerService;
    .restart local v65       #location:Lcom/android/server/LocationManagerService;
    :catch_2e
    move-exception v56

    move-object/from16 v64, v65

    .end local v65           #location:Lcom/android/server/LocationManagerService;
    .restart local v64       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_40

    .line 415
    .end local v71           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v72       #notification:Lcom/android/server/NotificationManagerService;
    :catch_2f
    move-exception v56

    move-object/from16 v71, v72

    .end local v72           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v71       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_3f

    .line 395
    .end local v83           #throttle:Lcom/android/server/ThrottleService;
    .restart local v84       #throttle:Lcom/android/server/ThrottleService;
    :catch_30
    move-exception v56

    move-object/from16 v83, v84

    .end local v84           #throttle:Lcom/android/server/ThrottleService;
    .restart local v83       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_3e

    .line 386
    .end local v47           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v48       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_31
    move-exception v56

    move-object/from16 v47, v48

    .end local v48           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v47       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_3d

    .line 373
    .end local v94           #wifi:Lcom/android/server/WifiService;
    .restart local v95       #wifi:Lcom/android/server/WifiService;
    :catch_32
    move-exception v56

    move-object/from16 v94, v95

    .end local v95           #wifi:Lcom/android/server/WifiService;
    .restart local v94       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_3c

    .line 365
    .end local v96           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v97       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_33
    move-exception v56

    move-object/from16 v96, v97

    .end local v97           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v96       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_3b

    .line 357
    :catch_34
    move-exception v56

    goto/16 :goto_3a

    .line 347
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v67       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v68       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_35
    move-exception v56

    move-object/from16 v12, v68

    .end local v68           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_39

    .line 339
    .end local v85           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v86       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_36
    move-exception v56

    move-object/from16 v85, v86

    .end local v86           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v85       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_38

    .line 315
    .end local v81           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v82       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_37
    move-exception v56

    move-object/from16 v81, v82

    .end local v82           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v81       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_37

    .line 307
    .end local v52           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v53       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_38
    move-exception v56

    move-object/from16 v52, v53

    .end local v53           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v52       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_36

    .line 299
    :catch_39
    move-exception v3

    goto/16 :goto_10

    .line 269
    .end local v60           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v61       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_3a
    move-exception v56

    move-object/from16 v60, v61

    .end local v61           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v60       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_35

    .line 248
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v49           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v52           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v60           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v64           #location:Lcom/android/server/LocationManagerService;
    .end local v71           #notification:Lcom/android/server/NotificationManagerService;
    .end local v81           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v85           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v92           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v75       #power:Lcom/android/server/PowerManagerService;
    :catch_3b
    move-exception v56

    move-object/from16 v7, v37

    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v40

    .end local v40           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v75

    .end local v75           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_34

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v62           #lights:Lcom/android/server/LightsService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v51       #cryptState:Ljava/lang/String;
    .restart local v59       #firstBoot:Z
    .restart local v63       #lights:Lcom/android/server/LightsService;
    .restart local v73       #onlyCore:Z
    :catch_3c
    move-exception v56

    move-object/from16 v7, v37

    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v40

    .end local v40           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v62, v63

    .end local v63           #lights:Lcom/android/server/LightsService;
    .restart local v62       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_34

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v62           #lights:Lcom/android/server/LightsService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v63       #lights:Lcom/android/server/LightsService;
    :catch_3d
    move-exception v56

    move-object/from16 v7, v37

    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v62, v63

    .end local v63           #lights:Lcom/android/server/LightsService;
    .restart local v62       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_34

    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .end local v62           #lights:Lcom/android/server/LightsService;
    .restart local v42       #bluetooth:Landroid/server/BluetoothService;
    .restart local v63       #lights:Lcom/android/server/LightsService;
    :catch_3e
    move-exception v56

    move-object/from16 v41, v42

    .end local v42           #bluetooth:Landroid/server/BluetoothService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v62, v63

    .end local v63           #lights:Lcom/android/server/LightsService;
    .restart local v62       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_34

    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .end local v43           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v62           #lights:Lcom/android/server/LightsService;
    .restart local v42       #bluetooth:Landroid/server/BluetoothService;
    .restart local v44       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v63       #lights:Lcom/android/server/LightsService;
    :catch_3f
    move-exception v56

    move-object/from16 v43, v44

    .end local v44           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v43       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v41, v42

    .end local v42           #bluetooth:Landroid/server/BluetoothService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v62, v63

    .end local v63           #lights:Lcom/android/server/LightsService;
    .restart local v62       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_34

    .end local v51           #cryptState:Ljava/lang/String;
    .end local v59           #firstBoot:Z
    .end local v73           #onlyCore:Z
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v49       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v52       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v60       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v64       #location:Lcom/android/server/LocationManagerService;
    .restart local v71       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v81       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v85       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v92       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_13
    move-object/from16 v8, v67

    .end local v67           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2e
.end method
