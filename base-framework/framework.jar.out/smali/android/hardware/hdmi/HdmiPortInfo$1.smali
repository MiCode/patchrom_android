.class final Landroid/hardware/hdmi/HdmiPortInfo$1;
.super Ljava/lang/Object;
.source "HdmiPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiPortInfo;
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
        "Landroid/hardware/hdmi/HdmiPortInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "address":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v0, :cond_0

    move v4, v0

    .local v4, "cec":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v0, :cond_1

    move v6, v0

    .local v6, "arc":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v0, :cond_2

    move v5, v0

    .local v5, "mhl":Z
    :goto_2
    new-instance v0, Landroid/hardware/hdmi/HdmiPortInfo;

    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(IIIZZZ)V

    return-object v0

    .end local v4    # "cec":Z
    .end local v5    # "mhl":Z
    .end local v6    # "arc":Z
    :cond_0
    move v4, v7

    goto :goto_0

    .restart local v4    # "cec":Z
    :cond_1
    move v6, v7

    goto :goto_1

    .restart local v6    # "arc":Z
    :cond_2
    move v5, v7

    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiPortInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/hardware/hdmi/HdmiPortInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiPortInfo$1;->newArray(I)[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    return-object v0
.end method
