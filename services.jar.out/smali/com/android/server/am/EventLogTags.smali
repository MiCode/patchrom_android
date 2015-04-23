.class public Lcom/android/server/am/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final AM_ACTIVITY_FULLY_DRAWN_TIME:I = 0x755a

.field public static final AM_ACTIVITY_LAUNCH_TIME:I = 0x7539

.field public static final AM_ANR:I = 0x7538

.field public static final AM_BROADCAST_DISCARD_APP:I = 0x7549

.field public static final AM_BROADCAST_DISCARD_FILTER:I = 0x7548

.field public static final AM_CRASH:I = 0x7557

.field public static final AM_CREATE_ACTIVITY:I = 0x7535

.field public static final AM_CREATE_SERVICE:I = 0x754e

.field public static final AM_CREATE_TASK:I = 0x7534

.field public static final AM_DESTROY_ACTIVITY:I = 0x7542

.field public static final AM_DESTROY_SERVICE:I = 0x754f

.field public static final AM_DROP_PROCESS:I = 0x7551

.field public static final AM_FAILED_TO_PAUSE:I = 0x753c

.field public static final AM_FINISH_ACTIVITY:I = 0x7531

.field public static final AM_FOCUSED_ACTIVITY:I = 0x755b

.field public static final AM_HOME_STACK_MOVED:I = 0x755c

.field public static final AM_KILL:I = 0x7547

.field public static final AM_LOW_MEMORY:I = 0x7541

.field public static final AM_MEMINFO:I = 0x755e

.field public static final AM_NEW_INTENT:I = 0x7533

.field public static final AM_ON_PAUSED_CALLED:I = 0x7545

.field public static final AM_ON_RESUME_CALLED:I = 0x7546

.field public static final AM_PAUSE_ACTIVITY:I = 0x753d

.field public static final AM_PRE_BOOT:I = 0x755d

.field public static final AM_PROCESS_CRASHED_TOO_MUCH:I = 0x7550

.field public static final AM_PROCESS_START_TIMEOUT:I = 0x7555

.field public static final AM_PROC_BAD:I = 0x753f

.field public static final AM_PROC_BOUND:I = 0x753a

.field public static final AM_PROC_DIED:I = 0x753b

.field public static final AM_PROC_GOOD:I = 0x7540

.field public static final AM_PROC_START:I = 0x753e

.field public static final AM_PROVIDER_LOST_PROCESS:I = 0x7554

.field public static final AM_PSS:I = 0x755f

.field public static final AM_RELAUNCH_ACTIVITY:I = 0x7544

.field public static final AM_RELAUNCH_RESUME_ACTIVITY:I = 0x7543

.field public static final AM_RESTART_ACTIVITY:I = 0x7536

.field public static final AM_RESUME_ACTIVITY:I = 0x7537

.field public static final AM_SCHEDULE_SERVICE_RESTART:I = 0x7553

.field public static final AM_SERVICE_CRASHED_TOO_MUCH:I = 0x7552

.field public static final AM_SWITCH_USER:I = 0x7559

.field public static final AM_TASK_TO_FRONT:I = 0x7532

.field public static final AM_WTF:I = 0x7558

.field public static final BOOT_PROGRESS_AMS_READY:I = 0xbe0

.field public static final BOOT_PROGRESS_ENABLE_SCREEN:I = 0xbea

.field public static final CONFIGURATION_CHANGED:I = 0xa9f

