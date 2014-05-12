.class public final Lcom/android/server/print/PrintManagerService;
.super Landroid/print/IPrintManager$Stub;
.source "PrintManagerService.java"


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final EXTRA_PRINT_SERVICE_COMPONENT_NAME:Ljava/lang/String; = "EXTRA_PRINT_SERVICE_COMPONENT_NAME"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mLock:Ljava/lang/Object;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/print/UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Landroid/print/IPrintManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/PrintManagerService;->mUserStates:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/print/PrintManagerService;->mCurrentUserId:I

    iput-object p1, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService;->registerContentObservers()V

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService;->registerBoradcastReceivers()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/print/PrintManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/print/PrintManagerService;)Lcom/android/server/print/UserState;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService;->getCurrentUserStateLocked()Lcom/android/server/print/UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/print/PrintManagerService;I)Lcom/android/server/print/UserState;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/print/PrintManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/print/PrintManagerService;Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/print/PrintManagerService;->showEnableInstalledPrintServiceNotification(Landroid/content/ComponentName;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/print/PrintManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService;->switchUser(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/print/PrintManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService;->removeUser(I)V

    return-void
.end method

.method private getCurrentUserStateLocked()Lcom/android/server/print/UserState;
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/print/PrintManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    .locals 3
    .parameter "userId"

    .prologue
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/UserState;

    .local v0, userState:Lcom/android/server/print/UserState;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/print/UserState;

    .end local v0           #userState:Lcom/android/server/print/UserState;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/print/UserState;-><init>(Landroid/content/Context;ILjava/lang/Object;)V

    .restart local v0       #userState:Lcom/android/server/print/UserState;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private registerBoradcastReceivers()V
    .locals 7

    .prologue
    new-instance v6, Lcom/android/server/print/PrintManagerService$3;

    invoke-direct {v6, p0}, Lcom/android/server/print/PrintManagerService$3;-><init>(Lcom/android/server/print/PrintManagerService;)V

    .local v6, monitor:Lcom/android/internal/content/PackageMonitor;
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v6, v0, v1, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/print/PrintManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/print/PrintManagerService$4;-><init>(Lcom/android/server/print/PrintManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerContentObservers()V
    .locals 5

    .prologue
    const-string v2, "enabled_print_services"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, enabledPrintServicesUri:Landroid/net/Uri;
    new-instance v1, Lcom/android/server/print/PrintManagerService$2;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/print/PrintManagerService$2;-><init>(Lcom/android/server/print/PrintManagerService;Landroid/os/Handler;Landroid/net/Uri;)V

    .local v1, observer:Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private removeUser(I)V
    .locals 3
    .parameter "removedUserId"

    .prologue
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/UserState;

    .local v0, userState:Lcom/android/server/print/UserState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/print/UserState;->destroyLocked()V

    iget-object v1, p0, Lcom/android/server/print/PrintManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    monitor-exit v2

    return-void

    .end local v0           #userState:Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resolveCallingAppEnforcingPermissions(I)I
    .locals 5
    .parameter "appId"

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, callingUid:I
    if-eqz v1, :cond_0

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_1

    :cond_0
    return p1

    :cond_1
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .local v0, callingAppId:I
    if-eq p1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.android.printspooler.permission.ACCESS_ALL_PRINT_JOBS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call from app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without com.android.printspooler.permission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".ACCESS_ALL_PRINT_JOBS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object p1, v3

    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .local v2, packages:[Ljava/lang/String;
    array-length v1, v2

    .local v1, packageCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v4, v2, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object p1, v3

    goto :goto_0
.end method

.method private resolveCallingUserEnforcingPermissions(I)I
    .locals 5
    .parameter "userId"

    .prologue
    const/4 v4, -0x3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, callingUid:I
    if-eqz v0, :cond_0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_1

    .end local p1
    :cond_0
    :goto_0
    return p1

    .restart local p1
    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .local v1, callingUserId:I
    if-eq v1, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    if-ne p1, v4, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call from user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without permission INTERACT_ACROSS_USERS or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "INTERACT_ACROSS_USERS_FULL not allowed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v2, -0x2

    if-eq p1, v2, :cond_5

    if-ne p1, v4, :cond_6

    :cond_5
    iget p1, p0, Lcom/android/server/print/PrintManagerService;->mCurrentUserId:I

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Calling user can be changed to only UserHandle.USER_CURRENT or UserHandle.USER_CURRENT_OR_SELF."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private showEnableInstalledPrintServiceNotification(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 12
    .parameter "component"
    .parameter "label"
    .parameter "userId"

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    .local v5, userHandle:Landroid/os/UserHandle;
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.settings.ACTION_PRINT_SETTINGS"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const-string v0, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    const/high16 v3, 0x5000

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .local v9, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080390

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10405df

    new-array v10, v11, [Ljava/lang/Object;

    aput-object p2, v10, v1

    invoke-virtual {v3, v4, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10405e0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .local v6, builder:Landroid/app/Notification$Builder;
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .local v7, notificationManager:Landroid/app/NotificationManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, notificationTag:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v7, v8, v1, v0, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private switchUser(I)V
    .locals 4
    .parameter "newUserId"

    .prologue
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/android/server/print/PrintManagerService;->mCurrentUserId:I

    if-ne p1, v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/print/PrintManagerService;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/server/print/PrintManagerService;->mUserStates:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/print/PrintManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/UserState;

    .local v0, userState:Lcom/android/server/print/UserState;
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService;->getCurrentUserStateLocked()Lcom/android/server/print/UserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/print/UserState;->removeObsoletePrintJobs()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    goto :goto_1

    .end local v0           #userState:Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V
    .locals 7
    .parameter "listener"
    .parameter "appId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .local v3, resolvedUserId:I
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .local v2, resolvedAppId:I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v4

    .local v4, userState:Lcom/android/server/print/UserState;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    :try_start_1
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0           #identity:J
    .end local v4           #userState:Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v0       #identity:J
    .restart local v4       #userState:Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;II)V
    .locals 7
    .parameter "printJobId"
    .parameter "appId"
    .parameter "userId"

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .local v2, resolvedAppId:I
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .local v3, resolvedUserId:I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v4

    .local v4, userState:Lcom/android/server/print/UserState;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    :try_start_1
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->cancelPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0           #identity:J
    .end local v4           #userState:Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v0       #identity:J
    .restart local v4       #userState:Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 6
    .parameter "observer"
    .parameter "userId"

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .local v2, resolvedUserId:I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .local v3, userState:Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0           #identity:J
    .end local v3           #userState:Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0       #identity:J
    .restart local v3       #userState:Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 6
    .parameter "observer"
    .parameter "userId"

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .local v2, resolvedUserId:I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .local v3, userState:Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0           #identity:J
    .end local v3           #userState:Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0       #identity:J
    .restart local v3       #userState:Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump PrintManager from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .local v1, identity:J
    :try_start_1
    const-string v5, "PRINT MANAGER STATE (dumpsys print)"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .local v4, userStateCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_1

    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState;

    .local v3, userState:Lcom/android/server/print/UserState;
    const-string v5, ""

    invoke-virtual {v3, p1, p2, v5}, Lcom/android/server/print/UserState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v3           #userState:Lcom/android/server/print/UserState;
    .end local v4           #userStateCount:I
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .end local v1           #identity:J
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .restart local v0       #i:I
    .restart local v1       #identity:J
    .restart local v4       #userStateCount:I
    :cond_1
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0
.end method

.method public getEnabledPrintServices(I)Ljava/util/List;
    .locals 6
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .local v2, resolvedUserId:I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .local v3, userState:Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->getEnabledPrintServices()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .end local v0           #identity:J
    .end local v3           #userState:Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0       #identity:J
    .restart local v3       #userState:Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getInstalledPrintServices(I)Ljava/util/List;
    .locals 6
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .local v2, resolvedUserId:I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .local v3, userState:Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->getInstalledPrintServices()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .end local v0           #identity:J
    .end local v3           #userState:Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0       #identity:J
    .restart local v3       #userState:Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;
    .locals 7
    .parameter "printJobId"
    .parameter "appId"
    .parameter "userId"

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .local v2, resolvedAppId:I
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .local v3, resolvedUserId:I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v4

    .local v4, userState:Lcom/android/server/print/UserState;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    :try_start_1
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    .end local v0           #identity:J
    .end local v4           #userState:Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v0       #identity:J
    .restart local v4       #userState:Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getPrintJobInfos(II)Ljava/util/List;
    .locals 7
    .parameter "appId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .local v2, resolvedAppId:I
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .local v3, resolvedUserId:I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v4

    .local v4, userState:Lcom/android/server/print/UserState;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    :try_start_1
    invoke-virtual {v4, v2}, Lcom/android/server/print/UserState;->getPrintJobInfos(I)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    .end local v0           #identity:J
    .end local v4           #userState:Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v0       #identity:J
    .restart local v4       #userState:Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 9
    .parameter "printJobName"
    .parameter "adapter"
    .parameter "attributes"
    .parameter "packageName"
    .parameter "appId"
    .parameter "userId"

    .prologue
    invoke-direct {p0, p5}, Lcom/android/server/print/PrintManagerService;->resolveCallingAppEnforcingPermissions(I)I

    move-result v5

    .local v5, resolvedAppId:I
    invoke-direct {p0, p6}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v8

    .local v8, resolvedUserId:I
    invoke-direct {p0, p4}, Lcom/android/server/print/PrintManagerService;->resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, resolvedPackageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v0

    .local v0, userState:Lcom/android/server/print/UserState;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, identity:J
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/print/UserState;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    .end local v0           #userState:Lcom/android/server/print/UserState;
    .end local v6           #identity:J
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v0       #userState:Lcom/android/server/print/UserState;
    .restart local v6       #identity:J
    :catchall_1
    move-exception v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .locals 6
    .parameter "listener"
    .parameter "userId"

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .local v2, resolvedUserId:I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .local v3, userState:Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0           #identity:J
    .end local v3           #userState:Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0       #identity:J
    .restart local v3       #userState:Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;II)V
    .locals 7
    .parameter "printJobId"
    .parameter "appId"
    .parameter "userId"

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .local v2, resolvedAppId:I
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .local v3, resolvedUserId:I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v4

    .local v4, userState:Lcom/android/server/print/UserState;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    :try_start_1
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->restartPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0           #identity:J
    .end local v4           #userState:Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v0       #identity:J
    .restart local v4       #userState:Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V
    .locals 6
    .parameter "observer"
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, priorityList:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .local v2, resolvedUserId:I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .local v3, userState:Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    :try_start_1
    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/UserState;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0           #identity:J
    .end local v3           #userState:Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0       #identity:J
    .restart local v3       #userState:Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;I)V
    .locals 6
    .parameter "printerId"
    .parameter "userId"

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .local v2, resolvedUserId:I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .local v3, userState:Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->startPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0           #identity:J
    .end local v3           #userState:Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0       #identity:J
    .restart local v3       #userState:Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 6
    .parameter "observer"
    .parameter "userId"

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .local v2, resolvedUserId:I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .local v3, userState:Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0           #identity:J
    .end local v3           #userState:Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0       #identity:J
    .restart local v3       #userState:Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;I)V
    .locals 6
    .parameter "printerId"
    .parameter "userId"

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .local v2, resolvedUserId:I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .local v3, userState:Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->stopPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0           #identity:J
    .end local v3           #userState:Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0       #identity:J
    .restart local v3       #userState:Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public systemRuning()V
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/PrintManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/print/PrintManagerService$1;-><init>(Lcom/android/server/print/PrintManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public validatePrinters(Ljava/util/List;I)V
    .locals 6
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, printerIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .local v2, resolvedUserId:I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    move-result-object v3

    .local v3, userState:Lcom/android/server/print/UserState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->validatePrinters(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0           #identity:J
    .end local v3           #userState:Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0       #identity:J
    .restart local v3       #userState:Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
