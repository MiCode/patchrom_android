.class public Lcom/android/server/usage/UsageStatsService;
.super Lcom/android/server/SystemService;
.source "UsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsService$LocalService;,
        Lcom/android/server/usage/UsageStatsService$BinderService;,
        Lcom/android/server/usage/UsageStatsService$SettingsObserver;,
        Lcom/android/server/usage/UsageStatsService$H;,
        Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;,
        Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;
    }
.end annotation


# static fields
.field static final COMPRESS_TIME:Z = false

.field static final DEBUG:Z = false

.field private static final FLUSH_INTERVAL:J = 0x124f80L

.field static final MSG_CHECK_IDLE_STATES:I = 0x5

.field static final MSG_CHECK_PAROLE_TIMEOUT:I = 0x6

.field static final MSG_FLUSH_TO_DISK:I = 0x1

.field static final MSG_FORCE_IDLE_STATE:I = 0x4

.field static final MSG_INFORM_LISTENERS:I = 0x3

.field static final MSG_PAROLE_END_TIMEOUT:I = 0x7

.field static final MSG_PAROLE_STATE_CHANGED:I = 0x9

.field static final MSG_REMOVE_USER:I = 0x2

.field static final MSG_REPORT_CONTENT_PROVIDER_USAGE:I = 0x8

.field static final MSG_REPORT_EVENT:I = 0x0

.field private static final ONE_MINUTE:J = 0xea60L

.field static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final TEN_SECONDS:J = 0x2710L

.field private static final TIME_CHANGE_THRESHOLD_MILLIS:J = 0x7d0L

.field private static final TWENTY_MINUTES:J = 0x124f80L


# instance fields
.field mAppIdleDurationMillis:J

.field mAppIdleEnabled:Z

.field private mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mAppIdleParoleDurationMillis:J

.field mAppIdleParoleIntervalMillis:J

.field mAppIdleParoled:Z

.field mAppIdleWallclockThresholdMillis:J

.field mAppOps:Landroid/app/AppOpsManager;

.field mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mCheckIdleIntervalMillis:J

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mHandler:Landroid/os/Handler;

.field private mLastAppIdleParoledTime:J

.field private final mLock:Ljava/lang/Object;

.field private mPackageAccessListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field mRealTimeSnapshot:J

.field private mScreenOn:Z

.field mScreenOnSystemTimeSnapshot:J

.field mScreenOnTime:J

.field mSystemTimeSnapshot:J

.field private mUsageStatsDir:Ljava/io/File;

.field mUserManager:Landroid/os/UserManager;