.field public static final CPU:I = 0xaa1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeAmActivityFullyDrawnTime(IILjava/lang/String;J)V
    .locals 5
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    const/16 v0, 0x755a

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmActivityLaunchTime(IILjava/lang/String;J)V
    .locals 5
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    const/16 v0, 0x7539

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmAnr(IILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x7538

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmBroadcastDiscardApp(IILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "broadcast"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "receiverNumber"    # I
    .param p4, "app"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x7549

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmBroadcastDiscardFilter(IILjava/lang/String;II)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "broadcast"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "receiverNumber"    # I
    .param p4, "broadcastfilter"    # I

    .prologue
    const/16 v0, 0x7548

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmCrash(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "exception"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "file"    # Ljava/lang/String;
    .param p7, "line"    # I

    .prologue
    const/16 v0, 0x7557

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmCreateActivity(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "mimeType"    # Ljava/lang/String;
    .param p6, "uri"    # Ljava/lang/String;
    .param p7, "flags"    # I

    .prologue
    const/16 v0, 0x7535

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmCreateService(IILjava/lang/String;II)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "serviceRecord"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    const/16 v0, 0x754e

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmCreateTask(II)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "taskId"    # I

    .prologue
    const/16 v0, 0x7534

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmDestroyActivity(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x7542

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmDestroyService(III)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "serviceRecord"    # I
    .param p2, "pid"    # I

    .prologue
    const/16 v0, 0x754f

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmDropProcess(I)V
    .locals 1
    .param p0, "pid"    # I

    .prologue
    const/16 v0, 0x7551

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method public static writeAmFailedToPause(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "wantingToPause"    # Ljava/lang/String;
    .param p3, "currentlyPausing"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x753c

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmFinishActivity(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x7531

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmFocusedActivity(ILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x755b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmHomeStackMoved(IIIILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "toFront"    # I
    .param p2, "topStackId"    # I
    .param p3, "focusedStackId"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x755c

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmKill(IILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "oomadj"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x7547

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmLowMemory(I)V
    .locals 1
    .param p0, "numProcesses"    # I

    .prologue
    const/16 v0, 0x7541

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method public static writeAmMeminfo(JJJJJ)V
    .locals 4
    .param p0, "cachedkb"    # J
    .param p2, "freekb"    # J
    .param p4, "zramkb"    # J
    .param p6, "kernelkb"    # J
    .param p8, "nativekb"    # J

    .prologue
    const/16 v0, 0x755e

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmNewIntent(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "mimeType"    # Ljava/lang/String;
    .param p6, "uri"    # Ljava/lang/String;
    .param p7, "flags"    # I

    .prologue
    const/16 v0, 0x7533

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmOnPausedCalled(ILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x7545

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmOnResumeCalled(ILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x7546

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmPauseActivity(IILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x753d

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmPreBoot(ILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "package_"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x755d

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmProcBad(IILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x753f

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmProcBound(IILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x753a

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmProcDied(IILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x753b

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmProcGood(IILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x7540

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmProcStart(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "component"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x753e

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmProcessCrashedTooMuch(ILjava/lang/String;I)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    const/16 v0, 0x7550

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmProcessStartTimeout(IIILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x7555

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x7554

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmPss(IILjava/lang/String;JJ)V
    .locals 5
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "psskb"    # J
    .param p5, "usskb"    # J

    .prologue
    const/16 v0, 0x755f

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmRelaunchActivity(IIILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x7544

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmRelaunchResumeActivity(IIILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x7543

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmRestartActivity(IIILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x7536

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmResumeActivity(IIILjava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "token"    # I
    .param p2, "taskId"    # I
    .param p3, "componentName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x7537

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmScheduleServiceRestart(ILjava/lang/String;J)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    const/16 v0, 0x7553

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmServiceCrashedTooMuch(IILjava/lang/String;I)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "crashCount"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .prologue
    const/16 v0, 0x7552

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmSwitchUser(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    const/16 v0, 0x7559

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method public static writeAmTaskToFront(II)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "task"    # I

    .prologue
    const/16 v0, 0x7532

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeAmWtf(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x7558

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeBootProgressAmsReady(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    const/16 v0, 0xbe0

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    return-void
.end method

.method public static writeBootProgressEnableScreen(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    const/16 v0, 0xbea

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    return-void
.end method

.method public static writeConfigurationChanged(I)V
    .locals 1
    .param p0, "configMask"    # I

    .prologue
    const/16 v0, 0xa9f

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method public static writeCpu(IIIIII)V
    .locals 4
    .param p0, "total"    # I
    .param p1, "user"    # I
    .param p2, "system"    # I
    .param p3, "iowait"    # I
    .param p4, "irq"    # I
    .param p5, "softirq"    # I

    .prologue
    const/16 v0, 0xaa1

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method
