.class Landroid/bluetooth/BluetoothBipi$1;
.super Ljava/lang/Object;
.source "BluetoothBipi.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothBipi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothBipi;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothBipi;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothBipi$1;->this$0:Landroid/bluetooth/BluetoothBipi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothBipi$1;->this$0:Landroid/bluetooth/BluetoothBipi;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothBipi$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothBipi;

    move-result-object v1

    #setter for: Landroid/bluetooth/BluetoothBipi;->mService:Landroid/bluetooth/IBluetoothBipi;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothBipi;->access$002(Landroid/bluetooth/BluetoothBipi;Landroid/bluetooth/IBluetoothBipi;)Landroid/bluetooth/IBluetoothBipi;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothBipi$1;->this$0:Landroid/bluetooth/BluetoothBipi;

    const/4 v1, 0x0

    #setter for: Landroid/bluetooth/BluetoothBipi;->mService:Landroid/bluetooth/IBluetoothBipi;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothBipi;->access$002(Landroid/bluetooth/BluetoothBipi;Landroid/bluetooth/IBluetoothBipi;)Landroid/bluetooth/IBluetoothBipi;

    return-void
.end method