.field private final mUserState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/usage/UserUsageStatsService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/usage/AppIdleHistory;

    invoke-direct {v0}, Lcom/android/server/usage/AppIdleHistory;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/usage/UsageStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$1;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;

    .prologue
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private checkAndGetTimeLocked()J
    .locals 14

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, "actualSystemTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .local v8, "actualRealtime":J
    iget-wide v10, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long v10, v8, v10

    iget-wide v12, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long v2, v10, v12

    .local v2, "expectedSystemTime":J
    const/4 v6, 0x0

    .local v6, "resetBeginIdleTime":Z
    sub-long v10, v4, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x7d0

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    sub-long v10, v4, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleDurationMillis:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    iput-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnSystemTimeSnapshot:J

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J

    const/4 v6, 0x1

    :cond_0
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v7

    .local v7, "userCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_1

    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserUsageStatsService;

    .local v1, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->onTimeChanged(JJZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_1
    iput-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    iput-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .end local v0    # "i":I
    .end local v7    # "userCount":I
    :cond_2
    return-wide v4
.end method

.method private cleanUpRemovedUsersLocked()V
    .locals 10

    .prologue
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "There can\'t be no users"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .local v3, "toDelete":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .local v1, "fileNames":[Ljava/lang/String;
    if-nez v1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "userCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v0

    .local v0, "deleteCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .locals 6
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .prologue
    const-wide/16 v0, 0x0

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    return-void
.end method

.method private static deleteRecursively(Ljava/io/File;)V
    .locals 8
    .param p0, "f"    # Ljava/io/File;

    .prologue
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .local v4, "subFile":Ljava/io/File;
    invoke-static {v4}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "subFile":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "UsageStatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private flushToDiskLocked()V
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "userCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserUsageStatsService;

    .local v1, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v1}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private getScreenOnTimeFile()Ljava/io/File;
    .locals 3

    .prologue
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    const-string v2, "0/screen_on_time"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getScreenOnTimeLocked(J)J
    .locals 5
    .param p1, "now"    # J

    .prologue
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnSystemTimeSnapshot:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J

    goto :goto_0
.end method

.method private getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "currentTimeMillis"    # J

    .prologue
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    .local v0, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/usage/UserUsageStatsService;

    .end local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/server/usage/UserUsageStatsService;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V

    .restart local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-direct {p0, p2, p3}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeLocked(J)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->init(JJ)V

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private isActiveDeviceAdmin(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v6, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v0

    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v0, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private isActiveNetworkScorer(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "network_score"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .local v0, "nsm":Landroid/net/NetworkScoreManager;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAppIdleFiltered(Ljava/lang/String;ILcom/android/server/usage/UserUsageStatsService;JJ)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "userService"    # Lcom/android/server/usage/UserUsageStatsService;
    .param p4, "timeNow"    # J
    .param p6, "screenOnTime"    # J

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v1, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->isCarrierApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->isActiveNetworkScorer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, p1, p2}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsService;->isAppIdleUnfiltered(Ljava/lang/String;Lcom/android/server/usage/UserUsageStatsService;JJ)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private isAppIdleUnfiltered(Ljava/lang/String;Lcom/android/server/usage/UserUsageStatsService;JJ)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userService"    # Lcom/android/server/usage/UserUsageStatsService;
    .param p3, "timeNow"    # J
    .param p5, "screenOnTime"    # J

    .prologue
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/server/usage/UserUsageStatsService;->getBeginIdleTime(Ljava/lang/String;)J

    move-result-wide v2

    .local v2, "beginIdleTime":J
    invoke-virtual {p2, p1}, Lcom/android/server/usage/UserUsageStatsService;->getSystemLastUsedTime(Ljava/lang/String;)J

    move-result-wide v4

    .local v4, "lastUsedTime":J
    move-object v1, p0

    move-wide/from16 v6, p5

    move-wide v8, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/usage/UsageStatsService;->hasPassedIdleTimeoutLocked(JJJJ)Z

    move-result v0

    monitor-exit v10

    return v0

    .end local v2    # "beginIdleTime":J
    .end local v4    # "lastUsedTime":J
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isCarrierApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyBatteryStats(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .local v0, "uid":I
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 v2, 0xf

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V

    .end local v0    # "uid":I
    :goto_0
    return-void

    .restart local v0    # "uid":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 v2, 0x10

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "uid":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private postNextParoleTimeout()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    add-long/2addr v2, v4

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v4

    sub-long v0, v2, v4

    .local v0, "timeLeft":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xa

    div-long v4, v0, v4

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private postParoleEndTimeout()V
    .locals 4

    .prologue
    const/4 v1, 0x7

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleDurationMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private postParoleStateChanged()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private readScreenOnTimeLocked()J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .local v2, "screenOnTime":J
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v1

    .local v1, "screenOnTimeFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v0, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-wide v2

    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/android/server/usage/UsageStatsService;->writeScreenOnTimeLocked(J)V

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private static validRange(JJJ)Z
    .locals 2
    .param p0, "currentTime"    # J
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .prologue
    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    cmp-long v0, p2, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeScreenOnTimeLocked(J)V
    .locals 5
    .param p1, "screenOnTime"    # J

    .prologue
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .local v2, "screenOnTimeFile":Landroid/util/AtomicFile;
    const/4 v0, 0x0

    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method


# virtual methods
.method addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .prologue
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method checkIdleStates(I)V
    .locals 23
    .param p1, "checkUserId"    # I

    .prologue
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .local v21, "userIds":[I
    :goto_1
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move-object/from16 v0, v21

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_4

    aget v4, v21, v16

    .local v4, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v10, 0x2200

    invoke-virtual {v2, v10, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v19

    .local v19, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v6

    .local v6, "timeNow":J
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeLocked(J)J

    move-result-wide v8

    .local v8, "screenOnTime":J
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v5

    .local v5, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v18

    .local v18, "packageCount":I
    const/16 v17, 0x0

    .local v17, "p":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .local v3, "packageName":Ljava/lang/String;
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;ILcom/android/server/usage/UserUsageStatsService;JJ)Z

    move-result v13

    .local v13, "isIdle":Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x3

    if-eqz v13, :cond_2

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v11, v12, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v11, v3

    move v12, v4

    move-wide v14, v6

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/usage/AppIdleHistory;->addEntry(Ljava/lang/String;IZJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "userId":I
    .end local v5    # "service":Lcom/android/server/usage/UserUsageStatsService;
    .end local v6    # "timeNow":J
    .end local v8    # "screenOnTime":J
    .end local v13    # "isIdle":Z
    .end local v16    # "i":I
    .end local v17    # "p":I
    .end local v18    # "packageCount":I
    .end local v19    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v21    # "userIds":[I
    :cond_1
    const/4 v2, 0x1

    :try_start_2
    new-array v0, v2, [I

    move-object/from16 v21, v0

    const/4 v2, 0x0

    aput p1, v21, v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v21    # "userIds":[I
    goto :goto_1

    .end local v21    # "userIds":[I
    :catch_0
    move-exception v20

    .local v20, "re":Landroid/os/RemoteException;
    goto/16 :goto_0

    .end local v20    # "re":Landroid/os/RemoteException;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "userId":I
    .restart local v5    # "service":Lcom/android/server/usage/UserUsageStatsService;
    .restart local v6    # "timeNow":J
    .restart local v8    # "screenOnTime":J
    .restart local v13    # "isIdle":Z
    .restart local v16    # "i":I
    .restart local v17    # "p":I
    .restart local v18    # "packageCount":I
    .restart local v19    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v21    # "userIds":[I
    :cond_2
    const/4 v2, 0x0

    goto :goto_4

    .end local v3    # "packageName":Ljava/lang/String;
    .end local v13    # "isIdle":Z
    :cond_3
    :try_start_3
    monitor-exit v22

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .end local v5    # "service":Lcom/android/server/usage/UserUsageStatsService;
    .end local v6    # "timeNow":J
    .end local v8    # "screenOnTime":J
    .end local v17    # "p":I
    .end local v18    # "packageCount":I
    :catchall_0
    move-exception v2

    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .end local v4    # "userId":I
    .end local v19    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x5

    const/4 v12, 0x0

    move/from16 v0, p1

    invoke-virtual {v10, v11, v0, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/usage/UsageStatsService;->mCheckIdleIntervalMillis:J

    invoke-virtual {v2, v10, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method checkParoleTimeout()V
    .locals 8

    .prologue
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    sub-long v0, v4, v6

    .local v0, "timeSinceLastParole":J
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postParoleEndTimeout()V

    .end local v0    # "timeSinceLastParole":J
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .restart local v0    # "timeSinceLastParole":J
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postNextParoleTimeout()V

    goto :goto_0

    .end local v0    # "timeSinceLastParole":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeLocked(J)J

    move-result-wide v4

    .local v4, "screenOnTime":J
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v6, "  "

    invoke-direct {v2, p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .local v2, "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .local v0, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "userCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    const-string v6, "user"

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const-string v6, "--checkin"

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v6, v2, v4, v5}, Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;J)V

    :cond_0
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v6, v2, v4, v5}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;J)V

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    array-length v6, p1

    if-lez v6, :cond_0

    const-string v6, "history"

    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v6, v2, v8}, Lcom/android/server/usage/AppIdleHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;I)V

    goto :goto_1

    .end local v0    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v3    # "userCount":I
    .end local v4    # "screenOnTime":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v0    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v2    # "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v3    # "userCount":I
    .restart local v4    # "screenOnTime":J
    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screen On Timebase:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v6, "Settings:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "  mAppIdleDurationMillis="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleDurationMillis:J

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v6, "  mAppIdleWallclockThresholdMillis="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleWallclockThresholdMillis:J

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v6, "  mCheckIdleIntervalMillis="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mCheckIdleIntervalMillis:J

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v6, "  mAppIdleParoleIntervalMillis="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v6, "  mAppIdleParoleDurationMillis="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleDurationMillis:J

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v6, "mAppIdleEnabled="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mAppIdleParoled="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mScreenOn="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOn:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Z)V

    const-string v6, "mLastAppIdleParoledTime="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v6, "mScreenOnTime="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v6, "mScreenOnSystemTimeSnapshot="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnSystemTimeSnapshot:J

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method flushToDisk()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method forceIdleState(Ljava/lang/String;IZ)V
    .locals 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v12

    .local v12, "timeNow":J
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeLocked(J)J

    move-result-wide v10

    .local v10, "screenOnTime":J
    if-eqz p3, :cond_2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleDurationMillis:J

    :goto_0
    sub-long v14, v10, v14

    const-wide/16 v16, 0x1388

    sub-long v20, v14, v16

    .local v20, "deviceUsageTime":J
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v12, v13}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v22

    .local v22, "service":Lcom/android/server/usage/UserUsageStatsService;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->getBeginIdleTime(Ljava/lang/String;)J

    move-result-wide v6

    .local v6, "beginIdleTime":J
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->getSystemLastUsedTime(Ljava/lang/String;)J

    move-result-wide v8

    .local v8, "lastUsedTime":J
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/usage/UsageStatsService;->hasPassedIdleTimeoutLocked(JJJJ)Z

    move-result v4

    .local v4, "previouslyIdle":Z
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->setBeginIdleTime(Ljava/lang/String;J)V

    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleWallclockThresholdMillis:J

    :goto_1
    sub-long v14, v12, v14

    const-wide/16 v16, 0x1388

    sub-long v14, v14, v16

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/usage/UserUsageStatsService;->setSystemLastUsedTime(Ljava/lang/String;J)V

    move/from16 v0, p3

    if-eq v4, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x3

    if-eqz p3, :cond_4

    const/4 v5, 0x1

    :goto_2
    move/from16 v0, v16

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v15, v0, v1, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-nez p3, :cond_0

    invoke-direct/range {p0 .. p3}, Lcom/android/server/usage/UsageStatsService;->notifyBatteryStats(Ljava/lang/String;IZ)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    move-wide/from16 v18, v12

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/usage/AppIdleHistory;->addEntry(Ljava/lang/String;IZJ)V

    :cond_1
    monitor-exit v23

    return-void

    .end local v4    # "previouslyIdle":Z
    .end local v6    # "beginIdleTime":J
    .end local v8    # "lastUsedTime":J
    .end local v20    # "deviceUsageTime":J
    .end local v22    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_2
    const-wide/16 v14, 0x0

    goto :goto_0

    .restart local v4    # "previouslyIdle":Z
    .restart local v6    # "beginIdleTime":J
    .restart local v8    # "lastUsedTime":J
    .restart local v20    # "deviceUsageTime":J
    .restart local v22    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_3
    const-wide/16 v14, 0x0

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .end local v4    # "previouslyIdle":Z
    .end local v6    # "beginIdleTime":J
    .end local v8    # "lastUsedTime":J
    .end local v10    # "screenOnTime":J
    .end local v12    # "timeNow":J
    .end local v20    # "deviceUsageTime":J
    .end local v22    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v5

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method getIdleUidsForUser(I)[I
    .locals 21
    .param p1, "userId"    # I

    .prologue
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    new-array v0, v2, [I

    move-object/from16 v17, v0

    :cond_0
    :goto_0
    return-object v17

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v6

    .local v6, "timeNow":J
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v5

    .local v5, "userService":Lcom/android/server/usage/UserUsageStatsService;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeLocked(J)J

    move-result-wide v8

    .local v8, "screenOnTime":J
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-interface {v2, v3, v0}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v18

    .local v18, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v18, :cond_2

    const/4 v2, 0x0

    new-array v0, v2, [I

    move-object/from16 v17, v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v5    # "userService":Lcom/android/server/usage/UserUsageStatsService;
    .end local v6    # "timeNow":J
    .end local v8    # "screenOnTime":J
    .end local v18    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v5    # "userService":Lcom/android/server/usage/UserUsageStatsService;
    .restart local v6    # "timeNow":J
    .restart local v8    # "screenOnTime":J
    .restart local v18    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :cond_2
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v11

    .local v11, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v19, Landroid/util/SparseIntArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseIntArray;-><init>()V

    .local v19, "uidStates":Landroid/util/SparseIntArray;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    .local v13, "i":I
    :goto_1
    if-ltz v13, :cond_6

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;ILcom/android/server/usage/UserUsageStatsService;JJ)Z

    move-result v14

    .local v14, "idle":Z
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v15

    .local v15, "index":I
    if-gez v15, :cond_4

    iget v3, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v14, :cond_3

    const/high16 v2, 0x10000

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_3
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v13    # "i":I
    .end local v14    # "idle":Z
    .end local v15    # "index":I
    .end local v18    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .end local v19    # "uidStates":Landroid/util/SparseIntArray;
    :catch_0
    move-exception v12

    .local v12, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    new-array v0, v2, [I

    move-object/from16 v17, v0

    goto :goto_0

    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v13    # "i":I
    .restart local v14    # "idle":Z
    .restart local v15    # "index":I
    .restart local v18    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v19    # "uidStates":Landroid/util/SparseIntArray;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v20

    .local v20, "value":I
    add-int/lit8 v3, v20, 0x1

    if-eqz v14, :cond_5

    const/high16 v2, 0x10000

    :goto_4
    add-int/2addr v2, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "idle":Z
    .end local v15    # "index":I
    .end local v20    # "value":I
    :cond_6
    const/16 v16, 0x0

    .local v16, "numIdle":I
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    :goto_5
    if-ltz v13, :cond_8

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v20

    .restart local v20    # "value":I
    move/from16 v0, v20

    and-int/lit16 v2, v0, 0x7fff

    shr-int/lit8 v3, v20, 0x10

    if-ne v2, v3, :cond_7

    add-int/lit8 v16, v16, 0x1

    :cond_7
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .end local v20    # "value":I
    :cond_8
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .local v17, "res":[I
    const/16 v16, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    :goto_6
    if-ltz v13, :cond_0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v20

    .restart local v20    # "value":I
    move/from16 v0, v20

    and-int/lit16 v2, v0, 0x7fff

    shr-int/lit8 v3, v20, 0x10

    if-ne v2, v3, :cond_9

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    aput v2, v17, v16

    add-int/lit8 v16, v16, 0x1

    :cond_9
    add-int/lit8 v13, v13, -0x1

    goto :goto_6
.end method

.method hasPassedIdleTimeoutLocked(JJJJ)Z
    .locals 3
    .param p1, "beginIdleTime"    # J
    .param p3, "lastUsedTime"    # J
    .param p5, "screenOnTime"    # J
    .param p7, "currentTime"    # J

    .prologue
    iget-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleDurationMillis:J

    sub-long v0, p5, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleWallclockThresholdMillis:J

    sub-long v0, p7, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method informListeners(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isIdle"    # Z

    .prologue
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .local v1, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    invoke-virtual {v1, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onAppIdleStateChanged(Ljava/lang/String;IZ)V

    goto :goto_0

    .end local v1    # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    :cond_0
    return-void
.end method

.method informParoleStateChanged()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .local v1, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    iget-boolean v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    goto :goto_0

    .end local v1    # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    :cond_0
    return-void
.end method

.method isAppIdleFiltered(Ljava/lang/String;IJ)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "timeNow"    # J

    .prologue
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const-wide/16 v4, -0x1

    cmp-long v0, p3, v4

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide p3

    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v3

    .local v3, "userService":Lcom/android/server/usage/UserUsageStatsService;
    invoke-direct {p0, p3, p4}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeLocked(J)J

    move-result-wide v6

    .local v6, "screenOnTime":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;ILcom/android/server/usage/UserUsageStatsService;JJ)Z

    move-result v0

    return v0

    .end local v3    # "userService":Lcom/android/server/usage/UserUsageStatsService;
    .end local v6    # "screenOnTime":J
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method isAppIdleFilteredOrParoled(Ljava/lang/String;IJ)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "timeNow"    # J

    .prologue
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .prologue
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_1

    new-instance v0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Handler;)V

    .local v0, "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->registerObserver()V

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->updateSettings()V

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManager;

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const-string v1, "deviceidle"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const-string v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnSystemTimeSnapshot:J

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->readScreenOnTimeLocked()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->updateDisplayLocked()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .end local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :cond_1
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/BatteryManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    invoke-virtual {v1}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V

    goto :goto_0
.end method

.method onDeviceIdleModeChanged()V
    .locals 10

    .prologue
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .local v0, "deviceIdle":Z
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    sub-long v2, v6, v8

    .local v2, "timeSinceLastParole":J
    if-nez v0, :cond_1

    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postNextParoleTimeout()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V

    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    :cond_1
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V

    goto :goto_0

    .end local v2    # "timeSinceLastParole":J
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Lcom/android/server/usage/UsageStatsService$H;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "system"

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v7, "systemDataDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v1, "usagestats"

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usage stats directory does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v3, "userActions":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleEnabled:Z

    if-eqz v0, :cond_1

    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.os.action.CHARGING"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v6, "deviceStates":Landroid/content/IntentFilter;
    const-string v0, "android.os.action.DISCHARGING"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v6    # "deviceStates":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v1, Lcom/android/server/usage/UsageStatsService$LocalService;

    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/UsageStatsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string v0, "usagestats"

    new-instance v1, Lcom/android/server/usage/UsageStatsService$BinderService;

    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/UsageStatsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onStatsUpdated()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x124f80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method postCheckIdleStates(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method queryConfigurationStats(IIJJ)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    .local v0, "timeNow":J
    move-wide v2, p3

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    monitor-exit v8

    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v2

    .local v2, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryConfigurationStats(IJJ)Ljava/util/List;

    move-result-object v3

    monitor-exit v8

    goto :goto_0

    .end local v0    # "timeNow":J
    .end local v2    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v3

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method queryEvents(IJJ)Landroid/app/usage/UsageEvents;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .prologue
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    .local v0, "timeNow":J
    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v7

    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v6

    .local v6, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v6, p2, p3, p4, p5}, Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object v2

    monitor-exit v7

    goto :goto_0

    .end local v0    # "timeNow":J
    .end local v6    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method queryUsageStats(IIJJ)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    .local v0, "timeNow":J
    move-wide v2, p3

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    monitor-exit v8

    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v2

    .local v2, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v3

    monitor-exit v8

    goto :goto_0

    .end local v0    # "timeNow":J
    .end local v2    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v3

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method removeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .prologue
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and all data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "providerPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    invoke-static {p1, p3}, Landroid/content/ContentResolver;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .local v4, "packages":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .local v3, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v3, v7, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .local v5, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_0

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-nez v6, :cond_1

    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v3, p3, v6}, Lcom/android/server/usage/UsageStatsService;->forceIdleState(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    goto :goto_1

    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .locals 20
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "userId"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v10

    .local v10, "timeNow":J
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/usage/UsageStatsService;->getScreenOnTimeLocked(J)J

    move-result-wide v8

    .local v8, "screenOnTime":J
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v10, v11}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v18

    .local v18, "service":Lcom/android/server/usage/UserUsageStatsService;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/server/usage/UserUsageStatsService;->getBeginIdleTime(Ljava/lang/String;)J

    move-result-wide v4

    .local v4, "beginIdleTime":J
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/server/usage/UserUsageStatsService;->getSystemLastUsedTime(Ljava/lang/String;)J

    move-result-wide v6

    .local v6, "lastUsedTime":J
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/usage/UsageStatsService;->hasPassedIdleTimeoutLocked(JJJJ)Z

    move-result v2

    .local v2, "previouslyIdle":Z
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/usage/UserUsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;J)V

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v12, 0x1

    if-eq v3, v12, :cond_0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v12, 0x2

    if-eq v3, v12, :cond_0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v12, 0x6

    if-eq v3, v12, :cond_0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v12, 0x7

    if-ne v3, v12, :cond_1

    :cond_0
    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move/from16 v0, p2

    invoke-virtual {v12, v13, v0, v14, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1, v12}, Lcom/android/server/usage/UsageStatsService;->notifyBatteryStats(Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v15, 0x0

    move/from16 v14, p2

    move-wide/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/usage/AppIdleHistory;->addEntry(Ljava/lang/String;IZJ)V

    :cond_1
    monitor-exit v19

    return-void

    .end local v2    # "previouslyIdle":Z
    .end local v4    # "beginIdleTime":J
    .end local v6    # "lastUsedTime":J
    .end local v8    # "screenOnTime":J
    .end local v10    # "timeNow":J
    .end local v18    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v3

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method setAppIdle(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z
    .param p3, "userId"    # I

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, p3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method setAppIdleParoled(Z)V
    .locals 4
    .param p1, "paroled"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mLastAppIdleParoledTime:J

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postNextParoleTimeout()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->postParoleStateChanged()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method shutdown()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateDisplayLocked()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .local v2, "screenOn":Z
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOn:Z

    if-ne v2, v3, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOn:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "now":J
    iget-boolean v3, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOn:Z

    if-eqz v3, :cond_2

    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnSystemTimeSnapshot:J

    goto :goto_0

    :cond_2
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J

    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnSystemTimeSnapshot:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J

    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mScreenOnTime:J

    invoke-direct {p0, v4, v5}, Lcom/android/server/usage/UsageStatsService;->writeScreenOnTimeLocked(J)V

    goto :goto_0
.end method
