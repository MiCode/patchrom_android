.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    }
.end annotation


# static fields
.field protected static final ACTION_EXPIRED_PASSWORD_NOTIFICATION:Ljava/lang/String; = "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

.field private static final ATTR_DELEGATED_CERT_INSTALLER:Ljava/lang/String; = "delegated-cert-installer"

.field private static final ATTR_DISABLED:Ljava/lang/String; = "disabled"

.field private static final ATTR_PERMISSION_POLICY:Ljava/lang/String; = "permission-policy"

.field private static final ATTR_PERMISSION_PROVIDER:Ljava/lang/String; = "permission-provider"

.field private static final ATTR_SETUP_COMPLETE:Ljava/lang/String; = "setup-complete"

.field private static final DBG:Z = false

.field private static final DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_POLICIES_XML:Ljava/lang/String; = "device_policies.xml"

.field private static final DO_NOT_ASK_CREDENTIALS_ON_BOOT_XML:Ljava/lang/String; = "do-not-ask-credentials-on-boot"

.field private static final EXPIRATION_GRACE_PERIOD_MS:J = 0x19bfcc00L

.field private static final GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMMUTABLE_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final MONITORING_CERT_NOTIFICATION_ID:I = 0x10400e6

.field private static final MS_PER_DAY:J = 0x5265c00L

.field private static final PROFILE_KEYGUARD_FEATURES:I = 0x38

.field private static final PROFILE_KEYGUARD_FEATURES_AFFECT_OWNER:I = 0x30

.field private static final PROFILE_WIPED_NOTIFICATION_ID:I = 0x3e9

.field private static final REQUEST_EXPIRE_PASSWORD:I = 0x15c3

.field private static final SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECURE_SETTINGS_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATUS_BAR_DISABLE2_MASK:I = 0x1

.field private static final STATUS_BAR_DISABLE_MASK:I = 0x2070000

.field public static final SYSTEM_PROP_DISABLE_CAMERA_PREFIX:Ljava/lang/String; = "sys.secpolicy.camera.off_"

.field private static final TAG_LOCK_TASK_COMPONENTS:Ljava/lang/String; = "lock-task-component"

.field private static final TAG_STATUS_BAR:Ljava/lang/String; = "statusbar"

.field private static final VERBOSE_LOG:Z


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

.field mHandler:Landroid/os/Handler;

.field private mHasFeature:Z

.field mIWindowManager:Landroid/view/IWindowManager;

.field final mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

.field mNotificationManager:Landroid/app/NotificationManager;

.field final mPowerManager:Landroid/os/PowerManager;

.field final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private final mToken:Landroid/os/Binder;

.field final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;",
            ">;"
        }
    .end annotation
.end field

