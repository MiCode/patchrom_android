.class public final Landroid/nfc/BeamShareData;
.super Ljava/lang/Object;
.source "BeamShareData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/BeamShareData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final flags:I

.field public final ndefMessage:Landroid/nfc/NdefMessage;

.field public final uris:[Landroid/net/Uri;

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/nfc/BeamShareData$1;

    invoke-direct {v0}, Landroid/nfc/BeamShareData$1;-><init>()V

    sput-object v0, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V
    .locals 0
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "uris"    # [Landroid/net/Uri;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "flags"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object p2, p0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object p3, p0, Landroid/nfc/BeamShareData;->userHandle:Landroid/os/UserHandle;

    iput p4, p0, Landroid/nfc/BeamShareData;->flags:I

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
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    array-length v0, v2

    .local v0, "urisLength":I
    :goto_0
    iget-object v2, p0, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-lez v0, :cond_0

    iget-object v2, p0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    :cond_0
    iget-object v2, p0, Landroid/nfc/BeamShareData;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v1, p0, Landroid/nfc/BeamShareData;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .end local v0    # "urisLength":I
    :cond_1
    move v0, v1

    goto :goto_0
.end method
