.class public final Landroid/bluetooth/BluetoothActivityEnergyInfo;
.super Ljava/lang/Object;
.source "BluetoothActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BT_STACK_STATE_INVALID:I = 0x0

.field public static final BT_STACK_STATE_STATE_ACTIVE:I = 0x1

.field public static final BT_STACK_STATE_STATE_IDLE:I = 0x3

.field public static final BT_STACK_STATE_STATE_SCANNING:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothActivityEnergyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBluetoothStackState:I

.field private final mControllerEnergyUsed:J

.field private final mControllerIdleTimeMs:J

.field private final mControllerRxTimeMs:J

.field private final mControllerTxTimeMs:J

.field private final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/bluetooth/BluetoothActivityEnergyInfo$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIJJJJ)V
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "stackState"    # I
    .param p4, "txTime"    # J
    .param p6, "rxTime"    # J
    .param p8, "idleTime"    # J
    .param p10, "energyUsed"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    iput p3, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    iput-wide p4, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    iput-wide p6, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    iput-wide p8, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    iput-wide p10, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getBluetoothStackState()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    return v0
.end method

.method public getControllerEnergyUsed()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    return-wide v0
.end method

.method public getControllerIdleTimeMillis()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    return-wide v0
.end method

.method public getControllerRxTimeMillis()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    return-wide v0
.end method

.method public getControllerTxTimeMillis()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothActivityEnergyInfo{ mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBluetoothStackState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerTxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerRxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerIdleTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerEnergyUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