.field final mUserManager:Landroid/os/UserManager;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_usb_file_transfer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_config_tethering"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_network_reset"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_factory_reset"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_add_user"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_config_cell_broadcasts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_config_mobile_networks"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_physical_media"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_unmute_microphone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_adjust_volume"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_sms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_fun"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_safe_boot"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_create_windows"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->IMMUTABLE_USER_RESTRICTIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->IMMUTABLE_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_wallpaper"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "default_input_method"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "skip_first_use_hints"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "install_non_market_apps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    const-string v1, "location_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "adb_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "auto_time"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "auto_time_zone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "data_roaming"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "usb_mass_storage_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "wifi_sleep_policy"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "stay_on_while_plugged_in"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "wifi_device_owner_configs_lockdown"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    const-string v1, "bluetooth_on"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    const-string v1, "development_settings_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    const-string v1, "mode_ringer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    const-string v1, "network_preference"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    const-string v1, "wifi_on"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mToken:Landroid/os/Binder;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "DPM"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    invoke-direct {v0, p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.security.STORAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePasswordExpirationNotification(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendPrivateKeyAliasResponse(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendWipeProfileNotification()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DeviceOwner;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminWithPolicyForUidLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePackagesChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearWipeProfileNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    move-result v0

    return v0
.end method

.method private addDeviceInitializerToLockTaskPackagesLocked(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceInitializer()Ljava/lang/String;

    move-result-object v0

    .local v0, "deviceInitializerPackage":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockTaskPackagesLocked(I)Ljava/util/List;

    move-result-object v1

    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setLockTaskPackagesLocked(ILjava/util/List;)V

    goto :goto_0
.end method

.method private checkCallerIsCurrentUserOrProfile()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "callingUser":Landroid/content/pm/UserInfo;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .local v2, "currentUser":Landroid/content/pm/UserInfo;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, v8, :cond_0

    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Cannot set permitted input methods for managed profile of a user that isn\'t the foreground user."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :goto_0
    return v6

    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Failed to talk to activity managed."

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :cond_0
    :try_start_4
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_1

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v1, v7, :cond_1

    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Cannot set permitted input methods of a user that isn\'t the foreground user."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v6, 0x1

    goto :goto_0

    .end local v0    # "callingUser":Landroid/content/pm/UserInfo;
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "permittedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .local v9, "userIdToCheck":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "id":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v10

    if-eqz v10, :cond_0

    iget v9, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .local v6, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "enabledPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "systemService":Z
    const/16 v10, 0x2000

    :try_start_1
    invoke-interface {v6, v2, v10, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    const/4 v7, 0x1

    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v7, :cond_1

    :try_start_2
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x0

    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .end local v2    # "enabledPackage":Ljava/lang/String;
    .end local v7    # "systemService":Z
    :goto_1
    return v10

    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "enabledPackage":Ljava/lang/String;
    .restart local v7    # "systemService":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "Can\'t talk to package managed"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "enabledPackage":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "systemService":Z
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v10

    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v10

    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    const/4 v10, 0x1

    goto :goto_1
.end method

.method private cleanUpOldUsers()V
    .locals 9

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v8}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerKeys()Ljava/util/Set;

    move-result-object v7

    .local v7, "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .local v6, "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v6    # "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v2    # "i":I
    .restart local v6    # "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7    # "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .local v1, "deletedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .local v4, "userId":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    goto :goto_3

    .end local v4    # "userId":Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method private clearUserPoliciesLocked(Landroid/os/UserHandle;)V
    .locals 8
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iput v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    iput-boolean v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearUserRestrictions(Landroid/os/UserHandle;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Landroid/content/pm/IPackageManager;->updatePermissionFlagsForAllApps(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :catch_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private clearUserRestrictions(Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    .local v1, "userRestrictions":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, p1}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .local v0, "iAudioService":Landroid/media/IAudioService;
    const-string v2, "no_adjust_volume"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    const-string v2, "no_unmute_microphone"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private clearWipeProfileNotification()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private enableIfNecessary(Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .local v0, "ipm":Landroid/content/pm/IPackageManager;
    const v1, 0x8000

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v5, "DevicePolicyManager"

    move-object v1, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private enforceCanSetDeviceInitializer(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to set device initializer but device is already provisioned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    :cond_1
    return-void
.end method

.method private enforceCanSetDeviceOwner()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to set the device owner, but device owner is already set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_5

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not allowed to set the device owner because there are already several users on the device"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not allowed to set the device owner because there are already some accounts on the device"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot set the device owner if the device is already set-up"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforceCanSetProfileOwner(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .local v1, "info":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set profile owner for invalid userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot set a profile owner on a guest"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Trying to set the profile owner, but profile owner is already set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_5

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not allowed to set the profile owner because there are already some accounts on the profile"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_5

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot set the profile owner on a user which is already set-up"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    return-void
.end method

.method private enforceCrossUserPermission(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne p1, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "Must be system or have INTERACT_ACROSS_USERS_FULL permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforceNotManagedProfile(ILjava/lang/String;)V
    .locals 3
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for a managed profile. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private enforceSystemProcess(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    :goto_0
    new-instance v2, Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, p1}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    return-object v2

    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :cond_0
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    goto :goto_0
.end method

.method private getActiveAdminWithPolicyForUidLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .param p3, "uid"    # I

    .prologue
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz p1, :cond_2

    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_0

    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No active admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v4

    if-eq v4, p3, :cond_1

    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not owned by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-direct {p0, v0, p2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isActiveAdminWithPolicyForUserLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;II)Z

    move-result v4

    if-eqz v4, :cond_4

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return-object v0

    :cond_2
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v4

    if-ne v4, p3, :cond_3

    invoke-direct {p0, v0, p2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isActiveAdminWithPolicyForUserLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;II)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 8
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "count":I
    const/4 v5, 0x0

    .local v5, "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v7, :cond_1

    if-eqz v1, :cond_2

    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-gt v1, v7, :cond_2

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-lt v1, v7, :cond_1

    :cond_2
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    move-object v5, v0

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    return-object v5
.end method

.method private getApplicationLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    .local v1, "handle":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .local v5, "userContext":Landroid/content/Context;
    :try_start_1
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    .local v4, "result":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "handle":Landroid/os/UserHandle;
    .end local v4    # "result":Ljava/lang/CharSequence;
    .end local v5    # "userContext":Landroid/content/Context;
    :goto_0
    return-object v8

    :catch_0
    move-exception v2

    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v9, "DevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not installed for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method private getDeviceOwnerAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 7

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    .local v1, "deviceOwnerPackageName":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v0, v5

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    move-object v0, v5

    goto :goto_0
.end method

.method private getEncryptionStatus()I
    .locals 5

    .prologue
    const-string v1, "ro.crypto.state"

    const-string v4, "unsupported"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "status":Ljava/lang/String;
    const-string v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "token":J
    :goto_1
    return v1

    .restart local v2    # "token":J
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .end local v2    # "token":J
    :cond_1
    const-string v1, "unencrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getLockTaskPackagesLocked(I)Ljava/util/List;
    .locals 2
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    return-object v1
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPasswordExpirationLocked(Landroid/content/ComponentName;I)J
    .locals 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const-wide/16 v8, 0x0

    .local v8, "timeout":J
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_0

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return-wide v12

    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move-wide v12, v8

    goto :goto_0

    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-eqz v11, :cond_3

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_4

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v11, v8, v12

    if-lez v11, :cond_4

    :cond_3
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    move-wide v12, v8

    goto :goto_0
.end method

.method private getProfileOwnerAdmin(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v6, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v4

    .local v4, "profileOwner":Landroid/content/ComponentName;
    :goto_0
    if-nez v4, :cond_2

    move-object v0, v5

    :cond_0
    :goto_1
    return-object v0

    .end local v4    # "profileOwner":Landroid/content/ComponentName;
    :cond_1
    move-object v4, v5

    goto :goto_0

    .restart local v4    # "profileOwner":Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v6, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_3

    iget-object v6, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    move-object v0, v5

    goto :goto_1
.end method

.method private getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private handlePackagesChanged(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .local v5, "removed":Z
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/IPackageManager;
    monitor-enter p0

    :try_start_0
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "aa":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_start_1
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "adminPackage":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    const/4 v6, 0x0

    invoke-interface {v3, v1, v6, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7, p2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    const/4 v5, 0x1

    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "adminPackage":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v0    # "aa":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    if-eqz v5, :cond_4

    :try_start_2
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    iget v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_4
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    if-eqz v6, :cond_6

    if-eqz p1, :cond_5

    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    :try_start_3
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-nez v6, :cond_6

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    iget v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_2
    :try_start_4
    monitor-exit p0

    return-void

    .end local v2    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .restart local v2    # "i":I
    :catch_0
    move-exception v6

    goto :goto_2

    .restart local v0    # "aa":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private handlePasswordExpirationNotification(I)V
    .locals 14
    .param p1, "userHandle"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, "now":J
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v8

    .local v8, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .local v9, "ui":Landroid/content/pm/UserInfo;
    iget v7, v9, Landroid/content/pm/UserInfo;->id:I

    .local v7, "profileUserHandle":I
    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    if-lez v1, :cond_0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-wide v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    iget-wide v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/32 v12, 0x19bfcc00

    sub-long/2addr v10, v12

    cmp-long v10, v4, v10

    if-ltz v10, :cond_1

    iget-wide v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    const-string v10, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p0, v0, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "profileUserHandle":I
    .end local v9    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    monitor-exit p0

    return-void

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "now":J
    .end local v8    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method private hasUserSetupCompleted(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isActiveAdminWithPolicyForUserLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;II)Z
    .locals 7
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "reqPolicy"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v0

    .local v0, "ownsDevice":Z
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .local v2, "ownsProfile":Z
    :goto_0
    iget-object v5, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceInitializer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    .local v1, "ownsInitialization":Z
    :goto_1
    const/4 v5, -0x2

    if-ne p2, v5, :cond_4

    if-nez p3, :cond_0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    :cond_1
    :goto_2
    return v3

    .end local v1    # "ownsInitialization":Z
    .end local v2    # "ownsProfile":Z
    :cond_2
    move v2, v4

    goto :goto_0

    .restart local v2    # "ownsProfile":Z
    :cond_3
    move v1, v4

    goto :goto_1

    .restart local v1    # "ownsInitialization":Z
    :cond_4
    const/4 v5, -0x1

    if-ne p2, v5, :cond_7

    if-nez p3, :cond_5

    if-nez v0, :cond_1

    :cond_5
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    :cond_6
    move v3, v4

    goto :goto_2

    :cond_7
    iget-object v5, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2
.end method

.method private isCallerDelegatedCertInstaller()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .local v4, "userHandle":I
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    if-nez v6, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v5

    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .local v3, "uid":I
    if-ne v3, v0, :cond_1

    const/4 v5, 0x1

    :cond_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v3    # "uid":I
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private isCallerDeviceOwnerOrInitializer(I)Z
    .locals 6
    .param p1, "callerUid"    # I

    .prologue
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .local v4, "pkgs":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceInitializer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    .end local v3    # "pkg":Ljava/lang/String;
    :goto_1
    return v5

    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "pkg":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isEncryptionSupported()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isLimitPasswordAllowed(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;I)Z
    .locals 2
    .param p0, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p1, "minPasswordQuality"    # I

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v1, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, v0}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v0

    goto :goto_0
.end method

.method private isManagedProfile(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2000

    invoke-interface {p1, p2, v1, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The application "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not present on this device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadSettingsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;I)V
    .locals 25
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .param p2, "userHandle"    # I

    .prologue
    invoke-static/range {p2 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v10

    .local v10, "journal":Lcom/android/internal/util/JournaledFile;
    const/16 v16, 0x0

    .local v16, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v10}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    .local v7, "file":Ljava/io/File;
    :try_start_0
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_8

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .local v17, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v22, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v22 .. v22}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, "type":I
    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    const/16 v22, 0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    :cond_1
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .local v18, "tag":Ljava/lang/String;
    const-string v22, "policies"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    new-instance v22, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Settings do not start with policies tag: found "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    :catch_0
    move-exception v6

    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/NullPointerException;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :goto_0
    const-string v22, "DevicePolicyManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "failed parsing "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "e":Ljava/lang/NullPointerException;
    :goto_1
    if-eqz v16, :cond_2

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_2
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "identity":J
    :try_start_3
    new-instance v21, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v21, "utils":Lcom/android/internal/widget/LockPatternUtils;
    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v22

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    const-string v22, "DevicePolicyManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Active password quality 0x"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " does not match actual quality 0x"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->addDeviceInitializerToLockTaskPackagesLocked(I)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateLockTaskPackagesLocked(Ljava/util/List;I)V

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setStatusBarDisabledInternal(ZI)Z

    :cond_4
    return-void

    .end local v8    # "identity":J
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .end local v21    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    :cond_5
    const/16 v22, 0x0

    :try_start_4
    const-string v23, "permission-provider"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "permissionProvider":Ljava/lang/String;
    if-eqz v15, :cond_6

    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    :cond_6
    const/16 v22, 0x0

    const-string v23, "setup-complete"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, "userSetupComplete":Ljava/lang/String;
    if-eqz v20, :cond_7

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    :cond_7
    const/16 v22, 0x0

    const-string v23, "permission-policy"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "permissionPolicy":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    :cond_8
    const/16 v22, 0x0

    const-string v23, "delegated-cert-installer"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .local v12, "outerDepth":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    :cond_9
    :goto_3
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_12

    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v12, :cond_12

    :cond_a
    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    const/16 v22, 0x4

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v22, "admin"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v22, 0x0

    const-string v23, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v11

    .local v11, "name":Ljava/lang/String;
    :try_start_5
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v5

    .local v5, "dai":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v5, :cond_9

    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .local v4, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v4, v13}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_3

    .end local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v5    # "dai":Landroid/app/admin/DeviceAdminInfo;
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_6
    const-string v22, "DevicePolicyManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed loading admin "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_3

    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "outerDepth":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "permissionPolicy":Ljava/lang/String;
    .end local v15    # "permissionProvider":Ljava/lang/String;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "userSetupComplete":Ljava/lang/String;
    :catch_2
    move-exception v6

    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :goto_4
    const-string v22, "DevicePolicyManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "failed parsing "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "outerDepth":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "permissionPolicy":Ljava/lang/String;
    .restart local v15    # "permissionProvider":Ljava/lang/String;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v20    # "userSetupComplete":Ljava/lang/String;
    :cond_b
    :try_start_7
    const-string v22, "failed-password-attempts"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    const/16 v22, 0x0

    const-string v23, "value"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_3

    .end local v12    # "outerDepth":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "permissionPolicy":Ljava/lang/String;
    .end local v15    # "permissionProvider":Ljava/lang/String;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "userSetupComplete":Ljava/lang/String;
    :catch_3
    move-exception v6

    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :goto_5
    const-string v22, "DevicePolicyManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "failed parsing "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "outerDepth":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "permissionPolicy":Ljava/lang/String;
    .restart local v15    # "permissionProvider":Ljava/lang/String;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v20    # "userSetupComplete":Ljava/lang/String;
    :cond_c
    :try_start_8
    const-string v22, "password-owner"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/16 v22, 0x0

    const-string v23, "value"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    goto/16 :goto_3

    .end local v12    # "outerDepth":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "permissionPolicy":Ljava/lang/String;
    .end local v15    # "permissionProvider":Ljava/lang/String;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "userSetupComplete":Ljava/lang/String;
    :catch_4
    move-exception v22

    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "outerDepth":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "permissionPolicy":Ljava/lang/String;
    .restart local v15    # "permissionProvider":Ljava/lang/String;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v20    # "userSetupComplete":Ljava/lang/String;
    :cond_d
    const-string v22, "active-password"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    const/16 v22, 0x0

    const-string v23, "quality"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/16 v22, 0x0

    const-string v23, "length"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/16 v22, 0x0

    const-string v23, "uppercase"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    const/16 v22, 0x0

    const-string v23, "lowercase"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    const/16 v22, 0x0

    const-string v23, "letters"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    const/16 v22, 0x0

    const-string v23, "numeric"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    const/16 v22, 0x0

    const-string v23, "symbols"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    const/16 v22, 0x0

    const-string v23, "nonletter"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_3

    .end local v12    # "outerDepth":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "permissionPolicy":Ljava/lang/String;
    .end local v15    # "permissionProvider":Ljava/lang/String;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "userSetupComplete":Ljava/lang/String;
    :catch_5
    move-exception v6

    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/io/IOException;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :goto_6
    const-string v22, "DevicePolicyManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "failed parsing "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v6    # "e":Ljava/io/IOException;
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "outerDepth":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "permissionPolicy":Ljava/lang/String;
    .restart local v15    # "permissionProvider":Ljava/lang/String;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v20    # "userSetupComplete":Ljava/lang/String;
    :cond_e
    :try_start_9
    const-string v22, "lock-task-component"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_3

    .end local v12    # "outerDepth":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "permissionPolicy":Ljava/lang/String;
    .end local v15    # "permissionProvider":Ljava/lang/String;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "userSetupComplete":Ljava/lang/String;
    :catch_6
    move-exception v6

    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :goto_7
    const-string v22, "DevicePolicyManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "failed parsing "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "outerDepth":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "permissionPolicy":Ljava/lang/String;
    .restart local v15    # "permissionProvider":Ljava/lang/String;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v20    # "userSetupComplete":Ljava/lang/String;
    :cond_f
    :try_start_a
    const-string v22, "statusbar"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    const/16 v22, 0x0

    const-string v23, "disabled"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    goto/16 :goto_3

    :cond_10
    const-string v22, "do-not-ask-credentials-on-boot"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z

    goto/16 :goto_3

    :cond_11
    const-string v22, "DevicePolicyManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown tag: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_3

    :cond_12
    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v12    # "outerDepth":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "permissionPolicy":Ljava/lang/String;
    .end local v15    # "permissionProvider":Ljava/lang/String;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "userSetupComplete":Ljava/lang/String;
    .restart local v8    # "identity":J
    :catchall_0
    move-exception v22

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22

    .end local v8    # "identity":J
    :catch_7
    move-exception v22

    goto/16 :goto_2

    :catch_8
    move-exception v6

    goto/16 :goto_7

    :catch_9
    move-exception v6

    goto/16 :goto_6

    :catch_a
    move-exception v22

    goto/16 :goto_1

    :catch_b
    move-exception v6

    goto/16 :goto_5

    :catch_c
    move-exception v6

    goto/16 :goto_4

    :catch_d
    move-exception v6

    goto/16 :goto_0
.end method

.method private lockNowUnchecked()V
    .locals 7

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/os/PowerManager;->goToSleep(JII)V

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p0, "userHandle"    # I

    .prologue
    if-nez p0, :cond_0

    const-string v0, "/data/system/device_policies.xml"

    .local v0, "base":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1

    .end local v0    # "base":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseCert([B)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private removeDeviceInitializerFromLockTaskPackages(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceInitializer()Ljava/lang/String;

    move-result-object v0

    .local v0, "deviceInitializerPackage":Ljava/lang/String;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockTaskPackagesLocked(I)Ljava/util/List;

    move-result-object v1

    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setLockTaskPackagesLocked(ILjava/util/List;)V

    goto :goto_0
.end method

.method private resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 5
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    const/4 v4, 0x0

    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return-void

    .restart local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-direct {p0, v4, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "proxySpec"    # Ljava/lang/String;
    .param p2, "exclusionList"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "data":[Ljava/lang/String;
    const/16 v1, 0x1f90

    .local v1, "proxyPort":I
    array-length v4, v0

    if-le v4, v6, :cond_2

    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .local v3, "res":Landroid/content/ContentResolver;
    new-instance v2, Landroid/net/ProxyInfo;

    aget-object v4, v0, v5

    invoke-direct {v2, v4, v1, p2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .local v2, "proxyProperties":Landroid/net/ProxyInfo;
    invoke-virtual {v2}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid proxy properties, ignoring: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_3
    const-string v4, "global_http_proxy_host"

    aget-object v5, v0, v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "global_http_proxy_port"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "global_http_proxy_exclusion_list"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .end local v2    # "proxyProperties":Landroid/net/ProxyInfo;
    .end local v3    # "res":Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private saveSettingsLocked(I)V
    .locals 13
    .param p1, "userHandle"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .local v7, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v5

    .local v5, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v8, 0x0

    .local v8, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v9, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v10, 0x0

    const-string v11, "policies"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    const-string v11, "permission-provider"

    iget-object v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-boolean v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    const-string v11, "setup-complete"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    const-string v11, "permission-policy"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    const-string v11, "delegated-cert-installer"

    iget-object v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_5

    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_4

    const/4 v10, 0x0

    const-string v11, "admin"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "name"

    iget-object v12, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v12}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const/4 v10, 0x0

    const-string v11, "admin"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v10, :cond_6

    const/4 v10, 0x0

    const-string v11, "password-owner"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "value"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "password-owner"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    const-string v11, "failed-password-attempts"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "value"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "failed-password-attempts"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-nez v10, :cond_8

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-nez v10, :cond_8

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-nez v10, :cond_8

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-nez v10, :cond_8

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-nez v10, :cond_8

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-nez v10, :cond_8

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-nez v10, :cond_8

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-eqz v10, :cond_9

    :cond_8
    const/4 v10, 0x0

    const-string v11, "active-password"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "quality"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "length"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "uppercase"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "lowercase"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "letters"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "numeric"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "symbols"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "nonletter"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "active-password"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    const/4 v4, 0x0

    :goto_1
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_a

    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "component":Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "lock-task-component"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v6, v10, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "lock-task-component"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "component":Ljava/lang/String;
    :cond_a
    iget-boolean v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    if-eqz v10, :cond_b

    const/4 v10, 0x0

    const-string v11, "statusbar"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "disabled"

    iget-boolean v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "statusbar"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    iget-boolean v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z

    if-eqz v10, :cond_c

    const/4 v10, 0x0

    const-string v11, "do-not-ask-credentials-on-boot"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "do-not-ask-credentials-on-boot"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    const/4 v10, 0x0

    const-string v11, "policies"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->commit()V

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendChangedNotification(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v8, v9

    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    return-void

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    :goto_3
    if-eqz v8, :cond_d

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_d
    :goto_4
    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_2

    :catch_1
    move-exception v10

    goto :goto_4

    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method private sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I

    .prologue
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .local v3, "ui":Landroid/content/pm/UserInfo;
    iget v1, v3, Landroid/content/pm/UserInfo;->id:I

    .local v1, "id":I
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V

    goto :goto_0

    .end local v1    # "id":I
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private sendChangedNotification(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendPrivateKeyAliasResponse(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "responseBinder"    # Landroid/os/IBinder;

    .prologue
    invoke-static {p2}, Landroid/security/IKeyChainAliasCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainAliasCallback;

    move-result-object v0

    .local v0, "keyChainAliasResponse":Landroid/security/IKeyChainAliasCallback;
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/security/IKeyChainAliasCallback;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private sendWipeProfileNotification()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10400ed

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "contentText":Ljava/lang/String;
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x108008a

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10400ea

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1060059

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .local v1, "notification":Landroid/app/Notification;
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V
    .locals 14
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I
    .param p4, "onEnableData"    # Landroid/os/Bundle;

    .prologue
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v9

    .local v9, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move/from16 v0, p3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v6

    .local v6, "info":Landroid/app/admin/DeviceAdminInfo;
    if-nez v6, :cond_0

    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad admin: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    .local v4, "ident":J
    if-nez p2, :cond_1

    :try_start_1
    move/from16 v0, p3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Admin is already added"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v11

    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .end local v4    # "ident":J
    :catchall_1
    move-exception v11

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    .restart local v4    # "ident":J
    :cond_1
    :try_start_3
    new-instance v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v7, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .local v7, "newAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, -0x1

    .local v10, "replaceIndex":I
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v8, "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v11}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v10, v3

    .end local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p3

    invoke-direct {p0, v11, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enableIfNecessary(Ljava/lang/String;I)V

    :goto_1
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    const-string v11, "android.app.action.DEVICE_ADMIN_ENABLED"

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-virtual {p0, v7, v11, v0, v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .restart local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    :try_start_5
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private setDoNotAskCredentialsOnBoot()V
    .locals 2

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .local v0, "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_0
    monitor-exit p0

    return-void

    .end local v0    # "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setEncryptionRequested(Z)V
    .locals 0
    .param p1, "encrypt"    # Z

    .prologue
    return-void
.end method

.method private setLockTaskPackagesLocked(ILjava/util/List;)V
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    invoke-direct {p0, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateLockTaskPackagesLocked(Ljava/util/List;I)V

    return-void
.end method

.method private setStatusBarDisabledInternal(ZI)Z
    .locals 10
    .param p1, "disabled"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "ident":J
    :try_start_0
    const-string v8, "statusbar"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    .local v3, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v3, :cond_2

    if-eqz p1, :cond_0

    const/high16 v1, 0x2070000

    .local v1, "flags1":I
    :goto_0
    if-eqz p1, :cond_1

    move v2, v6

    .local v2, "flags2":I
    :goto_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mToken:Landroid/os/Binder;

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v1, v8, v9, p2}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mToken:Landroid/os/Binder;

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v2, v8, v9, p2}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "flags1":I
    .end local v2    # "flags2":I
    .end local v3    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :goto_2
    return v6

    .restart local v3    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    move v1, v7

    goto :goto_0

    .restart local v1    # "flags1":I
    :cond_1
    move v2, v7

    goto :goto_1

    .end local v1    # "flags1":I
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v3    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :goto_3
    move v6, v7

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v6, "DevicePolicyManagerService"

    const-string v8, "Failed to disable the status bar"

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private updateDeviceOwnerLocked()V
    .locals 4

    .prologue
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, "am":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "ident":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateDeviceOwner(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private updateLockTaskPackagesLocked(Ljava/util/List;I)V
    .locals 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, "am":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "ident":J
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Landroid/app/IActivityManager;->updateLockTaskPackages(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private updatePasswordExpirationsLocked(I)V
    .locals 14
    .param p1, "userHandle"    # I

    .prologue
    iget-object v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v12, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v8

    .local v8, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v9, Landroid/content/pm/UserInfo;->id:I

    .local v7, "profileId":I
    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v12, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    if-lez v0, :cond_2

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    iget-object v12, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v12, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-wide v10, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .local v10, "timeout":J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long v2, v10, v12

    .local v2, "expiration":J
    :goto_2
    iput-wide v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .end local v2    # "expiration":J
    .end local v10    # "timeout":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .restart local v10    # "timeout":J
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_2

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v10    # "timeout":J
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    goto :goto_0

    .end local v0    # "N":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "profileId":I
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    return-void
.end method

.method private updateScreenCaptureDisabledInWindowManager(IZ)V
    .locals 5
    .param p1, "userHandle"    # I
    .param p2, "disabled"    # Z

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "ident":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->setScreenCaptureDisabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "DevicePolicyManagerService"

    const-string v4, "Unable to notify WindowManager."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method static validateQualityConstant(I)V
    .locals 3
    .param p0, "quality"    # I

    .prologue
    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid quality constant: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private wipeDataLocked(ZLjava/lang/String;)V
    .locals 4
    .param p1, "wipeExtRequested"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .local v1, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    .end local v1    # "sm":Landroid/os/storage/StorageManager;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "Failed requesting data wipe"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private wipeDeviceOrUserLocked(ZILjava/lang/String;)V
    .locals 2
    .param p1, "wipeExtRequested"    # Z
    .param p2, "userHandle"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    if-nez p2, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDataLocked(ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;

    invoke-direct {v1, p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .locals 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I

    .prologue
    const-string v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .local v3, "callingUserId":I
    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .local v10, "id":J
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V

    :cond_0
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p2

    move v8, v3

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :try_start_2
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v10    # "id":J
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v0    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v10    # "id":J
    :catchall_1
    move-exception v1

    :try_start_3
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .local v4, "userId":I
    const/4 v1, 0x0

    .local v1, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    :cond_0
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->notifyCrossProfileProvidersChanged(ILjava/util/List;)V
    invoke-static {v5, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->access$900(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V

    const/4 v5, 0x1

    :goto_0
    return v5

    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "activity"    # Landroid/content/ComponentName;

    .prologue
    const-string v4, "ComponentName is null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .local v3, "userHandle":I
    monitor-enter p0

    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .local v0, "id":J
    :try_start_1
    invoke-interface {v2, p2, p3, v3}, Landroid/content/pm/IPackageManager;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v4

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "id":J
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0    # "id":J
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_1
    move-exception v4

    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/IBinder;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v5, 0x3e8

    if-eq v2, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .local v4, "caller":Landroid/os/UserHandle;
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v11

    .local v11, "aliasChooser":Landroid/content/ComponentName;
    if-nez v11, :cond_1

    invoke-virtual {v4}, Landroid/os/UserHandle;->isOwner()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v12

    .local v12, "deviceOwnerAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v12, :cond_1

    iget-object v2, v12, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .end local v12    # "deviceOwnerAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    if-nez v11, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendPrivateKeyAliasResponse(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID"

    move/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.app.extra.CHOOSE_PRIVATE_KEY_URI"

    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS"

    move-object/from16 v0, p3

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.app.extra.CHOOSE_PRIVATE_KEY_RESPONSE"

    move-object/from16 v0, p4

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "id":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v6, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/IBinder;)V

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    const-string v4, "ComponentName is null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .local v0, "callingUserId":I
    monitor-enter p0

    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .local v2, "id":J
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "id":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v2    # "id":J
    :catchall_1
    move-exception v4

    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public clearDeviceInitializer(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v1, v4, :cond_1

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceInitializer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/SecurityException;

    const-string v4, "clearDeviceInitializer can only be called by the device initializer/owner"

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .local v2, "ident":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->clearDeviceInitializer()V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_0

    .end local v2    # "ident":J
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v2    # "ident":J
    :catchall_1
    move-exception v1

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public clearDeviceOwner(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v2, "packageName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Invalid packageName"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "uid":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "clearDeviceOwner can only be called by the device owner"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    monitor-enter p0

    :try_start_1
    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearUserPoliciesLocked(Landroid/os/UserHandle;)V

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->clearDeviceOwner()V

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateDeviceOwnerLocked()V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v4, "ComponentName is null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .local v3, "userHandle":I
    monitor-enter p0

    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .local v0, "id":J
    :try_start_1
    invoke-interface {v2, p2, v3}, Landroid/content/pm/IPackageManager;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v4

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "id":J
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0    # "id":J
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_1
    move-exception v4

    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public clearProfileOwner(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .local v0, "callingUser":Landroid/os/UserHandle;
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearUserPoliciesLocked(Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/devicepolicy/DeviceOwner;->removeProfileOwner(I)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ownerName"    # Ljava/lang/String;
    .param p4, "profileOwnerComponent"    # Landroid/content/ComponentName;
    .param p5, "adminExtras"    # Landroid/os/Bundle;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v6

    .local v6, "user":Landroid/os/UserHandle;
    if-nez v6, :cond_0

    const/4 v6, 0x0

    .end local v6    # "user":Landroid/os/UserHandle;
    :goto_0
    return-object v6

    .restart local v6    # "user":Landroid/os/UserHandle;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "id":J
    :try_start_0
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .local v5, "profileOwnerPkg":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .local v7, "userHandle":I
    :try_start_1
    invoke-interface {v4, v5, v7}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v4, v5, v7}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    :cond_1
    invoke-interface {v0, v7}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v8, 0x1

    :try_start_2
    invoke-direct {p0, p4, v8, v7, p5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V

    invoke-virtual {p0, p4, p3, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v8, "DevicePolicyManagerService"

    const-string v9, "Failed to make remote calls for configureUser"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v5    # "profileOwnerPkg":Ljava/lang/String;
    .end local v7    # "userHandle":I
    :catchall_0
    move-exception v8

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const-string v3, "ComponentName is null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v3, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .local v0, "id":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_0

    .end local v0    # "id":J
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0    # "id":J
    :catchall_1
    move-exception v3

    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump DevicePolicyManagerService from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .local v3, "p":Landroid/util/Printer;
    monitor-enter p0

    :try_start_0
    const-string v7, "Current Device Policy Manager state:"

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    const-string v8, "  "

    invoke-virtual {v7, v8, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_1
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v6

    .local v6, "userCount":I
    const/4 v5, 0x0

    .local v5, "u":I
    :goto_1
    if-ge v5, v6, :cond_5

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Enabled Device Admins (User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_2

    const-string v7, "  "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "    "

    invoke-virtual {v1, v7, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Removing Device Admins (User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_4
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "  mPasswordOwner="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_5
    monitor-exit p0

    goto/16 :goto_0

    .end local v5    # "u":I
    .end local v6    # "userCount":I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v7, "ComponentName is null"

    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v7, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .local v0, "id":J
    :try_start_1
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    .local v5, "um":Landroid/os/UserManager;
    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .local v3, "primaryUser":Landroid/content/pm/UserInfo;
    if-nez v3, :cond_0

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/IPackageManager;
    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2, p2, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Only system apps can be enabled this way."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v5    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v4

    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "DevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to install "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .end local v4    # "re":Landroid/os/RemoteException;
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v5    # "um":Landroid/os/UserManager;
    :cond_1
    :try_start_4
    invoke-interface {v2, p2, v6}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "id":J
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v5    # "um":Landroid/os/UserManager;
    .end local v6    # "userId":I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .restart local v0    # "id":J
    .restart local v6    # "userId":I
    :catchall_1
    move-exception v7

    :try_start_6
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I
    .locals 17
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v14, "ComponentName is null"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v14, -0x1

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .local v13, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v6

    .local v6, "id":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    .local v12, "um":Landroid/os/UserManager;
    invoke-virtual {v12, v13}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    .local v11, "primaryUser":Landroid/content/pm/UserInfo;
    if-nez v11, :cond_0

    invoke-virtual {v12, v13}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .local v10, "pm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v10, v0, v14, v15, v1}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .local v2, "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    .local v8, "numberOfAppsInstalled":I
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v14, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v14, :cond_1

    iget-object v14, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .local v9, "packageName":Ljava/lang/String;
    iget v14, v11, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9, v14}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v10, v9, v13}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v8    # "numberOfAppsInstalled":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    .end local v11    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v12    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v14, "DevicePolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to resolve intent for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x0

    :try_start_3
    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return v8

    .restart local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "numberOfAppsInstalled":I
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v11    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v12    # "um":Landroid/os/UserManager;
    :cond_2
    :try_start_4
    const-string v14, "DevicePolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Not enabling "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " since is not a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " system app"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v8    # "numberOfAppsInstalled":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    .end local v11    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v12    # "um":Landroid/os/UserManager;
    :catchall_0
    move-exception v14

    :try_start_5
    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v14

    .end local v6    # "id":J
    .end local v13    # "userId":I
    :catchall_1
    move-exception v14

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v14

    .restart local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "id":J
    .restart local v8    # "numberOfAppsInstalled":I
    .restart local v10    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v11    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v12    # "um":Landroid/os/UserManager;
    .restart local v13    # "userId":I
    :cond_3
    :try_start_6
    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method

.method public enforceCanManageCaCerts(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isCallerDelegatedCertInstaller()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_CA_CERTIFICATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;
    .locals 7
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v5, 0x8080

    invoke-virtual {v3, v2, v5, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    :try_start_0
    new-instance v5, Landroid/app/admin/DeviceAdminInfo;

    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5, v6, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v5

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    goto :goto_0

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    goto/16 :goto_0
.end method

.method public getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .local v4, "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "callingUid":I
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminWithPolicyForUidLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .local v3, "result":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    if-eqz p1, :cond_3

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .local v4, "userId":I
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, -0x2

    if-ne p2, v5, :cond_1

    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not own the device"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v5, -0x1

    if-ne p2, v5, :cond_2

    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not own the profile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " did not specify uses-policy for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "userId":I
    :cond_3
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No active admin owned by uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for policy #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return-object v0

    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    if-gtz v0, :cond_1

    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .end local v0    # "N":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "N":I
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v4, "ComponentName is null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {v1, v4}, Landroid/os/UserHandle;-><init>(I)V

    .local v1, "userHandle":Landroid/os/UserHandle;
    monitor-enter p0

    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .local v2, "id":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p2, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    :try_start_2
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :try_start_3
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v4

    .end local v2    # "id":J
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method public getAutoTimeRequired()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "deviceOwner":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "deviceOwner":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    monitor-exit p0

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBluetoothContactSharingDisabledForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAdmin(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    monitor-enter p0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    monitor-exit p0

    return-object v2

    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    monitor-exit p0

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCrossProfileCallerIdDisabledForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAdmin(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    goto :goto_0

    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    monitor-enter p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_0

    move v0, p1

    .local v0, "id":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    monitor-exit p0

    return v3

    .end local v0    # "id":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_0
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getDeviceInitializer()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceInitializer()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceInitializerPackageName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDeviceInitializerComponent()Landroid/content/ComponentName;
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceInitializer()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceInitializerComponent()Landroid/content/ComponentName;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDeviceOwnerName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_USERS"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "deviceOwnerPackage":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getApplicationLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDoNotAskCredentialsOnBoot()Z
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.QUERY_DO_NOT_ASK_CREDENTIALS_ON_BOOT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .local v0, "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z

    monitor-exit p0

    return v1

    .end local v0    # "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    :goto_0
    return-object v4

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v5, :cond_1

    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    monitor-exit p0

    goto :goto_0

    .end local v0    # "N":I
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "N":I
    .restart local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "i":I
    .restart local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .locals 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v11, :cond_0

    :goto_0
    return v10

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "ident":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v10, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_2
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v7, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v10, 0x0

    .local v10, "which":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    if-eq v11, p2, :cond_4

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v11

    if-nez v11, :cond_6

    :cond_4
    iget v11, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    or-int/2addr v10, v11

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v10    # "which":I
    :cond_5
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .restart local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_1

    .restart local v0    # "N":I
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v10    # "which":I
    :cond_6
    iget v11, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    and-int/lit8 v11, v11, 0x30

    or-int/2addr v10, v11

    goto :goto_3

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_7
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v10    # "which":I
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v11

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method public getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    const-string v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v2, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .local v1, "userHandle":I
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockTaskPackagesLocked(I)Ljava/util/List;

    move-result-object v0

    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    monitor-exit p0

    return-object v2

    .end local v0    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "userHandle":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getManagedUserId(I)I
    .locals 3
    .param p1, "callingUserId"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, p1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .locals 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v11, :cond_0

    const-wide/16 v8, 0x0

    :goto_0
    return-wide v8

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const-wide/16 v8, 0x0

    .local v8, "time":J
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_1

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    :goto_1
    monitor-exit p0

    move-wide v8, v12

    goto :goto_0

    :cond_1
    move-wide v12, v8

    goto :goto_1

    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_3

    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-nez v11, :cond_5

    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_4

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v11, v8, v12

    if-lez v11, :cond_4

    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto :goto_3

    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    goto :goto_0

    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;I)J
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    .locals 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v11, :cond_0

    const-wide/16 v8, 0x0

    :goto_0
    return-wide v8

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const-wide/16 v8, 0x0

    .local v8, "timeout":J
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_1

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    :goto_1
    monitor-exit p0

    move-wide v8, v12

    goto :goto_0

    :cond_1
    move-wide v12, v8

    goto :goto_1

    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_3

    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-eqz v11, :cond_4

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_5

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v11, v8, v12

    if-lez v11, :cond_5

    :cond_4
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    goto :goto_0

    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v4, 0x0

    .local v4, "length":I
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-ge v4, v8, :cond_4

    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v4, 0x0

    .local v4, "length":I
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-ge v4, v8, :cond_4

    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v4, 0x0

    .local v4, "length":I
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/high16 v8, 0x60000

    invoke-static {v1, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isLimitPasswordAllowed(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;I)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-ge v4, v8, :cond_4

    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    goto :goto_3

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    goto :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v4, 0x0

    .local v4, "length":I
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-ge v4, v8, :cond_4

    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v4, 0x0

    .local v4, "length":I
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/high16 v8, 0x60000

    invoke-static {v1, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isLimitPasswordAllowed(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;I)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-ge v4, v8, :cond_4

    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    goto :goto_3

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    goto :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v4, 0x0

    .local v4, "length":I
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/high16 v8, 0x60000

    invoke-static {v1, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isLimitPasswordAllowed(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;I)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-ge v4, v8, :cond_4

    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    goto :goto_3

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    goto :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v4, 0x0

    .local v4, "length":I
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/high16 v8, 0x60000

    invoke-static {v1, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isLimitPasswordAllowed(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;I)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-ge v4, v8, :cond_4

    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    goto :goto_3

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    goto :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v4, 0x0

    .local v4, "length":I
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-ge v4, v8, :cond_4

    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v4, 0x0

    .local v4, "mode":I
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v4, v8, :cond_4

    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .local v5, "user":Landroid/os/UserHandle;
    monitor-enter p0

    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .local v2, "ident":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface {v6, p3, p2, v7}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .local v0, "granted":I
    invoke-virtual {v1, p3, p2, v5}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .local v4, "permFlags":I
    and-int/lit8 v6, v4, 0x4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    const/4 v6, 0x0

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    :goto_0
    return v6

    :cond_0
    if-nez v0, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_0

    .end local v0    # "granted":I
    .end local v2    # "ident":J
    .end local v4    # "permFlags":I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v0    # "granted":I
    .restart local v2    # "ident":J
    .restart local v4    # "permFlags":I
    :cond_1
    const/4 v6, 0x2

    goto :goto_1

    .end local v0    # "granted":I
    .end local v4    # "permFlags":I
    :catchall_1
    move-exception v6

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getPermissionPolicy(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .local v0, "userId":I
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    .local v1, "userPolicy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    monitor-exit p0

    return v2

    .end local v1    # "userPolicy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    monitor-exit p0

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPermittedAccessibilityServicesForUser(I)Ljava/util/List;
    .locals 23
    .param p1, "userId"    # I

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    const/16 v17, 0x0

    :goto_0
    return-object v17

    :cond_0
    monitor-enter p0

    const/16 v17, 0x0

    .local v17, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v16

    .local v16, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "PROFILES_SIZE":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v3, :cond_4

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v15

    .local v15, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v0, v15, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    .local v2, "N":I
    const/4 v13, 0x0

    .local v13, "j":I
    move-object/from16 v18, v17

    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    if-ge v13, v2, :cond_3

    :try_start_1
    iget-object v0, v15, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v5, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v7, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    .local v7, "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_2

    if-nez v18, :cond_1

    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v18    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v18, v17

    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    :cond_1
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_2
    move-object/from16 v17, v18

    .end local v18    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3

    .end local v5    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v7    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v17, v18

    .end local v18    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .end local v2    # "N":I
    .end local v13    # "j":I
    .end local v15    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_4
    if-eqz v17, :cond_8

    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v10

    .local v10, "id":J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v21

    .local v21, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 p1, v0

    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .local v4, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v12

    .local v12, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    .local v14, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v12, :cond_7

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .local v19, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {v19 .. v19}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    .local v20, "serviceInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v6, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_6

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .end local v4    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v14    # "pm":Landroid/content/pm/IPackageManager;
    .end local v19    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v20    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v21    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v22

    :try_start_4
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v22

    .end local v3    # "PROFILES_SIZE":I
    .end local v8    # "i":I
    .end local v10    # "id":J
    .end local v16    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_1
    move-exception v22

    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v22

    .restart local v3    # "PROFILES_SIZE":I
    .restart local v4    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v8    # "i":I
    .restart local v10    # "id":J
    .restart local v12    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v14    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v16    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v21    # "user":Landroid/content/pm/UserInfo;
    :cond_7
    :try_start_5
    invoke-static {v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .end local v4    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v10    # "id":J
    .end local v12    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v14    # "pm":Landroid/content/pm/IPackageManager;
    .end local v21    # "user":Landroid/content/pm/UserInfo;
    :cond_8
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "N":I
    .restart local v13    # "j":I
    .restart local v15    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v18    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v22

    move-object/from16 v17, v18

    .end local v18    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_5
.end method

.method public getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    monitor-exit p0

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPermittedInputMethodsForCurrentUser()Ljava/util/List;
    .locals 26

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    .local v23, "userId":I
    monitor-enter p0

    const/16 v20, 0x0

    .local v20, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v19

    .local v19, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "PROFILES_SIZE":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v3, :cond_3

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v18

    .local v18, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .local v2, "N":I
    const/16 v16, 0x0

    .local v16, "j":I
    move-object/from16 v21, v20

    .end local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v21, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    :try_start_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v4, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    .local v8, "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_1

    if-nez v21, :cond_0

    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v21, v20

    .end local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .end local v2    # "N":I
    .end local v3    # "PROFILES_SIZE":I
    .end local v4    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v8    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "i":I
    .end local v16    # "j":I
    .end local v18    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v19    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "userId":I
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    const-string v24, "DevicePolicyManagerService"

    const-string v25, "Failed to make remote calls to get current user"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v20, 0x0

    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_3
    return-object v20

    .restart local v2    # "N":I
    .restart local v3    # "PROFILES_SIZE":I
    .restart local v4    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v8    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "i":I
    .restart local v16    # "j":I
    .restart local v18    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v19    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "userId":I
    :cond_0
    :try_start_3
    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    move-object/from16 v20, v21

    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .end local v4    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v20, v21

    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .end local v2    # "N":I
    .end local v16    # "j":I
    .end local v18    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    if-eqz v20, :cond_6

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "input_method"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/inputmethod/InputMethodManager;

    .local v15, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v14

    .local v14, "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v12

    .local v12, "id":J
    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v17

    .local v17, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v14, :cond_5

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .local v11, "ime":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v22

    .local v22, "serviceInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v5, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_4

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "ime":Landroid/view/inputmethod/InputMethodInfo;
    .end local v17    # "pm":Landroid/content/pm/IPackageManager;
    .end local v22    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catchall_0
    move-exception v24

    :try_start_6
    invoke-static {v12, v13}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v24

    .end local v3    # "PROFILES_SIZE":I
    .end local v9    # "i":I
    .end local v12    # "id":J
    .end local v14    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v15    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v19    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_1
    move-exception v24

    :goto_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v24

    .restart local v3    # "PROFILES_SIZE":I
    .restart local v9    # "i":I
    .restart local v12    # "id":J
    .restart local v14    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v15    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .restart local v17    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v19    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    :try_start_7
    invoke-static {v12, v13}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .end local v12    # "id":J
    .end local v14    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v15    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v17    # "pm":Landroid/content/pm/IPackageManager;
    :cond_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .end local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "N":I
    .restart local v16    # "j":I
    .restart local v18    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v24

    move-object/from16 v20, v21

    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_5
.end method

.method public getProfileOwner(I)Landroid/content/ComponentName;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getProfileOwnerName(I)Ljava/lang/String;
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_USERS"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v0

    .local v0, "profileOwner":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getApplicationLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getProfileWithMinimumFailedPasswordsForWipe(I)I
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    const/16 v1, -0x2710

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .locals 10
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .local v9, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v9, :cond_1

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .end local v9    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .restart local v9    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;

    invoke-direct {v4, p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getRestrictionsProvider(I)Landroid/content/ComponentName;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the system can query the permission provider"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .local v0, "userData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    :goto_1
    monitor-exit p0

    goto :goto_0

    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    move v4, v5

    goto :goto_1

    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    goto :goto_0
.end method

.method public getStorageEncryptionStatus(I)I
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    return v0
.end method

.method public getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0

    .local v0, "policy":Landroid/app/admin/SystemUpdatePolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/SystemUpdatePolicy;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DevicePolicyManagerService"

    const-string v2, "Stored system update policy is invalid, return null instead."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    monitor-exit p0

    .end local v0    # "policy":Landroid/app/admin/SystemUpdatePolicy;
    :goto_0
    return-object v0

    .restart local v0    # "policy":Landroid/app/admin/SystemUpdatePolicy;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .end local v0    # "policy":Landroid/app/admin/SystemUpdatePolicy;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 20
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    const/4 v14, 0x0

    :goto_0
    return-object v14

    :cond_0
    const-string v17, "agent null"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    .local v7, "componentName":Ljava/lang/String;
    if-eqz p1, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v6

    .local v6, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v6, :cond_1

    const/4 v14, 0x0

    monitor-exit p0

    goto :goto_0

    .end local v6    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v7    # "componentName":Ljava/lang/String;
    :catchall_0
    move-exception v17

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .restart local v6    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v7    # "componentName":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v0, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    .local v15, "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    if-eqz v15, :cond_2

    iget-object v0, v15, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    :cond_2
    const/4 v14, 0x0

    monitor-exit p0

    goto :goto_0

    :cond_3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    iget-object v0, v15, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    goto :goto_0

    .end local v6    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    .end local v15    # "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v13

    .local v13, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v14, 0x0

    .restart local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    const/4 v5, 0x1

    .local v5, "allAdminsHaveOptions":Z
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    .local v16, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v12

    .local v12, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v0, v12, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "N":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v3, :cond_5

    iget-object v0, v12, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v4, "active":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x10

    if-eqz v17, :cond_8

    const/4 v8, 0x1

    .local v8, "disablesTrust":Z
    :goto_3
    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    .local v11, "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    if-eqz v11, :cond_a

    iget-object v0, v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    iget-object v0, v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_a

    if-eqz v8, :cond_9

    if-nez v14, :cond_6

    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .restart local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_6
    iget-object v0, v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v8    # "disablesTrust":Z
    .end local v11    # "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .restart local v8    # "disablesTrust":Z
    .restart local v11    # "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_9
    const-string v17, "DevicePolicyManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ignoring admin "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " because it has trust options but doesn\'t declare "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "KEYGUARD_DISABLE_TRUST_AGENTS"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    if-eqz v8, :cond_7

    const/4 v5, 0x0

    goto/16 :goto_1

    .end local v3    # "N":I
    .end local v4    # "active":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "disablesTrust":Z
    .end local v9    # "i":I
    .end local v11    # "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    .end local v12    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v16    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_b
    if-eqz v5, :cond_c

    .end local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .restart local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_c
    const/4 v14, 0x0

    goto :goto_5
.end method

.method getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-direct {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;-><init>(I)V

    .restart local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;I)V

    :cond_0
    monitor-exit p0

    return-object v0

    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .locals 4
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .param p3, "userHandle"    # I

    .prologue
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public hasUserSetupCompleted()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v0

    return v0
.end method

.method public installCaCert(Landroid/content/ComponentName;[B)Z
    .locals 12
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    :try_start_0
    invoke-static {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/security/cert/Certificate;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {v10}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .local v8, "pemCert":[B
    new-instance v9, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    .local v9, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "id":J
    :try_start_1
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, v9}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .local v7, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_2
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v10

    invoke-interface {v10, v8}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x1

    :try_start_3
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "id":J
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v8    # "pemCert":[B
    .end local v9    # "userHandle":Landroid/os/UserHandle;
    :goto_0
    return v10

    :catch_0
    move-exception v0

    .local v0, "ce":Ljava/security/cert/CertificateException;
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "Problem converting cert"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    goto :goto_0

    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v6

    .local v6, "ioe":Ljava/io/IOException;
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "Problem reading cert"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    goto :goto_0

    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v4    # "id":J
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v8    # "pemCert":[B
    .restart local v9    # "userHandle":Landroid/os/UserHandle;
    :catch_2
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "installCaCertsToKeyChain(): "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v10

    :try_start_6
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v10
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_3
    move-exception v3

    .local v3, "e1":Ljava/lang/InterruptedException;
    :try_start_7
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "installCaCertsToKeyChain(): "

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v3    # "e1":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method public installKeyPair(Landroid/content/ComponentName;[B[BLjava/lang/String;)Z
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # [B
    .param p3, "cert"    # [B
    .param p4, "alias"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isCallerDelegatedCertInstaller()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "who == null, but caller is not cert installer"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    monitor-enter p0

    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .local v5, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "id":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .local v4, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_2
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    .local v1, "keyChain":Landroid/security/IKeyChainService;
    invoke-interface {v1, p2, p3, p4}, Landroid/security/IKeyChainService;->installKeyPair([B[BLjava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    :try_start_3
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "keyChain":Landroid/security/IKeyChainService;
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_0
    return v6

    .end local v2    # "id":J
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .restart local v2    # "id":J
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v5    # "userHandle":Landroid/os/UserHandle;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Installing certificate"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_1
    move-exception v6

    :try_start_7
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v6
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_8
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Interrupted while installing certificate"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public isActivePasswordSufficient(I)Z
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_2

    move v0, p1

    .local v0, "id":I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_1

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v6

    if-ge v5, v6, :cond_3

    :cond_1
    monitor-exit p0

    move v3, v4

    goto :goto_0

    .end local v0    # "id":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_2
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    goto :goto_1

    .restart local v0    # "id":I
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/high16 v6, 0x60000

    if-eq v5, v6, :cond_4

    monitor-exit p0

    goto :goto_0

    .end local v0    # "id":I
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "id":I
    .restart local v1    # "parent":Landroid/content/pm/UserInfo;
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_4
    :try_start_1
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_5

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_5

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_5

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_5

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_5

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_5

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_2
.end method

.method public isAdminActive(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v5, "ComponentName is null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .local v0, "callingUserId":I
    monitor-enter p0

    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .local v2, "id":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p2, v0}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    :try_start_2
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    return v5

    :catch_0
    move-exception v4

    .local v4, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed to getApplicationHiddenSettingAsUser"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    const/4 v5, 0x0

    monitor-exit p0

    goto :goto_0

    .end local v2    # "id":J
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .restart local v2    # "id":J
    :catchall_1
    move-exception v5

    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public isDeviceInitializer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceInitializer()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceInitializerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDeviceOwner(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .local v4, "userHandle":I
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    iget-object v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "lockTaskPackage":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    monitor-exit p0

    .end local v1    # "lockTaskPackage":Ljava/lang/String;
    :goto_1
    return v5

    .restart local v1    # "lockTaskPackage":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "lockTaskPackage":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    const/4 v5, 0x0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    const-string v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v1

    monitor-exit p0

    return v1

    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRemovingAdmin(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .local v0, "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit p0

    goto :goto_0

    .end local v0    # "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .local v4, "userId":I
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .local v0, "id":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p2, v4}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    return v5

    :catch_0
    move-exception v3

    .local v3, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed to getBlockUninstallForUser"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    const/4 v5, 0x0

    goto :goto_0

    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v5

    .end local v0    # "id":J
    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method loadDeviceOwner()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/devicepolicy/DeviceOwner;->load()Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateDeviceOwnerLocked()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lockNow()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lockNowUnchecked()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    .locals 8
    .param p1, "isEnabled"    # Z
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_0

    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "notifyLockTaskModeChanged can only be called by system"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "adminExtras":Landroid/os/Bundle;
    const-string v6, "android.app.extra.LOCK_TASK_PACKAGE"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v3

    .local v3, "ownsDevice":Z
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v4, 0x1

    .local v4, "ownsProfile":Z
    :goto_1
    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    :cond_2
    if-eqz p1, :cond_4

    const-string v6, "android.app.action.LOCK_TASK_ENTERING"

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v6, v1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "adminExtras":Landroid/os/Bundle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ownsDevice":Z
    .end local v4    # "ownsProfile":Z
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v1    # "adminExtras":Landroid/os/Bundle;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ownsDevice":Z
    .restart local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .restart local v4    # "ownsProfile":Z
    :cond_4
    :try_start_1
    const-string v6, "android.app.action.LOCK_TASK_EXITING"

    invoke-virtual {p0, v0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "ownsDevice":Z
    .end local v4    # "ownsProfile":Z
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public notifyPendingSystemUpdate(J)V
    .locals 11
    .param p1, "updateReceivedTime"    # J

    .prologue
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.NOTIFY_PENDING_SYSTEM_UPDATE"

    const-string v9, "Only the system update service can broadcast update information"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Only the system update service in the primary usercan broadcast update information."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.app.action.NOTIFY_PENDING_SYSTEM_UPDATE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "android.app.extra.SYSTEM_UPDATE_RECEIVED_TIME"

    invoke-virtual {v3, v7, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    .local v0, "deviceOwnerPackage":Ljava/lang/String;
    if-nez v0, :cond_1

    monitor-exit p0

    goto :goto_0

    .end local v0    # "deviceOwnerPackage":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v0    # "deviceOwnerPackage":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    .local v6, "receivers":[Landroid/content/pm/ActivityInfo;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v6, v7, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v6, :cond_4

    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    .local v4, "ident":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    :try_start_3
    array-length v7, v6

    if-ge v2, v7, :cond_3

    const-string v7, "android.permission.BIND_DEVICE_ADMIN"

    aget-object v8, v6, v2

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Landroid/content/ComponentName;

    aget-object v8, v6, v2

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v0, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    .end local v4    # "ident":J
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Cannot find device owner package"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "i":I
    .restart local v4    # "ident":J
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "i":I
    .end local v4    # "ident":J
    :cond_4
    monitor-exit p0

    goto :goto_0

    .restart local v2    # "i":I
    .restart local v4    # "ident":J
    :catchall_1
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_0

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    goto :goto_0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    monitor-exit p0

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v1, v4, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit p0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .local v2, "ident":J
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .local v4, "userId":I
    const/4 v1, 0x0

    .local v1, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-nez v6, :cond_1

    monitor-exit p0

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->notifyCrossProfileProvidersChanged(ILjava/util/List;)V
    invoke-static {v5, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->access$900(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const-string v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v2, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .local v0, "id":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v2

    .end local v0    # "id":J
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method removeUserData(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "Tried to remove device policy file for user 0! Ignoring."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->removeProfileOwner(I)V

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    :cond_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "policyFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed device policy file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabledInWindowManager(IZ)V

    goto :goto_0

    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v1    # "policyFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 10
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    const-string v7, "report failed password attempt"

    invoke-direct {p0, p1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    const/4 v6, 0x0

    .local v6, "wipeData":Z
    const/4 v2, 0x0

    .local v2, "identifier":I
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    iget-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v7, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v5

    .local v5, "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v5, :cond_0

    iget v3, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .local v3, "max":I
    :cond_0
    if-lez v3, :cond_1

    iget v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-lt v7, v3, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    :cond_1
    const-string v7, "android.app.action.ACTION_PASSWORD_FAILED"

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V

    .end local v3    # "max":I
    .end local v5    # "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    const/4 v7, 0x0

    :try_start_2
    const-string v8, "reportFailedPasswordAttempt()"

    invoke-direct {p0, v7, v2, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDeviceOrUserLocked(ZILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v7

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_0

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v3, :cond_2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .local v0, "ident":J
    const/4 v3, 0x0

    :try_start_1
    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v3, :cond_1

    const-string v3, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "ident":J
    :cond_2
    monitor-exit p0

    return-void

    .restart local v0    # "ident":J
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .end local v0    # "ident":J
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .locals 37
    .param p1, "passwordOrNull"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    move/from16 v34, v0

    if-nez v34, :cond_0

    const/16 v34, 0x0

    :goto_0
    return v34

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v32

    .local v32, "userHandle":I
    const-string v34, "reset the password"

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    if-eqz p1, :cond_1

    move-object/from16 v25, p1

    .local v25, "password":Ljava/lang/String;
    :goto_1
    monitor-enter p0

    const/16 v34, 0x0

    const/16 v35, 0x2

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v27

    .local v27, "quality":I
    if-eqz v27, :cond_3

    invoke-static/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v28

    .local v28, "realQuality":I
    move/from16 v0, v28

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    const/high16 v34, 0x60000

    move/from16 v0, v27

    move/from16 v1, v34

    if-eq v0, v1, :cond_2

    const-string v34, "DevicePolicyManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "resetPassword: password quality 0x"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " does not meet required quality 0x"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    monitor-exit p0

    goto :goto_0

    .end local v27    # "quality":I
    .end local v28    # "realQuality":I
    :catchall_0
    move-exception v34

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v34

    .end local v25    # "password":Ljava/lang/String;
    :cond_1
    const-string v25, ""

    goto :goto_1

    .restart local v25    # "password":Ljava/lang/String;
    .restart local v27    # "quality":I
    .restart local v28    # "realQuality":I
    :cond_2
    :try_start_1
    move/from16 v0, v28

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .end local v28    # "realQuality":I
    :cond_3
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v11

    .local v11, "length":I
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v34

    if-ge v0, v11, :cond_4

    const-string v34, "DevicePolicyManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "resetPassword: password length "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " does not meet required length "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :cond_4
    const/high16 v34, 0x60000

    move/from16 v0, v27

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    const/4 v14, 0x0

    .local v14, "letters":I
    const/16 v31, 0x0

    .local v31, "uppercase":I
    const/4 v15, 0x0

    .local v15, "lowercase":I
    const/16 v24, 0x0

    .local v24, "numbers":I
    const/16 v30, 0x0

    .local v30, "symbols":I
    const/16 v23, 0x0

    .local v23, "nonletter":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v34

    if-ge v10, v0, :cond_8

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .local v6, "c":C
    const/16 v34, 0x41

    move/from16 v0, v34

    if-lt v6, v0, :cond_5

    const/16 v34, 0x5a

    move/from16 v0, v34

    if-gt v6, v0, :cond_5

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v31, v31, 0x1

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    const/16 v34, 0x61

    move/from16 v0, v34

    if-lt v6, v0, :cond_6

    const/16 v34, 0x7a

    move/from16 v0, v34

    if-gt v6, v0, :cond_6

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_6
    const/16 v34, 0x30

    move/from16 v0, v34

    if-lt v6, v0, :cond_7

    const/16 v34, 0x39

    move/from16 v0, v34

    if-gt v6, v0, :cond_7

    add-int/lit8 v24, v24, 0x1

    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v30, v30, 0x1

    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .end local v6    # "c":C
    :cond_8
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v16

    .local v16, "neededLetters":I
    move/from16 v0, v16

    if-ge v14, v0, :cond_9

    const-string v34, "DevicePolicyManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "resetPassword: number of letters "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " does not meet required number of letters "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :cond_9
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v19

    .local v19, "neededNumbers":I
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    const-string v34, "DevicePolicyManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "resetPassword: number of numerical digits "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " does not meet required number of numerical digits "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :cond_a
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v17

    .local v17, "neededLowerCase":I
    move/from16 v0, v17

    if-ge v15, v0, :cond_b

    const-string v34, "DevicePolicyManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "resetPassword: number of lowercase letters "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " does not meet required number of lowercase letters "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :cond_b
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v21

    .local v21, "neededUpperCase":I
    move/from16 v0, v31

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    const-string v34, "DevicePolicyManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "resetPassword: number of uppercase letters "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " does not meet required number of uppercase letters "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :cond_c
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v20

    .local v20, "neededSymbols":I
    move/from16 v0, v30

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    const-string v34, "DevicePolicyManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "resetPassword: number of special symbols "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " does not meet required number of special symbols "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :cond_d
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v18

    .local v18, "neededNonLetter":I
    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    const-string v34, "DevicePolicyManagerService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "resetPassword: number of non-letter characters "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " does not meet required number of non-letter characters "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .end local v10    # "i":I
    .end local v14    # "letters":I
    .end local v15    # "lowercase":I
    .end local v16    # "neededLetters":I
    .end local v17    # "neededLowerCase":I
    .end local v18    # "neededNonLetter":I
    .end local v19    # "neededNumbers":I
    .end local v20    # "neededSymbols":I
    .end local v21    # "neededUpperCase":I
    .end local v23    # "nonletter":I
    .end local v24    # "numbers":I
    .end local v30    # "symbols":I
    .end local v31    # "uppercase":I
    :cond_e
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .local v8, "callingUid":I
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v26

    .local v26, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v34, v0

    if-ltz v34, :cond_f

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-eq v0, v8, :cond_f

    const-string v34, "DevicePolicyManagerService"

    const-string v35, "resetPassword: already set by another uid and not entered by user"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isCallerDeviceOwnerOrInitializer(I)Z

    move-result v7

    .local v7, "callerIsDeviceOwnerAdmin":Z
    and-int/lit8 v34, p2, 0x2

    if-eqz v34, :cond_13

    const/4 v9, 0x1

    .local v9, "doNotAskCredentialsOnBoot":Z
    :goto_4
    if-eqz v7, :cond_10

    if-eqz v9, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDoNotAskCredentialsOnBoot()V

    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .local v12, "ident":J
    :try_start_2
    new-instance v33, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v33, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_14

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    move-object/from16 v2, v34

    move/from16 v3, v27

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_5
    and-int/lit8 v34, p2, 0x1

    if-eqz v34, :cond_15

    const/16 v29, 0x1

    .local v29, "requireEntry":Z
    :goto_6
    if-eqz v29, :cond_11

    const/16 v34, -0x1

    invoke-virtual/range {v33 .. v34}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    :cond_11
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v29, :cond_16

    move/from16 v22, v8

    .local v22, "newOwner":I
    :goto_7
    :try_start_3
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v22

    if-eq v0, v1, :cond_12

    move/from16 v0, v22

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_12
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v34, 0x1

    goto/16 :goto_0

    .end local v9    # "doNotAskCredentialsOnBoot":Z
    .end local v12    # "ident":J
    .end local v22    # "newOwner":I
    .end local v29    # "requireEntry":Z
    .end local v33    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_13
    const/4 v9, 0x0

    goto :goto_4

    .restart local v9    # "doNotAskCredentialsOnBoot":Z
    .restart local v12    # "ident":J
    .restart local v33    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_14
    :try_start_4
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .end local v33    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :catchall_1
    move-exception v34

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v34

    .restart local v33    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_15
    const/16 v29, 0x0

    goto :goto_6

    .restart local v29    # "requireEntry":Z
    :cond_16
    const/16 v22, -0x1

    goto :goto_7

    .restart local v22    # "newOwner":I
    :catchall_2
    move-exception v34

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v34
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "adminExtras"    # Landroid/os/Bundle;
    .param p4, "result"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v3, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "expiration"

    iget-wide v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v4, p4

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method sendAdminCommandLocked(Ljava/lang/String;II)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I

    .prologue
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    if-lez v1, :cond_1

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z

    .prologue
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz p3, :cond_1

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .locals 1
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setActivePasswordState(IIIIIIIII)V
    .locals 6
    .param p1, "quality"    # I
    .param p2, "length"    # I
    .param p3, "letters"    # I
    .param p4, "uppercase"    # I
    .param p5, "lowercase"    # I
    .param p6, "numbers"    # I
    .param p7, "symbols"    # I
    .param p8, "nonletter"    # I
    .param p9, "userHandle"    # I

    .prologue
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    const-string v3, "set the active password"

    invoke-direct {p0, p9, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .local v2, "p":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validateQualityConstant(I)V

    monitor-enter p0

    :try_start_0
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-ne v3, p1, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-ne v3, p2, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-ne v3, p3, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-ne v3, p4, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-ne v3, p5, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-ne v3, p6, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-ne v3, p7, :cond_1

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-eq v3, p8, :cond_2

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .local v0, "ident":J
    :try_start_1
    iput p1, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    iput p2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    iput p3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    iput p5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    iput p4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    iput p6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    iput p7, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    iput p8, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-direct {p0, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    invoke-direct {p0, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordExpirationsLocked(I)V

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    const-string v3, "android.app.action.ACTION_PASSWORD_CHANGED"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, p9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "ident":J
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0    # "ident":J
    :catchall_1
    move-exception v3

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hidden"    # Z

    .prologue
    const-string v5, "ComponentName is null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .local v0, "callingUserId":I
    monitor-enter p0

    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .local v2, "id":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p2, p3, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    :try_start_2
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    return v5

    :catch_0
    move-exception v4

    .local v4, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed to setApplicationHiddenSetting"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    const/4 v5, 0x0

    monitor-exit p0

    goto :goto_0

    .end local v2    # "id":J
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .restart local v2    # "id":J
    :catchall_1
    move-exception v5

    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/os/Bundle;

    .prologue
    const-string v3, "ComponentName is null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .local v2, "userHandle":Landroid/os/UserHandle;
    monitor-enter p0

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .local v0, "id":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p2, p3, v2}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v3

    .end local v0    # "id":J
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "required"    # Z

    .prologue
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "ComponentName is null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    monitor-enter p0

    const/4 v4, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    if-eq v4, p2, :cond_2

    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "ident":J
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "ident":J
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    if-eq v1, p2, :cond_1

    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    monitor-enter p0

    const/16 v2, 0x8

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eq v2, p2, :cond_1

    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    monitor-enter p0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegatedCertInstallerPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    monitor-exit p0

    return-void

    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    if-eq v1, p2, :cond_1

    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDeviceInitializer(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "initializer"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DeviceOwner;->isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid component name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for device initializer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .local v1, "isInitializerSystemApp":Z
    :goto_1
    if-nez v1, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only system app can be set as device initializer."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1    # "isInitializerSystemApp":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v1, 0x0

    .restart local v1    # "isInitializerSystemApp":Z
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "Fail to check if device initialzer is system app."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanSetDeviceInitializer(Landroid/content/ComponentName;)V

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceInitializer()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Trying to set device initializer but device initializer is already set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-nez v2, :cond_5

    invoke-static {p2}, Lcom/android/server/devicepolicy/DeviceOwner;->createWithDeviceInitializer(Landroid/content/ComponentName;)Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    :goto_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->addDeviceInitializerToLockTaskPackagesLocked(I)V

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    const/4 v2, 0x1

    monitor-exit p0

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->setDeviceInitializer(Landroid/content/ComponentName;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .end local v1    # "isInitializerSystemApp":Z
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v6, :cond_0

    :goto_0
    return v5

    :cond_0
    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/server/devicepolicy/DeviceOwner;->isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid package name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for device owner"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanSetDeviceOwner()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .local v2, "ident":J
    :try_start_1
    const-string v5, "backup"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    .local v1, "ibm":Landroid/app/backup/IBackupManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/app/backup/IBackupManager;->setBackupServiceActive(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-nez v5, :cond_3

    invoke-static {p1, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->createWithDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    :goto_1
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v5}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateDeviceOwnerLocked()V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    :try_start_3
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x1

    monitor-exit p0

    goto :goto_0

    .end local v1    # "ibm":Landroid/app/backup/IBackupManager;
    .end local v2    # "ident":J
    .end local v4    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .restart local v2    # "ident":J
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Failed deactivating backup service."

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .restart local v1    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_3
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .restart local v4    # "intent":Landroid/content/Intent;
    :catchall_2
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method protected setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    const/16 v20, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v12

    .local v12, "expiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .local v14, "now":J
    sub-long v16, v12, v14

    .local v16, "timeToExpire":J
    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-nez v20, :cond_1

    const-wide/16 v8, 0x0

    .local v8, "alarmTime":J
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .local v18, "token":J
    :try_start_0
    const-string v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    .local v10, "am":Landroid/app/AlarmManager;
    const/16 v20, 0x15c3

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x48000000    # 131072.0f

    new-instance v23, Landroid/os/UserHandle;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .local v11, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-eqz v20, :cond_0

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0, v8, v9, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v8    # "alarmTime":J
    .end local v10    # "am":Landroid/app/AlarmManager;
    .end local v11    # "pi":Landroid/app/PendingIntent;
    .end local v18    # "token":J
    :cond_1
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-gtz v20, :cond_2

    const-wide/32 v20, 0x5265c00

    add-long v8, v14, v20

    .restart local v8    # "alarmTime":J
    goto :goto_0

    .end local v8    # "alarmTime":J
    :cond_2
    const-wide/32 v20, 0x5265c00

    rem-long v6, v16, v20

    .local v6, "alarmInterval":J
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-nez v20, :cond_3

    const-wide/32 v6, 0x5265c00

    :cond_3
    add-long v8, v14, v6

    .restart local v8    # "alarmTime":J
    goto :goto_0

    .end local v6    # "alarmInterval":J
    .restart local v18    # "token":J
    :catchall_0
    move-exception v20

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/lang/String;
    .param p3, "exclusionList"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v9, :cond_0

    move-object v3, v8

    :goto_0
    return-object v3

    :cond_0
    monitor-enter p0

    :try_start_0
    const-string v9, "ComponentName is null"

    invoke-static {p1, v9}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v9, 0x5

    invoke-virtual {p0, p1, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v9, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .local v2, "compSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .local v3, "component":Landroid/content/ComponentName;
    iget-object v9, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v9, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v9, :cond_1

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    monitor-exit p0

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "compSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "compSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "DevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Only the owner is allowed to set the global proxy. User "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not permitted."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    move-object v3, v8

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .local v6, "origId":J
    :try_start_2
    invoke-direct {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    move-object v3, v8

    goto :goto_0

    .end local v6    # "origId":J
    :cond_4
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    goto :goto_1

    .restart local v6    # "origId":J
    :catchall_1
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v1, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_DEPRECATED:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Global setting no longer supported: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/SecurityException;

    const-string v6, "Permission denial: device owners cannot update %1$s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    const-string v1, "stay_on_while_plugged_in"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v4

    .local v4, "timeMs":J
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    monitor-exit p0

    goto :goto_0

    .end local v4    # "timeMs":J
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .local v2, "id":J
    :try_start_2
    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setKeyguardDisabled(Landroid/content/ComponentName;Z)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    const-string v4, "ComponentName is null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v4, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .local v2, "userId":I
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v3, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v4

    .end local v0    # "ident":J
    .end local v2    # "userId":I
    .end local v3    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0    # "ident":J
    .restart local v2    # "userId":I
    .restart local v3    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :try_start_3
    invoke-virtual {v3, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I

    .prologue
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_1

    and-int/lit8 p2, p2, 0x38

    :cond_1
    monitor-enter p0

    const/16 v2, 0x9

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    if-eq v2, p2, :cond_2

    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const-string v1, "ComponentName is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v1, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .local v0, "userHandle":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setLockTaskPackagesLocked(ILjava/util/List;)V

    monitor-exit p0

    return-void

    .end local v0    # "userHandle":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z

    .prologue
    const-string v5, "ComponentName is null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .local v2, "identity":J
    :try_start_1
    const-string v5, "audio"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .local v0, "iAudioService":Landroid/media/IAudioService;
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, p2, v5, v6, v4}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "iAudioService":Landroid/media/IAudioService;
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v1

    .local v1, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed to setMasterMute"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "identity":J
    .end local v4    # "userId":I
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .restart local v2    # "identity":J
    .restart local v4    # "userId":I
    :catchall_1
    move-exception v5

    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "num"    # I

    .prologue
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    monitor-enter p0

    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eq v2, p2, :cond_1

    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J

    .prologue
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    monitor-enter p0

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-wide v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    iput-wide p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J

    .prologue
    const-wide/16 v4, 0x0

    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v6, "ComponentName is null"

    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Timeout must be >= 0 ms"

    invoke-static {p2, p3, v6}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    monitor-enter p0

    const/4 v6, 0x6

    :try_start_0
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v6, p2, v4

    if-lez v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v2, p2, v6

    .local v2, "expiration":J
    :goto_1
    iput-wide v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    iput-wide p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v4, p2, v4

    if-lez v4, :cond_1

    const-string v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPasswordExpiration(): password will expire on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-static {v6, v7}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "expiration":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    move-wide v2, v4

    goto :goto_1
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eq v2, p2, :cond_1

    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-eq v2, p2, :cond_1

    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-eq v2, p2, :cond_1

    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    const-string v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-eq v2, p2, :cond_0

    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_0
    monitor-exit p0

    return-void

    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-eq v2, p2, :cond_1

    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-eq v2, p2, :cond_1

    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-eq v2, p2, :cond_1

    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .prologue
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-eq v2, p2, :cond_1

    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I

    .prologue
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    invoke-static {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validateQualityConstant(I)V

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-eq v2, p2, :cond_1

    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "grantState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .local v5, "user":Landroid/os/UserHandle;
    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .local v8, "ident":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v1, p2, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_0

    const/4 v10, 0x0

    .local v10, "targetSdkVersion":I
    :goto_0
    const/16 v1, 0x17

    if-ge v10, v1, :cond_1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "targetSdkVersion":I
    :goto_1
    return v1

    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :try_start_3
    iget v10, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_0

    .restart local v10    # "targetSdkVersion":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    packed-switch p4, :pswitch_data_0

    :goto_2
    const/4 v1, 0x1

    :try_start_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_1

    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "ident":J
    .end local v10    # "targetSdkVersion":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "ident":J
    .restart local v10    # "targetSdkVersion":I
    :pswitch_0
    :try_start_5
    invoke-virtual {v0, p2, p3, v5}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v1, p3

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "targetSdkVersion":I
    :catch_0
    move-exception v7

    .local v7, "se":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .end local v7    # "se":Ljava/lang/SecurityException;
    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "targetSdkVersion":I
    :pswitch_1
    :try_start_7
    invoke-virtual {v0, p2, p3, v5}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v1, p3

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "targetSdkVersion":I
    :catchall_1
    move-exception v1

    :try_start_8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "targetSdkVersion":I
    :pswitch_2
    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object v1, p3

    move-object v2, p2

    :try_start_9
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPermissionPolicy(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .local v0, "userId":I
    monitor-enter p0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    .local v1, "userPolicy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    if-eq v2, p2, :cond_0

    iput p2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPermissionPolicy:I

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_0
    monitor-exit p0

    return-void

    .end local v1    # "userPolicy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageList"    # Ljava/util/List;

    .prologue
    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v11, :cond_0

    :goto_0
    return v10

    :cond_0
    const-string v11, "ComponentName is null"

    invoke-static {p1, v11}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .local v9, "userId":I
    const/4 v3, 0x0

    .local v3, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "id":J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v11

    if-eqz v11, :cond_1

    iget v9, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/4 v11, -0x1

    invoke-virtual {v0, v11}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    if-eqz v3, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .local v5, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v10

    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v10

    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "DevicePolicyManagerService"

    const-string v12, "Cannot set permitted accessibility services, because it contains already enabled accesibility services."

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "id":J
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "userId":I
    :cond_3
    monitor-enter p0

    const/4 v10, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iput-object p2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    monitor-exit p0

    const/4 v10, 0x1

    goto :goto_0

    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_1
    move-exception v10

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v10
.end method

.method public setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageList"    # Ljava/util/List;

    .prologue
    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    const-string v7, "ComponentName is null"

    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->checkCallerIsCurrentUserOrProfile()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz p2, :cond_3

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .local v5, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .local v1, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v1, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .local v4, "ime":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v4    # "ime":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Cannot set permitted input methods, because it contains already enabled input method."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    monitor-enter p0

    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    monitor-exit p0

    const/4 v6, 0x1

    goto :goto_0

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public setProfileEnabled(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v5, "ComponentName is null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .local v3, "userHandle":I
    monitor-enter p0

    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .local v0, "id":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->setUserEnabled(I)V

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.USER"

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v5, 0x50000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_0

    .end local v0    # "id":J
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "userId":I
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v0    # "id":J
    .restart local v4    # "userId":I
    :catchall_1
    move-exception v5

    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const-string v3, "ComponentName is null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .local v2, "userId":I
    const/4 v3, -0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "id":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2, p2}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->isInstalledForUser(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not installed for userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanSetProfileOwner(I)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-nez v0, :cond_3

    invoke-static {p1, p2, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->createWithProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    :goto_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "proxyInfo"    # Landroid/net/ProxyInfo;

    .prologue
    monitor-enter p0

    const/4 v1, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "token":J
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v2    # "token":J
    :catchall_1
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "permissionProvider"    # Landroid/content/ComponentName;

    .prologue
    const-string v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .local v0, "userData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    monitor-exit p0

    return-void

    .end local v0    # "userData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v1    # "userHandle":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "ComponentName is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    monitor-enter p0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    if-eq v2, p2, :cond_1

    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    invoke-direct {p0, v1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabledInWindowManager(IZ)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const-string v3, "ComponentName is null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "callingUserId":I
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .local v2, "contentResolver":Landroid/content/ContentResolver;
    monitor-enter p0

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/SecurityException;

    const-string v6, "Permission denial: Device owners cannot update %1$s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    :try_start_1
    sget-object v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/SecurityException;

    const-string v6, "Permission denial: Profile owners cannot update %1$s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .local v4, "id":J
    :try_start_2
    invoke-static {v2, p2, p3, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v3

    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userId":I
    monitor-enter p0

    const/4 v2, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-boolean v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    if-eq v2, p2, :cond_1

    invoke-direct {p0, p2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setStatusBarDisabledInternal(ZI)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit p0

    :goto_0
    return v2

    :cond_0
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1
    monitor-exit p0

    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;Z)I
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z

    .prologue
    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v7, :cond_0

    :goto_0
    return v6

    :cond_0
    const-string v7, "ComponentName is null"

    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .local v5, "userHandle":I
    monitor-enter p0

    if-nez v5, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const-string v7, "DevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only owner is allowed to set storage encryption. User "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not permitted."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_2
    const/4 v7, 0x7

    :try_start_1
    invoke-virtual {p0, p1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isEncryptionSupported()Z

    move-result v7

    if-nez v7, :cond_3

    monitor-exit p0

    goto :goto_0

    :cond_3
    iget-boolean v6, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eq v6, p2, :cond_4

    iput-boolean p2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    invoke-direct {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_4
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .local v3, "newRequested":Z
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v6, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    or-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setEncryptionRequested(Z)V

    if-eqz v3, :cond_6

    const/4 v6, 0x3

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_6
    const/4 v6, 0x1

    goto :goto_2
.end method

.method public setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/SystemUpdatePolicy;

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/admin/SystemUpdatePolicy;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid system update policy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    const/4 v0, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->clearSystemUpdatePolicy()V

    :goto_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.SYSTEM_UPDATE_POLICY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->setSystemUpdatePolicy(Landroid/app/admin/SystemUpdatePolicy;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "args"    # Landroid/os/PersistableBundle;

    .prologue
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "admin is null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "agent is null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userHandle":I
    const-string v2, "set trust agent configuration"

    invoke-direct {p0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    monitor-enter p0

    const/16 v2, 0x9

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    invoke-direct {v4, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    monitor-exit p0

    goto :goto_0

    .end local v0    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uninstallBlocked"    # Z

    .prologue
    const-string v5, "ComponentName is null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .local v4, "userId":I
    monitor-enter p0

    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .local v0, "id":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p2, p3, v4}, Landroid/content/pm/IPackageManager;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v3

    .local v3, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed to setBlockUninstallForUser"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "id":J
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .restart local v0    # "id":J
    :catchall_1
    move-exception v5

    :try_start_5
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setUserEnabled(Landroid/content/ComponentName;)Z
    .locals 11
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    :goto_0
    return v6

    :cond_0
    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "ComponentName is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .local v5, "userId":I
    const/4 v8, -0x1

    invoke-virtual {p0, p1, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceInitializer(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "This method can only be called by device initializers"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .local v2, "id":J
    :try_start_2
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-interface {v4, p1, v8, v9, v5}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .end local v4    # "ipm":Landroid/content/pm/IPackageManager;
    :cond_3
    if-nez v5, :cond_4

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "device_provisioned"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "user_setup_complete"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v6, v7

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Can\'t talk to package manager"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "ComponentName is null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .local v0, "id":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2, p2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v3

    .end local v0    # "id":J
    .end local v2    # "userId":I
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 22
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    const-string v18, "ComponentName is null"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/os/UserHandle;-><init>(I)V

    .local v14, "user":Landroid/os/UserHandle;
    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    .local v15, "userHandle":I
    monitor-enter p0

    const/16 v18, -0x1

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v4

    .local v4, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v7

    .local v7, "isDeviceOwner":Z
    if-nez v7, :cond_0

    if-eqz v15, :cond_0

    sget-object v18, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    new-instance v18, Ljava/lang/SecurityException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Profile owners cannot set user restriction "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v18

    .end local v4    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v7    # "isDeviceOwner":Z
    :catchall_0
    move-exception v18

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .restart local v4    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v7    # "isDeviceOwner":Z
    :cond_0
    :try_start_1
    sget-object v18, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->IMMUTABLE_USER_RESTRICTIONS:Ljava/util/Set;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    new-instance v18, Ljava/lang/SecurityException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "User restriction "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " cannot be changed"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    .local v5, "alreadyRestricted":Z
    const/4 v6, 0x0

    .local v6, "iAudioService":Landroid/media/IAudioService;
    const-string v18, "no_unmute_microphone"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "no_adjust_volume"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    :cond_2
    const-string v18, "audio"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v6

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .local v8, "id":J
    if-eqz p3, :cond_5

    if-nez v5, :cond_5

    :try_start_2
    const-string v18, "no_unmute_microphone"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v6, v0, v1, v15}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;I)V

    :cond_4
    :goto_0
    const-string v18, "no_config_wifi"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "wifi_networks_available_notification_on"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v14}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    move/from16 v0, p3

    if-eq v0, v5, :cond_6

    const-string v18, "no_share_location"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const-string v11, "sys.settings_secure_version"

    .local v11, "property":Ljava/lang/String;
    const-string v18, "sys.settings_secure_version"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    const-wide/16 v20, 0x1

    add-long v16, v18, v20

    .local v16, "version":J
    const-string v18, "sys.settings_secure_version"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "location_providers_allowed"

    .local v10, "name":Ljava/lang/String;
    sget-object v18, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v19, "location_providers_allowed"

    invoke-static/range {v18 .. v19}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .local v13, "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "property":Ljava/lang/String;
    .end local v13    # "url":Landroid/net/Uri;
    .end local v16    # "version":J
    :cond_6
    if-nez p3, :cond_7

    if-eqz v5, :cond_7

    const-string v18, "no_unmute_microphone"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v6, v0, v1, v15}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_7
    :goto_2
    :try_start_3
    invoke-static {v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendChangedNotification(I)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_8
    :try_start_4
    const-string v18, "no_adjust_volume"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v6, v0, v1, v2, v15}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    :catch_0
    move-exception v12

    .local v12, "re":Landroid/os/RemoteException;
    :try_start_5
    const-string v18, "DevicePolicyManagerService"

    const-string v19, "Failed to talk to AudioService."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .end local v12    # "re":Landroid/os/RemoteException;
    :cond_9
    :try_start_7
    const-string v18, "no_share_location"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "location_mode"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "location_providers_allowed"

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v18

    :try_start_8
    invoke-static {v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_a
    :try_start_9
    const-string v18, "no_debugging_features"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "adb_enabled"

    const-string v20, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    const-string v18, "ensure_verify_apps"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "package_verifier_enable"

    const-string v20, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "verifier_verify_adb_installs"

    const-string v20, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    const-string v18, "no_install_unknown_sources"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "install_non_market_apps"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_1

    :cond_d
    const-string v18, "no_adjust_volume"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v6, v0, v1, v2, v15}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2
.end method

.method public startManagedQuickContact(Ljava/lang/String;JLandroid/content/Intent;)V
    .locals 8
    .param p1, "actualLookupKey"    # Ljava/lang/String;
    .param p2, "actualContactId"    # J
    .param p4, "originalIntent"    # Landroid/content/Intent;

    .prologue
    invoke-static {p1, p2, p3, p4}, Landroid/provider/ContactsContract$QuickContact;->rebuildManagedQuickContactsIntent(Ljava/lang/String;JLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "ident":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    move-result v4

    .local v4, "managedUserId":I
    if-gez v4, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :cond_0
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v5, v1, v6}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToastForUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v4    # "managedUserId":I
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const-string v4, "ComponentName is null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    const/4 v4, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .local v2, "id":J
    const/4 v1, 0x0

    .local v1, "userId":I
    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    :try_start_2
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Couldn\'t switch user"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v4, 0x0

    :try_start_4
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "userId":I
    .end local v2    # "id":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .restart local v1    # "userId":I
    .restart local v2    # "id":J
    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 8
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sys.secpolicy.camera.off_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "cameraPropertyForUser":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "systemState":Z
    const/4 v6, 0x0

    iget v7, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    .local v0, "cameraDisabled":Z
    if-eq v0, v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    if-eqz v0, :cond_1

    :try_start_0
    const-string v3, "1"

    .local v3, "value":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "token":J
    :cond_0
    return-void

    .restart local v4    # "token":J
    :cond_1
    :try_start_1
    const-string v3, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public systemReady()V
    .locals 6

    .prologue
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->loadDeviceOwner()V

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->cleanUpOldUsers()V

    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->register(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateUserSetupComplete()V

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    .local v2, "userHandle":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabledInWindowManager(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public uninstallCaCerts(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "aliases"    # [Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .local v6, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "id":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .local v5, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    array-length v7, p2

    if-ge v1, v7, :cond_0

    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v7

    aget-object v8, p2, v1

    invoke-interface {v7, v8}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "i":I
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_2
    return-void

    .restart local v1    # "i":I
    .restart local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "from CaCertUninstaller: "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v4

    .local v4, "ie":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "CaCertUninstaller: "

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v4    # "ie":Ljava/lang/InterruptedException;
    .restart local v1    # "i":I
    .restart local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v7

    :try_start_6
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v7
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v1    # "i":I
    .end local v5    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_1
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 7
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    const/4 v4, 0x0

    iget v5, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v2

    .local v2, "timeMs":J
    iget-wide v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    const-wide/32 v2, 0x7fffffff

    :goto_1
    :try_start_0
    iput-wide v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Landroid/os/PowerManagerInternal;->setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "stay_on_while_plugged_in"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method updateUserSetupComplete()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    .local v4, "userHandle":I
    const-string v6, "user_setup_complete"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-boolean v6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    if-nez v6, :cond_0

    iput-boolean v8, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeDeviceInitializerFromLockTaskPackages(I)V

    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    monitor-exit p0

    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "userHandle":I
    :cond_1
    return-void
.end method

.method validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 5
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    iget v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v2, :cond_1

    const/4 v0, 0x0

    .local v0, "haveOwner":Z
    iget-object v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v2

    iget v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous password owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no longer active; disabling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    iput v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .end local v0    # "haveOwner":Z
    .end local v1    # "i":I
    :cond_1
    return-void

    .restart local v0    # "haveOwner":Z
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public wipeData(II)V
    .locals 11
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v9, 0x0

    const/4 v10, 0x4

    :try_start_0
    invoke-virtual {p0, v9, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v9, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .local v1, "cname":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    .local v6, "source":Ljava/lang/String;
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .local v2, "ident":J
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_5

    :try_start_1
    iget-object v9, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceInitializer(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v9

    if-nez v9, :cond_3

    move v5, v7

    .local v5, "ownsInitialization":Z
    :goto_2
    if-nez p2, :cond_1

    iget-object v9, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    if-nez v5, :cond_4

    :cond_1
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Only device owner admins can set WIPE_RESET_PROTECTION_DATA"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "ownsInitialization":Z
    :catchall_0
    move-exception v8

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "cname":Landroid/content/ComponentName;
    .end local v2    # "ident":J
    .end local v6    # "source":Ljava/lang/String;
    :catchall_1
    move-exception v8

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v1    # "cname":Landroid/content/ComponentName;
    :cond_2
    :try_start_3
    iget-object v9, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .restart local v6    # "source":Ljava/lang/String;
    goto :goto_1

    .restart local v2    # "ident":J
    :cond_3
    move v5, v8

    goto :goto_2

    .restart local v5    # "ownsInitialization":Z
    :cond_4
    :try_start_4
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "persistent_data_block"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/persistentdata/PersistentDataBlockManager;

    .local v4, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .end local v4    # "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    .end local v5    # "ownsInitialization":Z
    :cond_5
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_6

    .local v7, "wipeExtRequested":Z
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DevicePolicyManager.wipeData() from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, p2, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDeviceOrUserLocked(ZILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .end local v7    # "wipeExtRequested":Z
    :cond_6
    move v7, v8

    goto :goto_3
.end method
