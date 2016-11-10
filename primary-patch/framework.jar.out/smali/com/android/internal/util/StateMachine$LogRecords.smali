.class Lcom/android/internal/util/StateMachine$LogRecords;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogRecords"
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x14


# instance fields
.field private mCount:I

.field private mLogOnlyTransitions:Z

.field private mLogRecVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/internal/util/StateMachine$LogRec;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSize:I

.field private mOldestIndex:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    iput-boolean v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/StateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/util/StateMachine$1;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$LogRecords;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/util/StateMachine$LogRecords;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$LogRecords;

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method declared-synchronized add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    .locals 8
    .param p1, "sm"    # Lcom/android/internal/util/StateMachine;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "messageInfo"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/util/IState;
    .param p5, "orgState"    # Lcom/android/internal/util/IState;
    .param p6, "transToState"    # Lcom/android/internal/util/IState;

    .prologue
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    if-ge v1, v2, :cond_0

    iget-object v7, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    new-instance v0, Lcom/android/internal/util/StateMachine$LogRec;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRec;-><init>(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    iget v2, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$LogRec;

    .local v0, "pmi":Lcom/android/internal/util/StateMachine$LogRec;
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    iget v2, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRec;->update(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "pmi":Lcom/android/internal/util/StateMachine$LogRec;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized cleanup()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized count()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get(I)Lcom/android/internal/util/StateMachine$LogRec;
    .locals 2
    .param p1, "index"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    add-int v0, v1, p1

    .local v0, "nextIndex":I
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    sub-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$LogRecords;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/StateMachine$LogRec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "nextIndex":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized logOnlyTransitions()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setLogOnlyTransitions(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized size()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
