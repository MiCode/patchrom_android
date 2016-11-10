.class public final Landroid/os/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemClock"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native currentThreadTimeMicro()J
.end method

.method public static native currentThreadTimeMillis()J
.end method

.method public static native currentTimeMicro()J
.end method

.method public static native elapsedRealtime()J
.end method

.method public static native elapsedRealtimeNanos()J
.end method

.method public static setCurrentTimeMillis(J)Z
    .locals 6
    .param p0, "millis"    # J

    .prologue
    const/4 v3, 0x0

    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v2

    .local v2, "mgr":Landroid/app/IAlarmManager;
    if-nez v2, :cond_0

    :goto_0
    return v3

    :cond_0
    :try_start_0
    invoke-interface {v2, p0, p1}, Landroid/app/IAlarmManager;->setTime(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "SystemClock"

    const-string v5, "Unable to set RTC"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/SecurityException;
    const-string v4, "SystemClock"

    const-string v5, "Unable to set RTC"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static sleep(J)V
    .locals 10
    .param p0, "ms"    # J

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "start":J
    move-wide v0, p0

    .local v0, "duration":J
    const/4 v3, 0x0

    .local v3, "interrupted":Z
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    add-long v6, v4, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v6, v8

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static native uptimeMillis()J
.end method
