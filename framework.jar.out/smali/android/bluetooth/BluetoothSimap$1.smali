.class Landroid/bluetooth/BluetoothSimap$1;
.super Ljava/lang/Object;
.source "BluetoothSimap.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothSimap;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothSimap;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothSimap$1;->this$0:Landroid/bluetooth/BluetoothSimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    const-string v0, "Proxy object connected"

    #calls: Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothSimap;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothSimap$1;->this$0:Landroid/bluetooth/BluetoothSimap;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothSimap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSimap;

    move-result-object v1

    #setter for: Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothSimap;->access$102(Landroid/bluetooth/BluetoothSimap;Landroid/bluetooth/IBluetoothSimap;)Landroid/bluetooth/IBluetoothSimap;

    iget-object v0, p0, Landroid/bluetooth/BluetoothSimap$1;->this$0:Landroid/bluetooth/BluetoothSimap;

    #getter for: Landroid/bluetooth/BluetoothSimap;->mServiceListener:Landroid/bluetooth/BluetoothSimap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothSimap;->access$200(Landroid/bluetooth/BluetoothSimap;)Landroid/bluetooth/BluetoothSimap$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothSimap$1;->this$0:Landroid/bluetooth/BluetoothSimap;

    #getter for: Landroid/bluetooth/BluetoothSimap;->mServiceListener:Landroid/bluetooth/BluetoothSimap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothSimap;->access$200(Landroid/bluetooth/BluetoothSimap;)Landroid/bluetooth/BluetoothSimap$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/BluetoothSimap$ServiceListener;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    const-string v0, "Proxy object disconnected"

    #calls: Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothSimap;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothSimap$1;->this$0:Landroid/bluetooth/BluetoothSimap;

    const/4 v1, 0x0

    #setter for: Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothSimap;->access$102(Landroid/bluetooth/BluetoothSimap;Landroid/bluetooth/IBluetoothSimap;)Landroid/bluetooth/IBluetoothSimap;

    iget-object v0, p0, Landroid/bluetooth/BluetoothSimap$1;->this$0:Landroid/bluetooth/BluetoothSimap;

    #getter for: Landroid/bluetooth/BluetoothSimap;->mServiceListener:Landroid/bluetooth/BluetoothSimap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothSimap;->access$200(Landroid/bluetooth/BluetoothSimap;)Landroid/bluetooth/BluetoothSimap$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothSimap$1;->this$0:Landroid/bluetooth/BluetoothSimap;

    #getter for: Landroid/bluetooth/BluetoothSimap;->mServiceListener:Landroid/bluetooth/BluetoothSimap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothSimap;->access$200(Landroid/bluetooth/BluetoothSimap;)Landroid/bluetooth/BluetoothSimap$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/BluetoothSimap$ServiceListener;->onServiceDisconnected()V

    :cond_0
    return-void
.end method
