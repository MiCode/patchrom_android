.class Landroid/bluetooth/BluetoothTetheringDataTracker$1;
.super Ljava/lang/Object;
.source "BluetoothTetheringDataTracker.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothTetheringDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothTetheringDataTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$1;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$1;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    #setter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$002(Landroid/bluetooth/BluetoothTetheringDataTracker;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$1;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    const/4 v1, 0x0

    #setter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$002(Landroid/bluetooth/BluetoothTetheringDataTracker;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    return-void
.end method
