.class public Lcom/android/server/am/AppTimeTracker;
.super Ljava/lang/Object;
.source "AppTimeTracker.java"


# instance fields
.field private final mPackageTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/MutableLong;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/app/PendingIntent;

.field private mStartedPackage:Ljava/lang/String;

.field private mStartedPackageTime:Landroid/util/MutableLong;

.field private mStartedTime:J

.field private mTotalTime:J


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/AppTimeTracker;->stop()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "extras":Landroid/os/Bundle;
    const-string v4, "android.activity.usage_time"

    iget-wide v6, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "pkgs":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/MutableLong;

    iget-wide v6, v5, Landroid/util/MutableLong;->value:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const-string v4, "android.usage_time_packages"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "fillinIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "details"    # Z

    .prologue
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mReceiver="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTotalTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mPackageTime:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/MutableLong;

    iget-wide v2, v1, Landroid/util/MutableLong;->value:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mStartedTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    invoke-static {v2, v3, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mStartedPackage="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "details"    # Z

    .prologue
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "AppTimeTracker #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/am/AppTimeTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    iput-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    sub-long v0, v2, v4

    .local v0, "elapsedTime":J
    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    iget-wide v6, v4, Landroid/util/MutableLong;->value:J

    add-long/2addr v6, v0

    iput-wide v6, v4, Landroid/util/MutableLong;->value:J

    iget-wide v4, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    .end local v0    # "elapsedTime":J
    :cond_1
    iput-object p1, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/MutableLong;

    iput-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    if-nez v4, :cond_2

    new-instance v4, Landroid/util/MutableLong;

    invoke-direct {v4, v8, v9}, Landroid/util/MutableLong;-><init>(J)V

    iput-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    invoke-virtual {v4, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    sub-long v0, v2, v4

    .local v0, "elapsedTime":J
    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    iget-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    iget-wide v4, v2, Landroid/util/MutableLong;->value:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Landroid/util/MutableLong;->value:J

    :cond_0
    iput-object v6, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    .end local v0    # "elapsedTime":J
    :cond_1
    return-void
.end method
