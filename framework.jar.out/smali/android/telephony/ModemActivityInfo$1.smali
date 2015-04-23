.class final Landroid/telephony/ModemActivityInfo$1;
.super Ljava/lang/Object;
.source "ModemActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ModemActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/telephony/ModemActivityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ModemActivityInfo;
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x5

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .local v2, "timestamp":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "sleepTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "idleTimeMs":I
    new-array v6, v9, [I

    .local v6, "txTimeMs":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aput v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "rxTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "energyUsed":I
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    invoke-direct/range {v1 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/telephony/ModemActivityInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ModemActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/ModemActivityInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/telephony/ModemActivityInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/telephony/ModemActivityInfo$1;->newArray(I)[Landroid/telephony/ModemActivityInfo;

    move-result-object v0

    return-object v0
.end method
