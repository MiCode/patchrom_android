.class public Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
.super Ljava/lang/Object;
.source "EventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/midi/EventScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SchedulableEvent"
.end annotation


# instance fields
.field private volatile mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

.field private mTimestamp:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    iput-wide p1, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mTimestamp:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .prologue
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .param p1, "x1"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .prologue
    iput-object p1, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    return-object p1
.end method


# virtual methods
.method public getTimestamp()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mTimestamp:J

    return-wide v0
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mTimestamp:J

    return-void
.end method
