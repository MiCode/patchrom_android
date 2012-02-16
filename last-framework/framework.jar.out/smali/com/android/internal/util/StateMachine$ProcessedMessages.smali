.class Lcom/android/internal/util/StateMachine$ProcessedMessages;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessedMessages"
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x14


# instance fields
.field private mCount:I

.field private mMaxSize:I

.field private mMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOldestIndex:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mMessages:Ljava/util/Vector;

    .line 536
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mMaxSize:I

    .line 537
    iput v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mOldestIndex:I

    .line 538
    iput v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mCount:I

    .line 544
    return-void
.end method


# virtual methods
.method add(Landroid/os/Message;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V
    .locals 3
    .parameter "message"
    .parameter "state"
    .parameter "orgState"

    .prologue
    .line 604
    iget v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mCount:I

    .line 605
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mMessages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mMaxSize:I

    if-ge v1, v2, :cond_0

    .line 606
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mMessages:Ljava/util/Vector;

    new-instance v2, Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;-><init>(Landroid/os/Message;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 615
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mMessages:Ljava/util/Vector;

    iget v2, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mOldestIndex:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;

    .line 609
    .local v0, pmi:Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;
    iget v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mOldestIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mOldestIndex:I

    .line 610
    iget v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mOldestIndex:I

    iget v2, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mMaxSize:I

    if-lt v1, v2, :cond_1

    .line 611
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mOldestIndex:I

    .line 613
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;->update(Landroid/os/Message;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method cleanup()V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 576
    return-void
.end method

.method count()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mCount:I

    return v0
.end method

.method get(I)Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;
    .locals 2
    .parameter "index"

    .prologue
    .line 584
    iget v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mOldestIndex:I

    add-int v0, v1, p1

    .line 585
    .local v0, nextIndex:I
    iget v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mMaxSize:I

    if-lt v0, v1, :cond_0

    .line 586
    iget v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mMaxSize:I

    sub-int/2addr v0, v1

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$ProcessedMessages;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 589
    const/4 v1, 0x0

    .line 591
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mMessages:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;

    goto :goto_0
.end method

.method setSize(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    .line 552
    iput p1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mMaxSize:I

    .line 553
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mCount:I

    .line 554
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 555
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$ProcessedMessages;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
