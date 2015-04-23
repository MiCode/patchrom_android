.class public abstract Landroid/media/midi/MidiReceiver;
.super Ljava/lang/Object;
.source "MidiReceiver.java"


# instance fields
.field private final mMaxMessageSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxMessageSize"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/media/midi/MidiReceiver;->onFlush()V

    return-void
.end method

.method public final getMaxMessageSize()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    return v0
.end method

.method public onFlush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public abstract onSend([BIIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public send([BII)V
    .locals 6
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    return-void
.end method

.method public send([BIIJ)V
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
    invoke-virtual {p0}, Landroid/media/midi/MidiReceiver;->getMaxMessageSize()I

    move-result v6

    .local v6, "messageSize":I
    :goto_0
    if-lez p3, :cond_1

    if-le p3, v6, :cond_0

    move v3, v6

    .local v3, "length":I
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->onSend([BIIJ)V

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    goto :goto_0

    .end local v3    # "length":I
    :cond_0
    move v3, p3

    goto :goto_1

    :cond_1
    return-void
.end method
