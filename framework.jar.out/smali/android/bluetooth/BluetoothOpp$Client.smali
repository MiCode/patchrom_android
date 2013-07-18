.class public Landroid/bluetooth/BluetoothOpp$Client;
.super Landroid/bluetooth/BluetoothProxy;
.source "BluetoothOpp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothOpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Client"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const-class v0, Landroid/bluetooth/BluetoothOpp$Client;

    invoke-direct {p0, p1, v0}, Landroid/bluetooth/BluetoothProxy;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/bluetooth/BluetoothProxy;->close()V

    return-void
.end method

.method public bridge synthetic connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-super {p0, p1}, Landroid/bluetooth/BluetoothProxy;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-super {p0, p1}, Landroid/bluetooth/BluetoothProxy;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getConnectedDevices()Ljava/util/Set;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/bluetooth/BluetoothProxy;->getConnectedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-super {p0, p1}, Landroid/bluetooth/BluetoothProxy;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method
