.class Lcom/android/internal/midi/EventScheduler$FastEventQueue;
.super Ljava/lang/Object;
.source "EventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/midi/EventScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FastEventQueue"
.end annotation


# instance fields
.field volatile mEventsAdded:J

.field volatile mEventsRemoved:J

.field volatile mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

.field volatile mLast:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

.field final synthetic this$0:Lcom/android/internal/midi/EventScheduler;


# direct methods
.method constructor <init>(Lcom/android/internal/midi/EventScheduler;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 2
    .param p2, "event"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .prologue
    iput-object p1, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->this$0:Lcom/android/internal/midi/EventScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mLast:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsAdded:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsRemoved:J

    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .prologue
    const/4 v0, 0x0

    # setter for: Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    invoke-static {p1, v0}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->access$002(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mLast:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    # setter for: Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    invoke-static {v0, p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->access$002(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    iput-object p1, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mLast:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    iget-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsAdded:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsAdded:J

    return-void
.end method

.method public remove()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 6

    .prologue
    iget-wide v2, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsRemoved:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsRemoved:J

    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .local v0, "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    # getter for: Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    invoke-static {v0}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->access$000(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    invoke-static {v0, v1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->access$002(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    return-object v0
.end method

.method size()I
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsAdded:J

    iget-wide v2, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsRemoved:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
