.class public Lcom/android/server/wifi/hotspot2/Chronograph;
.super Ljava/lang/Thread;
.source "Chronograph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    }
.end annotation


# instance fields
.field private final mAlarmEntryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRecalculate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    const-string v0, "Chronograph"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hotspot2/Chronograph;->setName(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hotspot2/Chronograph;->setDaemon(Z)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/server/wifi/hotspot2/Chronograph;

    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/Chronograph;-><init>()V

    .local v0, "chronograph":Lcom/android/server/wifi/hotspot2/Chronograph;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/Chronograph;->start()V

    const-wide/16 v2, 0xbb8

    new-instance v4, Lcom/android/server/wifi/hotspot2/Chronograph$1;

    invoke-direct {v4}, Lcom/android/server/wifi/hotspot2/Chronograph$1;-><init>()V

    const-string v5, "3s"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/wifi/hotspot2/Chronograph;->addAlarm(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x1d4c

    new-instance v4, Lcom/android/server/wifi/hotspot2/Chronograph$2;

    invoke-direct {v4}, Lcom/android/server/wifi/hotspot2/Chronograph$2;-><init>()V

    const-string v5, "7.5s"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/wifi/hotspot2/Chronograph;->addAlarm(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "key":Ljava/lang/Object;
    const-wide/16 v2, 0x2710

    new-instance v4, Lcom/android/server/wifi/hotspot2/Chronograph$3;

    invoke-direct {v4}, Lcom/android/server/wifi/hotspot2/Chronograph$3;-><init>()V

    const-string v5, "10.00s"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/wifi/hotspot2/Chronograph;->addAlarm(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hotspot2/Chronograph;->cancelAlarm(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Z)V

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/Chronograph;->join()V

    return-void
.end method


# virtual methods
.method public addAlarm(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "interval"    # J
    .param p3, "handler"    # Lcom/android/server/wifi/hotspot2/AlarmHandler;
    .param p4, "token"    # Ljava/lang/Object;

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v2, v4, p1

    .local v2, "at":J
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    monitor-enter v7

    :try_start_0
    new-instance v1, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;

    const/4 v6, 0x0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;-><init>(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;Lcom/android/server/wifi/hotspot2/Chronograph$1;)V

    .local v1, "alarmEntry":Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .restart local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mRecalculate:Z

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7

    return-object v1

    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    .end local v1    # "alarmEntry":Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public cancelAlarm(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;

    if-eq v4, v5, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Not an alarm key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;

    .local v0, "alarmEntry":Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    # getter for: Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;->mAt:J
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;->access$100(Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    if-nez v1, :cond_2

    monitor-exit v4

    :goto_0
    return v2

    :cond_2
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mRecalculate:Z

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4

    move v2, v3

    goto :goto_0

    :cond_3
    monitor-exit v4

    goto :goto_0

    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public run()V
    .locals 20

    .prologue
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, "now":J
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .local v12, "pending":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;"
    const-wide/16 v8, 0x0

    .local v8, "nextExpiration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v13, v18, v10

    if-gtz v13, :cond_0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .end local v4    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;>;"
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;"
    :catchall_0
    move-exception v13

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .restart local v4    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;>;"
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;"
    :cond_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;"
    :cond_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .local v2, "alarmEntries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;

    .local v3, "alarmEntry":Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    # invokes: Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;->callout()V
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;->access$200(Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;)V

    goto :goto_2

    .end local v2    # "alarmEntries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    .end local v3    # "alarmEntry":Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    move-object/from16 v16, v0

    monitor-enter v16

    sub-long v14, v8, v10

    .local v14, "sleep":J
    :goto_3
    const-wide/16 v18, 0x0

    cmp-long v13, v14, v18

    if-lez v13, :cond_4

    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wifi/hotspot2/Chronograph;->mRecalculate:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v13, :cond_4

    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    invoke-virtual {v13, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v14, v8, v18

    goto :goto_3

    :cond_4
    monitor-exit v16

    goto/16 :goto_0

    :catchall_1
    move-exception v13

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v13

    :catch_0
    move-exception v13

    goto :goto_4
.end method
