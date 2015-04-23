.class public Landroid/security/keymaster/OperationResult;
.super Ljava/lang/Object;
.source "OperationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/security/keymaster/OperationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final inputConsumed:I

.field public final operationHandle:J

.field public final outParams:Landroid/security/keymaster/KeymasterArguments;

.field public final output:[B

.field public final resultCode:I

.field public final token:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/security/keymaster/OperationResult$1;

    invoke-direct {v0}, Landroid/security/keymaster/OperationResult$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;JI[BLandroid/security/keymaster/KeymasterArguments;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "operationHandle"    # J
    .param p5, "inputConsumed"    # I
    .param p6, "output"    # [B
    .param p7, "outParams"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/keymaster/OperationResult;->resultCode:I

    iput-object p2, p0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    iput-wide p3, p0, Landroid/security/keymaster/OperationResult;->operationHandle:J

    iput p5, p0, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    iput-object p6, p0, Landroid/security/keymaster/OperationResult;->output:[B

    iput-object p7, p0, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/security/keymaster/OperationResult;->operationHandle:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keymaster/OperationResult;->output:[B

    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArguments;

    iput-object v0, p0, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-wide v0, p0, Landroid/security/keymaster/OperationResult;->operationHandle:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
