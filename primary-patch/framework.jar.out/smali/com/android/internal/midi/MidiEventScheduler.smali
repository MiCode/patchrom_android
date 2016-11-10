.class public Lcom/android/internal/midi/MidiEventScheduler;
.super Lcom/android/internal/midi/EventScheduler;
.source "MidiEventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/midi/MidiEventScheduler$1;,
        Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;,
        Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;
    }
.end annotation


# static fields
.field private static final POOL_EVENT_SIZE:I = 0x10

.field private static final TAG:Ljava/lang/String; = "MidiEventScheduler"


# instance fields
.field private mReceiver:Landroid/media/midi/MidiReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/midi/EventScheduler;-><init>()V

    new-instance v0, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;-><init>(Lcom/android/internal/midi/MidiEventScheduler;Lcom/android/internal/midi/MidiEventScheduler$1;)V

    iput-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler;->mReceiver:Landroid/media/midi/MidiReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/midi/MidiEventScheduler;[BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/midi/MidiEventScheduler;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/midi/MidiEventScheduler;->createScheduledEvent([BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    move-result-object v0

    return-object v0
.end method

.method private createScheduledEvent([BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .locals 8
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x10

    if-le p3, v1, :cond_0

    new-instance v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>([BIIJLcom/android/internal/midi/MidiEventScheduler$1;)V

    .local v0, "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :goto_0
    return-object v0

    .end local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/midi/MidiEventScheduler;->removeEventfromPool()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    .restart local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    .end local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    invoke-direct {v0, v1, v6}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>(ILcom/android/internal/midi/MidiEventScheduler$1;)V

    .restart local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :cond_1
    iget-object v1, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput p3, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    invoke-virtual {v0, p4, p5}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->setTimestamp(J)V

    goto :goto_0
.end method


# virtual methods
.method public addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .prologue
    instance-of v1, p1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    .local v0, "midiEvent":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    iget-object v1, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    array-length v1, v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/midi/EventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    .end local v0    # "midiEvent":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :cond_0
    return-void
.end method

.method public getReceiver()Landroid/media/midi/MidiReceiver;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler;->mReceiver:Landroid/media/midi/MidiReceiver;

    return-object v0
.end method
