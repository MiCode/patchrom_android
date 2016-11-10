.class Landroid/bluetooth/BluetoothHeadset$3;
.super Landroid/os/Handler;
.source "BluetoothHeadset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHeadset;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    # getter for: Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$300(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    # getter for: Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$300(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    # getter for: Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$300(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    # getter for: Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$300(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
