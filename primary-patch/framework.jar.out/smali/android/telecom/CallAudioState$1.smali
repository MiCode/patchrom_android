.class final Landroid/telecom/CallAudioState$1;
.super Ljava/lang/Object;
.source "CallAudioState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallAudioState;
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
        "Landroid/telecom/CallAudioState;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/CallAudioState;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    .local v0, "isMuted":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "route":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "supportedRouteMask":I
    new-instance v3, Landroid/telecom/CallAudioState;

    invoke-direct {v3, v0, v1, v2}, Landroid/telecom/CallAudioState;-><init>(ZII)V

    return-object v3

    .end local v0    # "isMuted":Z
    .end local v1    # "route":I
    .end local v2    # "supportedRouteMask":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/telecom/CallAudioState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/CallAudioState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/CallAudioState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/telecom/CallAudioState$1;->newArray(I)[Landroid/telecom/CallAudioState;

    move-result-object v0

    return-object v0
.end method
