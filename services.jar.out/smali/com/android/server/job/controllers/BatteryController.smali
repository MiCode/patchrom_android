.class public Lcom/android/server/job/controllers/BatteryController;
.super Lcom/android/server/job/controllers/StateController;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JobScheduler.Batt"

.field private static volatile sController:Lcom/android/server/job/controllers/BatteryController;

.field private static final sCreationLock:Ljava/lang/Object;


# instance fields
.field private mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

.field private mTrackedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/BatteryController;->sCreationLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V
    .locals 1
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    new-instance v0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;-><init>(Lcom/android/server/job/controllers/BatteryController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->startTracking()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/controllers/BatteryController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/BatteryController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingState()V

    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/BatteryController;
    .locals 3
    .param p0, "taskManagerService"    # Lcom/android/server/job/JobSchedulerService;

    .prologue
    sget-object v1, Lcom/android/server/job/controllers/BatteryController;->sCreationLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/BatteryController;->sController:Lcom/android/server/job/controllers/BatteryController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/job/controllers/BatteryController;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/BatteryController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/job/controllers/BatteryController;->sController:Lcom/android/server/job/controllers/BatteryController;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/job/controllers/BatteryController;->sController:Lcom/android/server/job/controllers/BatteryController;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getForTesting(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)Lcom/android/server/job/controllers/BatteryController;
    .locals 1
    .param p0, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {v0, p0, p1}, Lcom/android/server/job/controllers/BatteryController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    return-object v0
.end method

.method private maybeReportNewChargingState()V
    .locals 7

    .prologue
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v5}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v3

    .local v3, "stablePower":Z
    const/4 v2, 0x0

    .local v2, "reportChange":Z
    iget-object v6, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .local v4, "ts":Lcom/android/server/job/controllers/JobStatus;
    iget-object v5, v4, Lcom/android/server/job/controllers/JobStatus;->chargingConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    .local v1, "previous":Z
    if-eq v1, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .end local v1    # "previous":Z
    .end local v4    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v5}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    :cond_2
    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_3
    return-void

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method


# virtual methods
.method public dumpControllerState(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const-string v1, "Batt."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stable power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    return-object v0
.end method

.method public maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v0

    .local v0, "isOnStablePower":Z
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->chargingConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v2

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
