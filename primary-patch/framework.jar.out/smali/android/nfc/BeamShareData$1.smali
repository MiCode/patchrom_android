.class final Landroid/nfc/BeamShareData$1;
.super Ljava/lang/Object;
.source "BeamShareData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/BeamShareData;
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
        "Landroid/nfc/BeamShareData;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/BeamShareData;
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    .local v3, "uris":[Landroid/net/Uri;
    const-class v5, Landroid/nfc/NdefMessage;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/nfc/NdefMessage;

    .local v1, "msg":Landroid/nfc/NdefMessage;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "numUris":I
    if-lez v2, :cond_0

    new-array v3, v2, [Landroid/net/Uri;

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v5}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    :cond_0
    const-class v5, Landroid/os/UserHandle;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .local v4, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "flags":I
    new-instance v5, Landroid/nfc/BeamShareData;

    invoke-direct {v5, v1, v3, v4, v0}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    return-object v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/nfc/BeamShareData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/BeamShareData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/BeamShareData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/nfc/BeamShareData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/nfc/BeamShareData$1;->newArray(I)[Landroid/nfc/BeamShareData;

    move-result-object v0

    return-object v0
.end method
