.class public Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
.super Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
.source "MidiEventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/midi/MidiEventScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MidiEvent"
.end annotation


# instance fields
.field public count:I

.field public data:[B


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;-><init>(J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/internal/midi/MidiEventScheduler$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/android/internal/midi/MidiEventScheduler$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>(I)V

    return-void
.end method

.method private constructor <init>([BIIJ)V
    .locals 2
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p4, p5}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;-><init>(J)V

    iput v1, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    new-array v0, p3, [B

    iput-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    iget-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput p3, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    return-void
.end method

.method synthetic constructor <init>([BIIJLcom/android/internal/midi/MidiEventScheduler$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # J
    .param p6, "x4"    # Lcom/android/internal/midi/MidiEventScheduler$1;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>([BIIJ)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v1, "Event: "

    .local v1, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    aget-byte v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
