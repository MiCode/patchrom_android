.class public Lcom/android/server/midi/MidiService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mMidiService:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    new-instance v0, Lcom/android/server/midi/MidiService;

    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/midi/MidiService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Lifecycle;->mMidiService:Lcom/android/server/midi/MidiService;

    const-string v0, "midi"

    iget-object v1, p0, Lcom/android/server/midi/MidiService$Lifecycle;->mMidiService:Lcom/android/server/midi/MidiService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/midi/MidiService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
