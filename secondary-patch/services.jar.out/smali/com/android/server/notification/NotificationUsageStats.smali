.class public Lcom/android/server/notification/NotificationUsageStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;,
        Lcom/android/server/notification/NotificationUsageStats$Aggregate;,
        Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;,
        Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEVICE_GLOBAL_STATS:Ljava/lang/String; = "__global"

.field private static final EMIT_PERIOD:J = 0xdbba00L

.field private static final EMPTY_AGGREGATED_STATS:[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

.field private static final ENABLE_AGGREGATED_IN_MEMORY_STATS:Z = true

.field private static final ENABLE_SQLITE_LOG:Z = true

.field public static final FOUR_HOURS:I = 0xdbba00

.field private static final MSG_EMIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NotificationUsageStats"

.field public static final TEN_SECONDS:I = 0x2710


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastEmitTime:J

.field private final mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatsArrays:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<[",
            "Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    sput-object v0, Lcom/android/server/notification/NotificationUsageStats;->EMPTY_AGGREGATED_STATS:[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J

    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-direct {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$1;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationUsageStats$1;-><init>(Lcom/android/server/notification/NotificationUsageStats;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0xdbba00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .local v0, "array":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    new-array v0, v1, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    :cond_0
    const/4 v1, 0x0

    const-string v2, "__global"

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .local v0, "result":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .end local v0    # "result":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v0    # "result":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    .locals 2
    .param p1, "array"    # [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .local v0, "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz p3, :cond_1

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mStatsArrays.size(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "dump":Lorg/json/JSONObject;
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .local v0, "aggregatedStats":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .local v1, "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz p1, :cond_1

    iget-object v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->dumpJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "aggregatedStats":Lorg/json/JSONArray;
    .end local v1    # "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    :goto_1
    :try_start_2
    const-string v4, "historical"

    iget-object v5, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v5, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v2

    .restart local v0    # "aggregatedStats":Lorg/json/JSONArray;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    const-string v4, "current"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v0    # "aggregatedStats":Lorg/json/JSONArray;
    .end local v2    # "dump":Lorg/json/JSONObject;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v2    # "dump":Lorg/json/JSONObject;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public declared-synchronized emit()V
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "__global"

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .local v0, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->emit()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/32 v4, 0xdbba00

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerBlocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 6
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    move-object v1, v0

    .local v1, "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .local v4, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v1    # "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V
    .locals 6
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    const-string v1, "note_click_longevity"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onClick()V

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logClicked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V
    .locals 6
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    const-string v1, "note_dismiss_longevity"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onDismiss()V

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logDismissed(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V
    .locals 6
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "valid"    # Z
    .param p3, "starred"    # Z
    .param p4, "cached"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    move-object v1, v0

    .local v1, "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .local v4, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz p2, :cond_0

    iget v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    :cond_0
    if-eqz p3, :cond_1

    iget v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    :cond_1
    if-eqz p4, :cond_2

    iget v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v1    # "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .restart local v1    # "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_3
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V
    .locals 8
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-direct {v5}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;-><init>()V

    iput-object v5, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    move-object v1, v0

    .local v1, "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .local v4, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->countApiUse(Lcom/android/server/notification/NotificationRecord;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    iget-object v5, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v5, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logPosted(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v1    # "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V
    .locals 6
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onRemoved()V

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    move-object v1, v0

    .local v1, "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .local v4, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    iget-object v5, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v5, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logRemoved(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v1    # "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V
    .locals 6
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    iget-object v5, p2, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iput-object v5, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    move-object v1, v0

    .local v1, "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .local v4, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->countApiUse(Lcom/android/server/notification/NotificationRecord;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    return-void
.end method
