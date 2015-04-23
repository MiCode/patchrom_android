.class public final Landroid/service/gatekeeper/GateKeeperResponse;
.super Ljava/lang/Object;
.source "GateKeeperResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/gatekeeper/GateKeeperResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_ERROR:I = -0x1

.field public static final RESPONSE_OK:I = 0x0

.field public static final RESPONSE_RETRY:I = 0x1


# instance fields
.field private mPayload:[B

.field private final mResponseCode:I

.field private mShouldReEnroll:Z

.field private mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse$1;

    invoke-direct {v0}, Landroid/service/gatekeeper/GateKeeperResponse$1;-><init>()V

    sput-object v0, Landroid/service/gatekeeper/GateKeeperResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "responseCode"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "timeout"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    return-void
.end method

.method synthetic constructor <init>(ILandroid/service/gatekeeper/GateKeeperResponse$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/service/gatekeeper/GateKeeperResponse$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse;-><init>(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/service/gatekeeper/GateKeeperResponse;I)V
    .locals 0
    .param p0, "x0"    # Landroid/service/gatekeeper/GateKeeperResponse;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse;->setTimeout(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/service/gatekeeper/GateKeeperResponse;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/service/gatekeeper/GateKeeperResponse;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse;->setShouldReEnroll(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/service/gatekeeper/GateKeeperResponse;[B)V
    .locals 0
    .param p0, "x0"    # Landroid/service/gatekeeper/GateKeeperResponse;
    .param p1, "x1"    # [B

    .prologue
    invoke-direct {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse;->setPayload([B)V

    return-void
.end method

.method private setPayload([B)V
    .locals 0
    .param p1, "payload"    # [B

    .prologue
    iput-object p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    return-void
.end method

.method private setShouldReEnroll(Z)V
    .locals 0
    .param p1, "shouldReEnroll"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    return-void
.end method

.method private setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    iput p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getPayload()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    return v0
.end method

.method public getShouldReEnroll()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
