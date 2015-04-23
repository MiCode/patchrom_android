.class abstract Landroid/media/midi/MidiDeviceServer$PortClient;
.super Ljava/lang/Object;
.source "MidiDeviceServer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PortClient"
.end annotation


# instance fields
.field final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;)V
    .locals 2
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$PortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/midi/MidiDeviceServer$PortClient;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    return-void
.end method

.method abstract close()V
.end method
