.class Landroid/bluetooth/BluetoothFtp$Remote$1;
.super Ljava/lang/Object;
.source "BluetoothFtp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothFtp$Remote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothFtp$Remote;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothFtp$Remote;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothFtp$Remote$1;->this$0:Landroid/bluetooth/BluetoothFtp$Remote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothFtp$Remote$1;->this$0:Landroid/bluetooth/BluetoothFtp$Remote;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothFtpCtrl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothFtpCtrl;

    move-result-object v1

    iput-object v1, v0, Landroid/bluetooth/BluetoothFtp$Remote;->mService:Landroid/bluetooth/IBluetoothFtpCtrl;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothFtp$Remote$1;->this$0:Landroid/bluetooth/BluetoothFtp$Remote;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/bluetooth/BluetoothFtp$Remote;->mService:Landroid/bluetooth/IBluetoothFtpCtrl;

    return-void
.end method
