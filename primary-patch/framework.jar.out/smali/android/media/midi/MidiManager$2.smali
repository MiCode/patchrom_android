.class Landroid/media/midi/MidiManager$2;
.super Landroid/media/midi/IMidiDeviceOpenCallback$Stub;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/midi/MidiManager;->openDevice(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/midi/MidiManager;

.field final synthetic val$deviceInfoF:Landroid/media/midi/MidiDeviceInfo;

.field final synthetic val$handlerF:Landroid/os/Handler;

.field final synthetic val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/midi/MidiManager$2;->this$0:Landroid/media/midi/MidiManager;

    iput-object p2, p0, Landroid/media/midi/MidiManager$2;->val$deviceInfoF:Landroid/media/midi/MidiDeviceInfo;

    iput-object p3, p0, Landroid/media/midi/MidiManager$2;->val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    iput-object p4, p0, Landroid/media/midi/MidiManager$2;->val$handlerF:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceOpened(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Landroid/media/midi/MidiDevice;

    iget-object v1, p0, Landroid/media/midi/MidiManager$2;->val$deviceInfoF:Landroid/media/midi/MidiDeviceInfo;

    iget-object v2, p0, Landroid/media/midi/MidiManager$2;->this$0:Landroid/media/midi/MidiManager;

    # getter for: Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;
    invoke-static {v2}, Landroid/media/midi/MidiManager;->access$100(Landroid/media/midi/MidiManager;)Landroid/media/midi/IMidiManager;

    move-result-object v3

    iget-object v2, p0, Landroid/media/midi/MidiManager$2;->this$0:Landroid/media/midi/MidiManager;

    # getter for: Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/media/midi/MidiManager;->access$200(Landroid/media/midi/MidiManager;)Landroid/os/IBinder;

    move-result-object v4

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/midi/MidiDevice;-><init>(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/IMidiManager;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .local v0, "device":Landroid/media/midi/MidiDevice;
    :goto_0
    iget-object v1, p0, Landroid/media/midi/MidiManager$2;->this$0:Landroid/media/midi/MidiManager;

    iget-object v2, p0, Landroid/media/midi/MidiManager$2;->val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    iget-object v3, p0, Landroid/media/midi/MidiManager$2;->val$handlerF:Landroid/os/Handler;

    # invokes: Landroid/media/midi/MidiManager;->sendOpenDeviceResponse(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    invoke-static {v1, v0, v2, v3}, Landroid/media/midi/MidiManager;->access$300(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    return-void

    .end local v0    # "device":Landroid/media/midi/MidiDevice;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "device":Landroid/media/midi/MidiDevice;
    goto :goto_0
.end method
