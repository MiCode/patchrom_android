.class public Lcom/android/server/pm/BackgroundDexOptService;
.super Landroid/app/job/JobService;
.source "BackgroundDexOptService.java"


# static fields
.field static final BACKGROUND_DEXOPT_JOB:I = 0x320

.field static final RETRY_LATENCY:J = 0xdbba00L

.field static final TAG:Ljava/lang/String; = "BackgroundDexOptService"

.field private static sDexoptServiceName:Landroid/content/ComponentName;

.field static final sFailedPackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static schedule(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minLatency"    # J

    .prologue
    const/4 v5, 0x1

    const-string v2, "jobscheduler"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .local v1, "js":Landroid/app/job/JobScheduler;
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const/16 v3, 0x320

    sget-object v4, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v2, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .local v0, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 8
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    const-string v1, "BackgroundDexOptService"

    const-string v2, "onIdleStart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageManagerService;

    .local v4, "pm":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/32 v6, 0xdbba00

    invoke-static {p0, v6, v7}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->getPackagesThatNeedDexOpt()Landroid/util/ArraySet;

    move-result-object v3

    .local v3, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    move-object v5, p1

    .local v5, "jobParams":Landroid/app/job/JobParameters;
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$1;

    const-string v2, "BackgroundDexOptService_DexOpter"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/BackgroundDexOptService$1;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$1;->start()V

    move v0, v6

    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v2, 0x0

    const-string v0, "BackgroundDexOptService"

    const-string v1, "onIdleStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v2
.end method
