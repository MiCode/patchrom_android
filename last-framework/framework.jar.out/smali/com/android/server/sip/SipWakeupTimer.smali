.class Lcom/android/server/sip/SipWakeupTimer;
.super Landroid/content/BroadcastReceiver;
.source "SipWakeupTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipWakeupTimer$1;,
        Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;,
        Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    }
.end annotation


# static fields
.field private static final DEBUG_TIMER:Z = false

.field private static final TAG:Ljava/lang/String; = "_SIP.WkTimer_"

.field private static final TRIGGER_TIME:Ljava/lang/String; = "TriggerTime"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mEventQueue:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/android/server/sip/SipWakeupTimer$MyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 4
    .parameter "context"
    .parameter "executor"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;-><init>(Lcom/android/server/sip/SipWakeupTimer$1;)V

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    .line 64
    iput-object p1, p0, Lcom/android/server/sip/SipWakeupTimer;->mContext:Landroid/content/Context;

    .line 65
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    iput-object p2, p0, Lcom/android/server/sip/SipWakeupTimer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 71
    return-void
.end method

.method private cancelAlarm()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    .line 98
    return-void
.end method

.method private execute(J)V
    .locals 6
    .parameter "triggerTime"

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->stopped()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 270
    .local v0, event:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget-wide v2, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 273
    iput-wide p1, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    .line 274
    iget-wide v2, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    iget v4, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 277
    iget-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 283
    .end local v0           #event:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->scheduleNext()V

    goto :goto_0
.end method

.method private getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private insertEvent(Lcom/android/server/sip/SipWakeupTimer$MyEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 128
    .local v3, now:J
    iget-object v7, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 129
    iget v7, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    int-to-long v7, v7

    add-long/2addr v7, v3

    iput-wide v7, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 130
    iget-object v7, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v7, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 153
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v7, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 134
    .local v0, firstEvent:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget v2, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    .line 135
    .local v2, minPeriod:I
    iget v7, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    if-gt v2, v7, :cond_1

    .line 136
    iget v7, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    div-int/2addr v7, v2

    mul-int/2addr v7, v2

    iput v7, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    .line 137
    iget v1, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    .line 138
    .local v1, interval:I
    iget-wide v7, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    sub-long/2addr v7, v3

    long-to-int v7, v7

    sub-int/2addr v1, v7

    .line 139
    div-int v7, v1, v2

    mul-int v1, v7, v2

    .line 140
    iget-wide v7, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    int-to-long v9, v1

    add-long/2addr v7, v9

    iput-wide v7, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 141
    iget-object v7, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v7, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    .end local v1           #interval:I
    :cond_1
    iget v7, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    int-to-long v7, v7

    add-long v5, v3, v7

    .line 144
    .local v5, triggerTime:J
    iget-wide v7, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    cmp-long v7, v7, v5

    if-gez v7, :cond_2

    .line 145
    iget-wide v7, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    iput-wide v7, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 146
    iget-wide v7, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    iget v9, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    int-to-long v9, v9

    sub-long/2addr v7, v9

    iput-wide v7, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    .line 150
    :goto_1
    iget-object v7, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v7, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->recalculatePeriods()V

    goto :goto_0

    .line 148
    :cond_2
    iput-wide v5, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    goto :goto_1
.end method

.method private printQueue()V
    .locals 7

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, count:I
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 252
    .local v1, event:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    const-string v3, "_SIP.WkTimer_"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "     "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": scheduled at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    invoke-direct {p0, v5, v6}, Lcom/android/server/sip/SipWakeupTimer;->showTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": last at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    invoke-direct {p0, v5, v6}, Lcom/android/server/sip/SipWakeupTimer;->showTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    .line 257
    .end local v1           #event:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    :cond_1
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    if-le v3, v0, :cond_3

    .line 258
    const-string v3, "_SIP.WkTimer_"

    const-string v4, "     ....."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_2
    :goto_0
    return-void

    .line 259
    :cond_3
    if-nez v0, :cond_2

    .line 260
    const-string v3, "_SIP.WkTimer_"

    const-string v4, "     <empty>"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private recalculatePeriods()V
    .locals 12

    .prologue
    .line 101
    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 122
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 104
    .local v1, firstEvent:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget v4, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    .line 105
    .local v4, minPeriod:I
    iget-wide v5, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 106
    .local v5, minTriggerTime:J
    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 107
    .local v0, e:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    div-int/2addr v8, v4

    mul-int/2addr v8, v4

    iput v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    .line 108
    iget-wide v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    iget v10, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    sub-long/2addr v8, v5

    long-to-int v3, v8

    .line 110
    .local v3, interval:I
    div-int v8, v3, v4

    mul-int v3, v8, v4

    .line 111
    int-to-long v8, v3

    add-long/2addr v8, v5

    iput-wide v8, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    goto :goto_1

    .line 113
    .end local v0           #e:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .end local v3           #interval:I
    :cond_1
    new-instance v7, Ljava/util/TreeSet;

    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 115
    .local v7, newQueue:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/server/sip/SipWakeupTimer$MyEvent;>;"
    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v7, v8}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 116
    iget-object v8, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->clear()V

    .line 117
    iput-object v7, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    goto :goto_0
