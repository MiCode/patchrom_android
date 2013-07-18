.class Landroid/bluetooth/BluetoothAudioGateway$1;
.super Ljava/lang/Thread;
.source "BluetoothAudioGateway.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothAudioGateway;->start(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAudioGateway;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAudioGateway;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const-string v0, "Audiogateway listening thread starting"

    #calls: Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$000(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z
    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$100(Landroid/bluetooth/BluetoothAudioGateway;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #setter for: Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHeadsetRfcommChannel:I
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothAudioGateway;->access$202(Landroid/bluetooth/BluetoothAudioGateway;I)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #setter for: Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeRfcommChannel:I
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothAudioGateway;->access$302(Landroid/bluetooth/BluetoothAudioGateway;I)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #calls: Landroid/bluetooth/BluetoothAudioGateway;->waitForHandsfreeIndicationNative()Z
    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$400(Landroid/bluetooth/BluetoothAudioGateway;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "select thread was interrupted (2), exiting"

    #calls: Landroid/bluetooth/BluetoothAudioGateway;->logInfo(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$500(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    const/4 v1, 0x1

    #setter for: Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->access$102(Landroid/bluetooth/BluetoothAudioGateway;Z)Z

    goto :goto_0

    :cond_1
    const-string v0, "Connect Thread finished"

    #calls: Landroid/bluetooth/BluetoothAudioGateway;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$000(Ljava/lang/String;)V

    return-void
.end method
