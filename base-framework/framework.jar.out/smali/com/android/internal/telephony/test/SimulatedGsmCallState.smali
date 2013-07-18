.class Lcom/android/internal/telephony/test/SimulatedGsmCallState;
.super Landroid/os/Handler;
.source "SimulatedGsmCallState.java"


# static fields
.field static final CONNECTING_PAUSE_MSEC:I = 0x1f4

.field static final EVENT_PROGRESS_CALL_STATE:I = 0x1

.field static final MAX_CALLS:I = 0x7


# instance fields
.field private autoProgressConnecting:Z

.field calls:[Lcom/android/internal/telephony/test/CallInfo;

.field private nextDialFailImmediately:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/telephony/test/CallInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->autoProgressConnecting:Z

    return-void
.end method

.method private countActiveLines()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InvalidStateEx;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .local v4, hasMpty:Z
    const/4 v3, 0x0

    .local v3, hasHeld:Z
    const/4 v1, 0x0

    .local v1, hasActive:Z
    const/4 v2, 0x0

    .local v2, hasConnecting:Z
    const/4 v5, 0x0

    .local v5, hasRinging:Z
    const/4 v7, 0x0

    .local v7, mptyIsHeld:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v11, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v11, v11

    if-ge v6, v11, :cond_7

    iget-object v11, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v11, v6

    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    if-nez v4, :cond_3

    iget-boolean v11, v0, Lcom/android/internal/telephony/test/CallInfo;->isMpty:Z

    if-eqz v11, :cond_3

    iget-object v11, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v11, v12, :cond_2

    move v7, v9

    :cond_0
    :goto_1
    iget-boolean v11, v0, Lcom/android/internal/telephony/test/CallInfo;->isMpty:Z

    or-int/2addr v4, v11

    iget-object v11, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v11, v12, :cond_5

    move v11, v9

    :goto_2
    or-int/2addr v3, v11

    iget-object v11, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v11, v12, :cond_6

    move v11, v9

    :goto_3
    or-int/2addr v1, v11

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v11

    or-int/2addr v2, v11

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v11

    or-int/2addr v5, v11

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move v7, v10

    goto :goto_1

    :cond_3
    iget-boolean v11, v0, Lcom/android/internal/telephony/test/CallInfo;->isMpty:Z

    if-eqz v11, :cond_4

    if-eqz v7, :cond_4

    iget-object v11, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v11, v12, :cond_4

    const-string v9, "ModelInterpreter"

    const-string v10, "Invalid state"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/internal/telephony/test/InvalidStateEx;

    invoke-direct {v9}, Lcom/android/internal/telephony/test/InvalidStateEx;-><init>()V

    throw v9

    :cond_4
    iget-boolean v11, v0, Lcom/android/internal/telephony/test/CallInfo;->isMpty:Z

    if-nez v11, :cond_0

    if-eqz v4, :cond_0

    if-eqz v7, :cond_0

    iget-object v11, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v11, v12, :cond_0

    const-string v9, "ModelInterpreter"

    const-string v10, "Invalid state"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/internal/telephony/test/InvalidStateEx;

    invoke-direct {v9}, Lcom/android/internal/telephony/test/InvalidStateEx;-><init>()V

    throw v9

    :cond_5
    move v11, v10

    goto :goto_2

    :cond_6
    move v11, v10

    goto :goto_3

    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_7
    const/4 v8, 0x0

    .local v8, ret:I
    if-eqz v3, :cond_8

    add-int/lit8 v8, v8, 0x1

    :cond_8
    if-eqz v1, :cond_9

    add-int/lit8 v8, v8, 0x1

    :cond_9
    if-eqz v2, :cond_a

    add-int/lit8 v8, v8, 0x1

    :cond_a
    if-eqz v5, :cond_b

    add-int/lit8 v8, v8, 0x1

    :cond_b
    return v8
.end method


# virtual methods
.method public conference()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, countCalls:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v2

    .local v0, c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_0
    return v3

    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v2

    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_3

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    if-lez v1, :cond_3

    iput-boolean v3, v0, Lcom/android/internal/telephony/test/CallInfo;->isMpty:Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public explicitCallTransfer()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, countCalls:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .local v0, c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :goto_1
    return v3

    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupAll()Z

    move-result v3

    goto :goto_1
.end method

.method public getClccLines()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v1

    .local v0, c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/test/CallInfo;->toCLCCLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    return-object v2
.end method

.method public getDriverCalls()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DriverCall;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v2

    .local v0, c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/test/CallInfo;->toDriverCall(I)Lcom/android/internal/telephony/DriverCall;

    move-result-object v1

    .local v1, dc:Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v1           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SC< getDriverCalls "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingCallState()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnswer()Z
    .locals 4

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v2, v1

    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->switchActiveAndHeldOrWaiting()Z

    move-result v2

    monitor-exit p0

    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :goto_1
    return v2

    .restart local v0       #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    monitor-exit p0

    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onChld(CC)Z
    .locals 4
    .parameter "c0"
    .parameter "c1"

    .prologue
    const/4 v0, 0x0

    .local v0, callIndex:I
    if-eqz p2, :cond_1

    add-int/lit8 v0, p2, -0x31

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    .local v1, ret:Z
    goto :goto_0

    .end local v1           #ret:Z
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->releaseHeldOrUDUB()Z

    move-result v1

    .restart local v1       #ret:Z
    goto :goto_0

    .end local v1           #ret:Z
    :pswitch_1
    if-gtz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->releaseActiveAcceptHeldOrWaiting()Z

    move-result v1

    .restart local v1       #ret:Z
    goto :goto_0

    .end local v1           #ret:Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    const/4 v1, 0x0

    .restart local v1       #ret:Z
    goto :goto_0

    .end local v1           #ret:Z
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    const/4 v1, 0x1

    .restart local v1       #ret:Z
    goto :goto_0

    .end local v1           #ret:Z
    :pswitch_2
    if-gtz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->switchActiveAndHeldOrWaiting()Z

    move-result v1

    .restart local v1       #ret:Z
    goto :goto_0

    .end local v1           #ret:Z
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->separateCall(I)Z

    move-result v1

    .restart local v1       #ret:Z
    goto :goto_0

    .end local v1           #ret:Z
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->conference()Z

    move-result v1

    .restart local v1       #ret:Z
    goto :goto_0

    .end local v1           #ret:Z
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->explicitCallTransfer()Z

    move-result v1

    .restart local v1       #ret:Z
    goto :goto_0

    .end local v1           #ret:Z
    :pswitch_5
    const/4 v1, 0x0

    .restart local v1       #ret:Z
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDial(Ljava/lang/String;)Z
    .locals 9
    .parameter "address"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .local v1, freeSlot:I
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SC> dial \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->nextDialFailImmediately:Z

    if-eqz v6, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->nextDialFailImmediately:Z

    const-string v5, "GSM"

    const-string v6, "SC< dial fail (per request)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, phNum:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    const-string v5, "GSM"

    const-string v6, "SC< dial fail (invalid ph num)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v6, "*99"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "#"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "GSM"

    const-string v6, "SC< dial ignored (gprs)"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->countActiveLines()I

    move-result v6

    if-le v6, v5, :cond_3

    const-string v5, "GSM"

    const-string v6, "SC< dial fail (invalid call state)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/test/InvalidStateEx; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Lcom/android/internal/telephony/test/InvalidStateEx;
    const-string v5, "GSM"

    const-string v6, "SC< dial fail (invalid call state)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #ex:Lcom/android/internal/telephony/test/InvalidStateEx;
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v6, v6

    if-ge v2, v6, :cond_7

    if-gez v1, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v6, v6, v2

    if-nez v6, :cond_4

    move v1, v2

    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v6, v6, v2

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/internal/telephony/test/CallInfo;->isActiveOrHeld()Z

    move-result v6

    if-nez v6, :cond_5

    const-string v5, "GSM"

    const-string v6, "SC< dial fail (invalid call state)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v6, v6, v2

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v7, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v6, v6, v2

    sget-object v7, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v7, v6, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    if-gez v1, :cond_8

    const-string v5, "GSM"

    const-string v6, "SC< dial fail (invalid call state)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    invoke-static {v3}, Lcom/android/internal/telephony/test/CallInfo;->createOutgoingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;

    move-result-object v6

    aput-object v6, v4, v1

    iget-boolean v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->autoProgressConnecting:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v1

    invoke-virtual {p0, v5, v4}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_9
    const-string v4, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SC< dial (slot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto/16 :goto_0
.end method

.method public onHangup()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    return v1
.end method

.method public progressConnectingCallState()V
    .locals 5

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v2, v1

    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    iget-boolean v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->autoProgressConnecting:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .restart local v0       #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    goto :goto_1

    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public progressConnectingToActive()V
    .locals 4

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v2, v1

    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_2

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    monitor-exit p0

    return-void

    .restart local v0       #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public releaseActiveAcceptHeldOrWaiting()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .local v2, foundHeld:Z
    const/4 v1, 0x0

    .local v1, foundActive:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v3

    .local v0, c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v7, v4, v3

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    if-nez v1, :cond_4

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v3

    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v4, v5, :cond_2

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v7, v4, v3

    const/4 v1, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_4
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v3

    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_5

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_5

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    const/4 v2, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_6
    if-eqz v2, :cond_8

    :cond_7
    :goto_3
    return v6

    :cond_8
    const/4 v3, 0x0

    :goto_4
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v3

    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    goto :goto_3

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method public releaseHeldOrUDUB()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .local v0, c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v5, v3, v2

    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_0
    if-nez v1, :cond_3

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v5, v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public separateCall(I)Z
    .locals 10
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v8, p1

    .local v0, c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->countActiveLines()I

    move-result v8

    if-eq v8, v6, :cond_2

    :cond_0
    move v6, v7

    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    :goto_0
    return v6

    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    sget-object v8, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v8, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/internal/telephony/test/CallInfo;->isMpty:Z

    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v8, v8

    if-ge v4, v8, :cond_1

    const/4 v2, 0x0

    .local v2, countHeld:I
    const/4 v5, 0x0

    .local v5, lastHeld:I
    if-eq v4, p1, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v1, v8, v4

    .local v1, cb:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v1, :cond_3

    iget-object v8, v1, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v9, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v8, v9, :cond_3

    sget-object v8, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v8, v1, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v1           #cb:Lcom/android/internal/telephony/test/CallInfo;
    :cond_3
    if-ne v2, v6, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v8, v8, v5

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/internal/telephony/test/CallInfo;->isMpty:Z
    :try_end_0
    .catch Lcom/android/internal/telephony/test/InvalidStateEx; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    .end local v2           #countHeld:I
    .end local v4           #i:I
    .end local v5           #lastHeld:I
    :catch_0
    move-exception v3

    .local v3, ex:Lcom/android/internal/telephony/test/InvalidStateEx;
    move v6, v7

    goto :goto_0
.end method

.method public setAutoProgressConnectingCall(Z)V
    .locals 0
    .parameter "b"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->autoProgressConnecting:Z

    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .locals 0
    .parameter "b"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->nextDialFailImmediately:Z

    return-void
.end method

.method public switchActiveAndHeldOrWaiting()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, hasHeld:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .local v0, c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_4

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    goto :goto_2

    :cond_4
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    goto :goto_2

    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_5
    const/4 v3, 0x1

    return v3
.end method

.method public triggerHangupAll()Z
    .locals 5

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public triggerHangupBackground()Z
    .locals 5

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public triggerHangupForeground()Z
    .locals 5

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_0

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .restart local v0       #call:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_3

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_3

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    const/4 v1, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_5
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public triggerRing(Ljava/lang/String;)Z
    .locals 7
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    const/4 v1, -0x1

    .local v1, empty:I
    const/4 v3, 0x0

    .local v3, isCallWaiting:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v5, v2

    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    if-nez v0, :cond_1

    if-gez v1, :cond_1

    move v1, v2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v6, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v5, v6, :cond_2

    iget-object v5, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v6, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v5, v6, :cond_3

    :cond_2
    const-string v5, "ModelInterpreter"

    const-string v6, "triggerRing failed; phone already ringing"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :goto_2
    return v4

    .restart local v0       #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_3
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_4
    if-gez v1, :cond_5

    const-string v5, "ModelInterpreter"

    const-string v6, "triggerRing failed; all full"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/test/CallInfo;->createIncomingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;

    move-result-object v5

    aput-object v5, v4, v1

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v1

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v5, v4, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    goto :goto_2
.end method
