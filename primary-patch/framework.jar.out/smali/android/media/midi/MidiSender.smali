.class public abstract Landroid/media/midi/MidiSender;
.super Ljava/lang/Object;
.source "MidiSender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/media/midi/MidiReceiver;)V
    .locals 2
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "receiver null in MidiSender.connect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/midi/MidiSender;->onConnect(Landroid/media/midi/MidiReceiver;)V

    return-void
.end method

.method public disconnect(Landroid/media/midi/MidiReceiver;)V
    .locals 2
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "receiver null in MidiSender.disconnect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/midi/MidiSender;->onDisconnect(Landroid/media/midi/MidiReceiver;)V

    return-void
.end method

.method public abstract onConnect(Landroid/media/midi/MidiReceiver;)V
.end method

.method public abstract onDisconnect(Landroid/media/midi/MidiReceiver;)V
.end method
