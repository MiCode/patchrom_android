.class final Landroid/net/NetworkRequest$1;
.super Ljava/lang/Object;
.source "NetworkRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkRequest;
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
        "Landroid/net/NetworkRequest;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkRequest;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .local v1, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "legacyType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "requestId":I
    new-instance v3, Landroid/net/NetworkRequest;

    invoke-direct {v3, v1, v0, v2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    .local v3, "result":Landroid/net/NetworkRequest;
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/NetworkRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetworkRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/NetworkRequest$1;->newArray(I)[Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0
.end method
