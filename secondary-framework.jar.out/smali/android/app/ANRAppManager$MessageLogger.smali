.class Landroid/app/ANRAppManager$MessageLogger;
.super Ljava/lang/Object;
.source "ANRAppManager.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ANRAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageLogger"
.end annotation


# static fields
.field static final FLUSHOUT_SIZE:I = 0x800

.field static final LONGER_TIME:I = 0xc8

.field static final LONGER_TIME_MESSAGE_SIZE:I = 0x50

.field static final MESSAGE_SIZE:I = 0x28

.field private static mElapsedLongTimeRecord:Ljava/util/LinkedList;

.field private static mLastRecord:Ljava/lang/String;

.field private static mLastRecordDateTime:J

.field private static mLastRecordKernelTime:J

.field private static mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

.field private static mMessageHistoryRecord:Ljava/util/LinkedList;

.field private static mMessageTimeRecord:Ljava/util/LinkedList;

.field private static mMsgCnt:J

.field private static mNonSleepLastRecordKernelTime:J

.field private static mNonSleepLongTimeRecord:Ljava/util/LinkedList;

.field private static mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

.field private static mState:I


# instance fields
.field public nonSleepWallStart:J

.field public nonSleepWallTime:J

.field public wallStart:J

.field public wallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/ANRAppManager$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/ANRAppManager$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/ANRAppManager$MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/ANRAppManager$MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/ANRAppManager$MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/ANRAppManager$MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    const/4 v0, 0x0

    sput-object v0, Landroid/app/ANRAppManager$MessageLogger;->mLastRecord:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Landroid/app/ANRAppManager$MessageLogger;->mState:I

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/app/ANRAppManager$MessageLogger;->mMsgCnt:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTimeToList(Ljava/util/LinkedList;JJ)V
    .locals 1
    .parameter "mList"
    .parameter "startTime"
    .parameter "durationTime"

    .prologue
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static dump()V
    .locals 24

    .prologue
    sget-object v18, Landroid/app/ANRAppManager$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    monitor-enter v18

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v17, 0x400

    move/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v5, history:Ljava/lang/StringBuilder;
    const-string v17, "MSG HISTORY IN MAIN THREAD:\n"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Current kernel time : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "ms\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v17, "yyyy-MM-dd HH:mm:ss.SSS"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v12, simpleDateFormat:Ljava/text/SimpleDateFormat;
    sget-object v17, Landroid/app/ANRAppManager$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    if-nez v17, :cond_1

    const/4 v13, 0x0

    .local v13, sizeForMsgRecord:I
    :goto_0
    sget v17, Landroid/app/ANRAppManager$MessageLogger;->mState:I

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    new-instance v3, Ljava/util/Date;

    sget-wide v19, Landroid/app/ANRAppManager$MessageLogger;->mLastRecordDateTime:J

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .local v3, date:Ljava/util/Date;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    sget-wide v21, Landroid/app/ANRAppManager$MessageLogger;->mLastRecordKernelTime:J

    sub-long v14, v19, v21

    .local v14, spent:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    sget-wide v21, Landroid/app/ANRAppManager$MessageLogger;->mNonSleepLastRecordKernelTime:J

    sub-long v9, v19, v21

    .local v9, nonSleepSpent:J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Last record : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v19, Landroid/app/ANRAppManager$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Last record dispatching elapsedTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ms/upTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ms\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Last record dispatching time : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, -0x1

    .end local v3           #date:Ljava/util/Date;
    .end local v9           #nonSleepSpent:J
    .end local v14           #spent:J
    :cond_0
    const/4 v8, 0x0

    .local v8, msg:Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, time:Ljava/lang/Long;
    const/4 v11, 0x0

    .local v11, nonSleepTime:Ljava/lang/Long;
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v17, 0x400

    move/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v7, longerHistory:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, flushed:Z
    :goto_1
    if-lez v13, :cond_3

    sget-object v17, Landroid/app/ANRAppManager$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-static {v13}, Landroid/app/ANRAppManager$MessageLogger;->sizeToIndex(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #msg:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #msg:Ljava/lang/String;
    sget-object v17, Landroid/app/ANRAppManager$MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    invoke-static {v13}, Landroid/app/ANRAppManager$MessageLogger;->sizeToIndex(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #time:Ljava/lang/Long;
    check-cast v16, Ljava/lang/Long;

    .restart local v16       #time:Ljava/lang/Long;
    sget-object v17, Landroid/app/ANRAppManager$MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    invoke-static {v13}, Landroid/app/ANRAppManager$MessageLogger;->sizeToIndex(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #nonSleepTime:Ljava/lang/Long;
    check-cast v11, Ljava/lang/Long;

    .restart local v11       #nonSleepTime:Ljava/lang/Long;
    const-string v17, ">"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    new-instance v3, Ljava/util/Date;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .restart local v3       #date:Ljava/util/Date;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " from "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v3           #date:Ljava/util/Date;
    :goto_2
    invoke-static {v5, v4}, Landroid/app/ANRAppManager$MessageLogger;->flushedOrNot(Ljava/lang/StringBuilder;Z)V

    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1

    .end local v4           #flushed:Z
    .end local v7           #longerHistory:Ljava/lang/StringBuilder;
    .end local v8           #msg:Ljava/lang/String;
    .end local v11           #nonSleepTime:Ljava/lang/Long;
    .end local v13           #sizeForMsgRecord:I
    .end local v16           #time:Ljava/lang/Long;
    :cond_1
    sget-object v17, Landroid/app/ANRAppManager$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v13

    goto/16 :goto_0

    .restart local v4       #flushed:Z
    .restart local v7       #longerHistory:Ljava/lang/StringBuilder;
    .restart local v8       #msg:Ljava/lang/String;
    .restart local v11       #nonSleepTime:Ljava/lang/Long;
    .restart local v13       #sizeForMsgRecord:I
    .restart local v16       #time:Ljava/lang/Long;
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " elapsedTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ms/upTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ms"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v4           #flushed:Z
    .end local v7           #longerHistory:Ljava/lang/StringBuilder;
    .end local v8           #msg:Ljava/lang/String;
    .end local v11           #nonSleepTime:Ljava/lang/Long;
    .end local v12           #simpleDateFormat:Ljava/text/SimpleDateFormat;
    .end local v13           #sizeForMsgRecord:I
    .end local v16           #time:Ljava/lang/Long;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .restart local v4       #flushed:Z
    .restart local v7       #longerHistory:Ljava/lang/StringBuilder;
    .restart local v8       #msg:Ljava/lang/String;
    .restart local v11       #nonSleepTime:Ljava/lang/Long;
    .restart local v12       #simpleDateFormat:Ljava/text/SimpleDateFormat;
    .restart local v13       #sizeForMsgRecord:I
    .restart local v16       #time:Ljava/lang/Long;
    :cond_3
    if-nez v4, :cond_4

    :try_start_1
    const-string v17, "ANRAppManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v4, 0x0

    const-string v17, "=== LONGER MSG HISTORY IN MAIN THREAD ===\n"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v17, Landroid/app/ANRAppManager$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v13

    sget-object v17, Landroid/app/ANRAppManager$MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v17

    add-int/lit8 v6, v17, -0x1

    .local v6, indexForTimeRecord:I
    :goto_3
    if-lez v13, :cond_5

    sget-object v17, Landroid/app/ANRAppManager$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-static {v13}, Landroid/app/ANRAppManager$MessageLogger;->sizeToIndex(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #msg:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #msg:Ljava/lang/String;
    sget-object v17, Landroid/app/ANRAppManager$MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #nonSleepTime:Ljava/lang/Long;
    check-cast v11, Ljava/lang/Long;

    .restart local v11       #nonSleepTime:Ljava/lang/Long;
    sget-object v17, Landroid/app/ANRAppManager$MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    add-int/lit8 v19, v6, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #time:Ljava/lang/Long;
    check-cast v16, Ljava/lang/Long;

    .restart local v16       #time:Ljava/lang/Long;
    new-instance v3, Ljava/util/Date;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .restart local v3       #date:Ljava/util/Date;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " from "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " elapsedTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v17, Landroid/app/ANRAppManager$MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ms/upTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "ms"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v4}, Landroid/app/ANRAppManager$MessageLogger;->flushedOrNot(Ljava/lang/StringBuilder;Z)V

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v6, v6, -0x2

    goto/16 :goto_3

    .end local v3           #date:Ljava/util/Date;
    :cond_5
    if-nez v4, :cond_6

    const-string v17, "ANRAppManager"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/MessageQueue;->dumpMessageQueue()V

    return-void
.end method

.method private static flushedOrNot(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .parameter "sb"
    .parameter "bl"

    .prologue
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x800

    if-le v0, v1, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***Flushing, Current Size Is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",bool"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "***TAIL\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    const-string v0, "ANRAppManager"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static sizeToIndex(I)I
    .locals 0
    .parameter "size"

    .prologue
    add-int/lit8 p0, p0, -0x1

    return p0
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 9
    .parameter "s"

    .prologue
    sget-object v3, Landroid/app/ANRAppManager$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    sget v2, Landroid/app/ANRAppManager$MessageLogger;->mState:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Landroid/app/ANRAppManager$MessageLogger;->mState:I

    sget-object v2, Landroid/app/ANRAppManager$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .local v1, size:I
    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    sget-object v2, Landroid/app/ANRAppManager$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    sget-object v2, Landroid/app/ANRAppManager$MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    sget-object v2, Landroid/app/ANRAppManager$MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Msg#:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Landroid/app/ANRAppManager$MessageLogger;->mMsgCnt:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-wide v4, Landroid/app/ANRAppManager$MessageLogger;->mMsgCnt:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Landroid/app/ANRAppManager$MessageLogger;->mMsgCnt:J

    sget-object v2, Landroid/app/ANRAppManager$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Landroid/app/ANRAppManager$MessageLogger;->mLastRecordKernelTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sput-wide v4, Landroid/app/ANRAppManager$MessageLogger;->mNonSleepLastRecordKernelTime:J

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    sput-wide v4, Landroid/app/ANRAppManager$MessageLogger;->mLastRecordDateTime:J

    sget v2, Landroid/app/ANRAppManager$MessageLogger;->mState:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    sput v2, Landroid/app/ANRAppManager$MessageLogger;->mState:I

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/app/ANRAppManager$MessageLogger;->wallStart:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/app/ANRAppManager$MessageLogger;->wallTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/app/ANRAppManager$MessageLogger;->nonSleepWallStart:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/app/ANRAppManager$MessageLogger;->nonSleepWallTime:J

    sget-object v2, Landroid/app/ANRAppManager$MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    iget-wide v4, p0, Landroid/app/ANRAppManager$MessageLogger;->wallStart:J

    iget-wide v6, p0, Landroid/app/ANRAppManager$MessageLogger;->wallTime:J

    invoke-static {v2, v4, v5, v6, v7}, Landroid/app/ANRAppManager$MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    sget-object v2, Landroid/app/ANRAppManager$MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    iget-wide v4, p0, Landroid/app/ANRAppManager$MessageLogger;->nonSleepWallStart:J

    iget-wide v6, p0, Landroid/app/ANRAppManager$MessageLogger;->nonSleepWallTime:J

    invoke-static {v2, v4, v5, v6, v7}, Landroid/app/ANRAppManager$MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    iget-wide v4, p0, Landroid/app/ANRAppManager$MessageLogger;->nonSleepWallTime:J

    const-wide/16 v6, 0xc8

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    sget-object v2, Landroid/app/ANRAppManager$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v4, 0x50

    if-lt v2, v4, :cond_1

    sget-object v2, Landroid/app/ANRAppManager$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    sget-object v2, Landroid/app/ANRAppManager$MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    sget-object v2, Landroid/app/ANRAppManager$MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_1
    sget-object v2, Landroid/app/ANRAppManager$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/ANRAppManager$MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    iget-wide v4, p0, Landroid/app/ANRAppManager$MessageLogger;->wallStart:J

    iget-wide v6, p0, Landroid/app/ANRAppManager$MessageLogger;->nonSleepWallTime:J

    invoke-static {v2, v4, v5, v6, v7}, Landroid/app/ANRAppManager$MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    sget-object v2, Landroid/app/ANRAppManager$MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    iget-wide v4, p0, Landroid/app/ANRAppManager$MessageLogger;->wallStart:J

    iget-wide v6, p0, Landroid/app/ANRAppManager$MessageLogger;->wallTime:J

    invoke-static {v2, v4, v5, v6, v7}, Landroid/app/ANRAppManager$MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    sget-object v2, Landroid/app/ANRAppManager$MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sget-object v4, Landroid/app/ANRAppManager$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    if-ne v2, v4, :cond_2

    sget-object v2, Landroid/app/ANRAppManager$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sget-object v4, Landroid/app/ANRAppManager$MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-eq v2, v4, :cond_3

    :cond_2
    const-string v2, "ANRAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RecordRateNotMatch: Count:MsgRecordSize:upTimeSize:elapsedTimeSize =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Landroid/app/ANRAppManager$MessageLogger;->mMsgCnt:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/app/ANRAppManager$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/app/ANRAppManager$MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/app/ANRAppManager$MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    invoke-static {}, Landroid/app/ANRAppManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ">"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "ANRAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Debugging_MessageLogger: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    monitor-exit v3

    return-void

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/ANRAppManager$MessageLogger;->wallStart:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/ANRAppManager$MessageLogger;->nonSleepWallStart:J

    goto :goto_1

    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #size:I
    :cond_6
    :try_start_1
    const-string v2, "ANRAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Debugging_MessageLogger: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " spent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Landroid/app/ANRAppManager$MessageLogger;->wallTime:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
