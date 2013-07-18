.class final Landroid/telephony/SmsParameters$1;
.super Ljava/lang/Object;
.source "SmsParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsParameters;
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
        "Landroid/telephony/SmsParameters;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsParameters;
    .locals 5
    .parameter "source"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, format:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, vp:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, pid:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, dcs:I
    new-instance v4, Landroid/telephony/SmsParameters;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/telephony/SmsParameters;-><init>(IIII)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/telephony/SmsParameters$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsParameters;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/SmsParameters;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/telephony/SmsParameters;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/telephony/SmsParameters$1;->newArray(I)[Landroid/telephony/SmsParameters;

    move-result-object v0

    return-object v0
.end method
