.class final Landroid/telephony/RadioAccessFamily$1;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/RadioAccessFamily;
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
        "Landroid/telephony/RadioAccessFamily;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/RadioAccessFamily;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "phoneId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "radioAccessFamily":I
    new-instance v2, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v2, v0, v1}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/telephony/RadioAccessFamily$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/RadioAccessFamily;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/RadioAccessFamily;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/telephony/RadioAccessFamily;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/telephony/RadioAccessFamily$1;->newArray(I)[Landroid/telephony/RadioAccessFamily;

    move-result-object v0

    return-object v0
.end method
