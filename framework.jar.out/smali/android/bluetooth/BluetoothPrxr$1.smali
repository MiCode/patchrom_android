.class Landroid/bluetooth/BluetoothPrxr$1;
.super Ljava/lang/Object;
.source "BluetoothPrxr.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPrxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPrxr;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPrxr;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothPrxr$1;->this$0:Landroid/bluetooth/BluetoothPrxr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothPrxr$1;->this$0:Landroid/bluetooth/BluetoothPrxr;

    invoke-static {p2}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/service/IBluetoothPrxr;

    move-result-object v1

    iput-object v1, v0, Landroid/bluetooth/BluetoothPrxr;->mService:Lcom/mediatek/bluetooth/service/IBluetoothPrxr;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothPrxr$1;->this$0:Landroid/bluetooth/BluetoothPrxr;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/bluetooth/BluetoothPrxr;->mService:Lcom/mediatek/bluetooth/service/IBluetoothPrxr;

    return-void
.end method
