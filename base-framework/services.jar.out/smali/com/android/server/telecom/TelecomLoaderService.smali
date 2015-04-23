.class public Lcom/android/server/telecom/TelecomLoaderService;
.super Lcom/android/server/SystemService;
.source "TelecomLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    }
.end annotation


# static fields
.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.android.ITelecomService"

.field private static final SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "TelecomLoaderService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultDialerAppRequests:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDefaultSmsAppRequests:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.server.telecom"

    const-string v2, "com.android.server.telecom.components.TelecomService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/telecom/TelecomLoaderService;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppProviders()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/TelecomLoaderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSmsAppRequests:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/telecom/TelecomLoaderService;Landroid/util/IntArray;)Landroid/util/IntArray;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;
    .param p1, "x1"    # Landroid/util/IntArray;

    .prologue
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSmsAppRequests:Landroid/util/IntArray;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultDialerAppRequests:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/telecom/TelecomLoaderService;Landroid/util/IntArray;)Landroid/util/IntArray;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;
    .param p1, "x1"    # Landroid/util/IntArray;

    .prologue
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultDialerAppRequests:Landroid/util/IntArray;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/telecom/TelecomLoaderService;Landroid/util/IntArray;)Landroid/util/IntArray;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;
    .param p1, "x1"    # Landroid/util/IntArray;

    .prologue
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/telecom/TelecomLoaderService;Landroid/content/pm/PackageManagerInternal;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;
    .param p1, "x1"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/TelecomLoaderService;->updateSimCallManagerPermissions(Landroid/content/pm/PackageManagerInternal;I)V

    return-void
.end method

.method private connectToTelecom()V
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    :cond_0
    new-instance v2, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;-><init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/telecom/TelecomLoaderService$1;)V

    .local v2, "serviceConnection":Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.ITelecomService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/server/telecom/TelecomLoaderService;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v0, 0x4000041

    .local v0, "flags":I
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v2, v0, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    :cond_1
    monitor-exit v4

    return-void

    .end local v0    # "flags":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "serviceConnection":Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private registerCarrierConfigChangedReceiver()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    .local v6, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$5;

    invoke-direct {v1, p0, v6}, Lcom/android/server/telecom/TelecomLoaderService$5;-><init>(Lcom/android/server/telecom/TelecomLoaderService;Landroid/content/pm/PackageManagerInternal;)V

    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerDefaultAppNotifier()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .local v4, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const-string v1, "sms_default_application"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, "defaultSmsAppUri":Landroid/net/Uri;
    const-string v1, "dialer_default_application"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .local v5, "defaultDialerAppUri":Landroid/net/Uri;
    new-instance v0, Lcom/android/server/telecom/TelecomLoaderService$4;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/TelecomLoaderService$4;-><init>(Lcom/android/server/telecom/TelecomLoaderService;Landroid/os/Handler;Landroid/net/Uri;Landroid/content/pm/PackageManagerInternal;Landroid/net/Uri;)V

    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v3, v7, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v5, v7, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private registerDefaultAppProviders()V
    .locals 2

    .prologue
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$1;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setSmsAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$2;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$2;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setDialerAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$3;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$3;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setSimCallManagerPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    return-void
.end method

.method private updateSimCallManagerPermissions(Landroid/content/pm/PackageManagerInternal;I)V
    .locals 6
    .param p1, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "userId"    # I

    .prologue
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v2, p2}, Landroid/telecom/TelecomManager;->getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .local v1, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v1, :cond_0

    const-string v3, "TelecomLoaderService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updating sim call manager permissions for userId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppNotifier()V

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerCarrierConfigChangedReceiver()V

    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    return-void
.end method
