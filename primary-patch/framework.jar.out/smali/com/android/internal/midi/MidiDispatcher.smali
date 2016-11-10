.class public final Lcom/android/internal/midi/MidiDispatcher;
.super Landroid/media/midi/MidiReceiver;
.source "MidiDispatcher.java"


# instance fields
.field private final mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/media/midi/MidiReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSender:Landroid/media/midi/MidiSender;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/internal/midi/MidiDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/midi/MidiDispatcher$1;-><init>(Lcom/android/internal/midi/MidiDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mSender:Landroid/media/midi/MidiSender;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/midi/MidiDispatcher;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/midi/MidiDispatcher;

    .prologue
    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method


# virtual methods
.method public getReceiverCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSender()Landroid/media/midi/MidiSender;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mSender:Landroid/media/midi/MidiSender;

    return-object v0
.end method

.method public onFlush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/midi/MidiReceiver;

    .local v1, "receiver":Landroid/media/midi/MidiReceiver;
    invoke-virtual {v1}, Landroid/media/midi/MidiReceiver;->flush()V

    goto :goto_0

    .end local v1    # "receiver":Landroid/media/midi/MidiReceiver;
    :cond_0
    return-void
.end method

.method public onSend([BIIJ)V
    .locals 8
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiReceiver;

    .local v0, "receiver":Landroid/media/midi/MidiReceiver;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "receiver":Landroid/media/midi/MidiReceiver;
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method
