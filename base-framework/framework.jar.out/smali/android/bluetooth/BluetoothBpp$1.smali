.class Landroid/bluetooth/BluetoothBpp$1;
.super Ljava/lang/Object;
.source "BluetoothBpp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothBpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothBpp;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothBpp;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothBpp$1;->this$0:Landroid/bluetooth/BluetoothBpp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothBpp$1;->this$0:Landroid/bluetooth/BluetoothBpp;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothBpp$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothBpp;

    move-result-object v1

    #setter for: Landroid/bluetooth/BluetoothBpp;->mService:Landroid/bluetooth/IBluetoothBpp;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothBpp;->access$002(Landroid/bluetooth/BluetoothBpp;Landroid/bluetooth/IBluetoothBpp;)Landroid/bluetooth/IBluetoothBpp;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothBpp$1;->this$0:Landroid/bluetooth/BluetoothBpp;

    const/4 v1, 0x0

    #setter for: Landroid/bluetooth/BluetoothBpp;->mService:Landroid/bluetooth/IBluetoothBpp;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothBpp;->access$002(Landroid/bluetooth/BluetoothBpp;Landroid/bluetooth/IBluetoothBpp;)Landroid/bluetooth/IBluetoothBpp;

    return-void
.end method
