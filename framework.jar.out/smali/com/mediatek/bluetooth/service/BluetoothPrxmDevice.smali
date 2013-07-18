.class public Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
.super Ljava/lang/Object;
.source "BluetoothPrxmDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private capability:B

.field private currentRssi:B

.field private currentState:B

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private id:I

.field private isPathLost:Z

.field private linkLossLevel:B

.field private pathLossLevel:B

.field private pathLossThreshold:B

.field private remoteTxPower:B

.field private updateState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice$1;

    invoke-direct {v0}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice$1;-><init>()V

    sput-object v0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->id:I

    iput-boolean v1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->isPathLost:Z

    iput v1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->updateState:I

    iput-object p1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;B)B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-byte p1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->capability:B

    return p1
.end method

.method static synthetic access$102(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;B)B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-byte p1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->linkLossLevel:B

    return p1
.end method

.method static synthetic access$202(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;B)B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-byte p1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->pathLossLevel:B

    return p1
.end method

.method static synthetic access$302(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;B)B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-byte p1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->pathLossThreshold:B

    return p1
.end method

.method static synthetic access$402(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;B)B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-byte p1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->remoteTxPower:B

    return p1
.end method

.method static synthetic access$502(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;B)B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-byte p1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->currentRssi:B

    return p1
.end method

.method private commitUpdate(I)V
    .locals 1
    .parameter "field"

    .prologue
    iget v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->updateState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->updateState:I

    return-void
.end method


# virtual methods
.method public checkPathLoss(B)Z
    .locals 1
    .parameter "pathLoss"

    .prologue
    iget-byte v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->pathLossThreshold:B

    if-ge v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->isPathLost:Z

    iget-boolean v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->isPathLost:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    .end local p1
    iget-object v1, p1, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCapability()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->capability:B

    return v0
.end method

.method public getCurrentRssi()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->currentRssi:B

    return v0
.end method

.method public getCurrentState()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->currentState:B

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->id:I

    return v0
.end method

.method public getLinkLossLevel()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->linkLossLevel:B

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathLossLevel()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->pathLossLevel:B

    return v0
.end method

.method public getPathLossThreshold()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->pathLossThreshold:B

    return v0
.end method

.method public getRemoteTxPower()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->remoteTxPower:B

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPathLost()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->isPathLost:Z

    return v0
.end method

.method public isUpdateDone()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->updateState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetUpdateState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->updateState:I

    return-void
.end method

.method public setCapability(B)V
    .locals 0
    .parameter "capability"

    .prologue
    iput-byte p1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->capability:B

    return-void
.end method

.method public setCurrentRssi(B)V
    .locals 1
    .parameter "currentRssi"

    .prologue
    iput-byte p1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->currentRssi:B

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->commitUpdate(I)V

    return-void
.end method

.method public setCurrentState(B)V
    .locals 0
    .parameter "currentState"

    .prologue
    iput-byte p1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->currentState:B

    return-void
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "device"

    .prologue
    iput-object p1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    iput p1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->id:I

    return-void
.end method

.method public setLinkLossLevel(B)V
    .locals 0
    .parameter "linkLossLevel"

    .prologue
    iput-byte p1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->linkLossLevel:B

    return-void
.end method

.method public setPathLossLevel(B)V
    .locals 0
    .parameter "pathLossLevel"

    .prologue
    iput-byte p1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->pathLossLevel:B

    return-void
.end method

.method public setPathLossThreshold(B)V
    .locals 0
    .parameter "pathLossThreshold"

    .prologue
    iput-byte p1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->pathLossThreshold:B

    return-void
.end method

.method public setRemoteTxPower(B)V
    .locals 0
    .parameter "remoteTxPower"

    .prologue
    iput-byte p1, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->remoteTxPower:B

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-byte v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->capability:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->linkLossLevel:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->pathLossLevel:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->pathLossThreshold:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->remoteTxPower:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->currentRssi:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
