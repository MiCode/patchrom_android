.class Landroid/bluetooth/BluetoothBipr$1;
.super Ljava/lang/Object;
.source "BluetoothBipr.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothBipr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothBipr;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothBipr;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothBipr$1;->this$0:Landroid/bluetooth/BluetoothBipr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothBipr$1;->this$0:Landroid/bluetooth/BluetoothBipr;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothBipr$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothBipr;

    move-result-object v1

    #setter for: Landroid/bluetooth/BluetoothBipr;->mService:Landroid/bluetooth/IBluetoothBipr;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothBipr;->access$002(Landroid/bluetooth/BluetoothBipr;Landroid/bluetooth/IBluetoothBipr;)Landroid/bluetooth/IBluetoothBipr;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothBipr$1;->this$0:Landroid/bluetooth/BluetoothBipr;

    const/4 v1, 0x0

    #setter for: Landroid/bluetooth/BluetoothBipr;->mService:Landroid/bluetooth/IBluetoothBipr;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothBipr;->access$002(Landroid/bluetooth/BluetoothBipr;Landroid/bluetooth/IBluetoothBipr;)Landroid/bluetooth/IBluetoothBipr;

    return-void
.end method