.end method

.method private scheduleNext()V
    .locals 7

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->stopped()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_2

    .line 222
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "pendingIntent is not null!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    :cond_2
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 226
    .local v0, event:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "TriggerTime"

    iget-wide v4, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 228
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    .line 231
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    iget-wide v5, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private showTime(J)Ljava/lang/String;
    .locals 7
    .parameter "time"

    .prologue
    const-wide/16 v5, 0x3e8

    .line 291
    rem-long v3, p1, v5

    long-to-int v1, v3

    .line 292
    .local v1, ms:I
    div-long v3, p1, v5

    long-to-int v2, v3

    .line 293
    .local v2, s:I
    div-int/lit8 v0, v2, 0x3c

    .line 294
    .local v0, m:I
    rem-int/lit8 v2, v2, 0x3c

    .line 295
    const-string v3, "%d.%d.%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private stopped()Z
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    if-nez v0, :cond_0

    .line 88
    const-string v0, "_SIP.WkTimer_"

    const-string v1, "Timer stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancel(Ljava/lang/Runnable;)V
    .locals 7
    .parameter "callback"

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->stopped()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 192
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 193
    .local v1, firstEvent:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 194
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/sip/SipWakeupTimer$MyEvent;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 196
    .local v0, event:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget-object v3, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mCallback:Ljava/lang/Runnable;

    if-ne v3, p1, :cond_2

    .line 197
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 189
    .end local v0           #event:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .end local v1           #firstEvent:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/sip/SipWakeupTimer$MyEvent;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 201
    .restart local v1       #firstEvent:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/sip/SipWakeupTimer$MyEvent;>;"
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 202
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->cancelAlarm()V

    goto :goto_0

    .line 203
    :cond_4
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->cancelAlarm()V

    .line 205
    iget-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #firstEvent:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    check-cast v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 206
    .restart local v1       #firstEvent:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    iget v3, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    iput v3, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    .line 207
    iget-wide v3, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mLastTriggerTime:J

    iget v5, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mPeriod:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J

    .line 209
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->recalculatePeriods()V

    .line 210
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->scheduleNext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, action:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "TriggerTime"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    .line 242
    const-string v3, "TriggerTime"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 243
    .local v1, triggerTime:J
    invoke-direct {p0, v1, v2}, Lcom/android/server/sip/SipWakeupTimer;->execute(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .end local v1           #triggerTime:J
    :goto_0
    monitor-exit p0

    return-void

    .line 245
    :cond_0
    :try_start_1
    const-string v3, "_SIP.WkTimer_"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unrecognized intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 238
    .end local v0           #action:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set(ILjava/lang/Runnable;)V
    .locals 7
    .parameter "period"
    .parameter "callback"

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->stopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    :goto_0
    monitor-exit p0

    return-void

    .line 165
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 166
    .local v1, now:J
    new-instance v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/server/sip/SipWakeupTimer$MyEvent;-><init>(ILjava/lang/Runnable;J)V

    .line 167
    .local v0, event:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipWakeupTimer;->insertEvent(Lcom/android/server/sip/SipWakeupTimer$MyEvent;)V

    .line 169
    iget-object v5, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_2

    .line 170
    iget-object v5, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->cancelAlarm()V

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer;->scheduleNext()V

    .line 174
    :cond_2
    iget-wide v3, v0, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mTriggerTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .local v3, triggerTime:J
    goto :goto_0

    .line 163
    .end local v0           #event:Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .end local v1           #now:J
    .end local v3           #triggerTime:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipWakeupTimer;->mEventQueue:Ljava/util/TreeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
