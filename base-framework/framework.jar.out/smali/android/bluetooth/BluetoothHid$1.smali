.class Landroid/bluetooth/BluetoothHid$1;
.super Ljava/lang/Object;
.source "BluetoothHid.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHid;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHid;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothHid$1;->this$0:Landroid/bluetooth/BluetoothHid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothHid$1;->this$0:Landroid/bluetooth/BluetoothHid;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothHid$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHid;

    move-result-object v1

    #setter for: Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHid;->access$002(Landroid/bluetooth/BluetoothHid;Landroid/bluetooth/IBluetoothHid;)Landroid/bluetooth/IBluetoothHid;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothHid$1;->this$0:Landroid/bluetooth/BluetoothHid;

    const/4 v1, 0x0

    #setter for: Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHid;->access$002(Landroid/bluetooth/BluetoothHid;Landroid/bluetooth/IBluetoothHid;)Landroid/bluetooth/IBluetoothHid;

    return-void
.end method
