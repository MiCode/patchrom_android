.class public Lcom/android/internal/midi/EventScheduler;
.super Ljava/lang/Object;
.source "EventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/midi/EventScheduler$SchedulableEvent;,
        Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    }
.end annotation


# static fields
.field private static final NANOS_PER_MILLI:J = 0xf4240L


# instance fields
.field private mClosed:Z

.field private volatile mEventBuffer:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/midi/EventScheduler$FastEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

.field private final mLock:Ljava/lang/Object;

.field private mMaxPoolSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/internal/midi/EventScheduler;->mMaxPoolSize:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    return-void
.end method

.method private removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 5
    .param p1, "lowestTime"    # J

    .prologue
    iget-object v2, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    .local v1, "list":Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->remove()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v0

    .local v0, "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    return-object v0
.end method


# virtual methods
.method public add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .prologue
    iget-object v4, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    .local v0, "list":Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    .local v2, "lowestTime":J
    :goto_0
    new-instance v0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    .end local v0    # "list":Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;-><init>(Lcom/android/internal/midi/EventScheduler;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    .restart local v0    # "list":Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .end local v2    # "lowestTime":J
    :cond_0
    :goto_1
    monitor-exit v4

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    goto :goto_1

    .end local v0    # "list":Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .prologue
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;-><init>(Lcom/android/internal/midi/EventScheduler;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v0}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/android/internal/midi/EventScheduler;->mMaxPoolSize:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/midi/EventScheduler;->mClosed:Z

    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected flush()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    return-void
.end method

.method public getNextEvent(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 5
    .param p1, "time"    # J

    .prologue
    const/4 v0, 0x0

    .local v0, "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    iget-object v4, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .local v2, "lowestTime":J
    cmp-long v1, v2, p1

    if-gtz v1, :cond_0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/midi/EventScheduler;->removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v0

    .end local v2    # "lowestTime":J
    :cond_0
    monitor-exit v4

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeEventfromPool()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->remove()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public waitNextEvent()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/midi/EventScheduler;->mClosed:Z

    if-nez v3, :cond_0

    const-wide/32 v6, 0x7fffffff

    .local v6, "millisToWait":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .local v4, "lowestTime":J
    cmp-long v3, v4, v10

    if-gtz v3, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/midi/EventScheduler;->removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v2

    .end local v4    # "lowestTime":J
    .end local v6    # "millisToWait":J
    .end local v10    # "now":J
    :cond_0
    monitor-exit v12

    return-object v2

    .restart local v4    # "lowestTime":J
    .restart local v6    # "millisToWait":J
    .restart local v10    # "now":J
    :cond_1
    sub-long v8, v4, v10

    .local v8, "nanosToWait":J
    const-wide/16 v14, 0x1

    const-wide/32 v16, 0xf4240

    div-long v16, v8, v16

    add-long v6, v14, v16

    const-wide/32 v14, 0x7fffffff

    cmp-long v3, v6, v14

    if-lez v3, :cond_2

    const-wide/32 v6, 0x7fffffff

    .end local v4    # "lowestTime":J
    .end local v8    # "nanosToWait":J
    .end local v10    # "now":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    long-to-int v13, v6

    int-to-long v14, v13

    invoke-virtual {v3, v14, v15}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .end local v6    # "millisToWait":J
    :catchall_0
    move-exception v3

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
