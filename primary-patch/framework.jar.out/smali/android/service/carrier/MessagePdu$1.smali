.class final Landroid/service/carrier/MessagePdu$1;
.super Ljava/lang/Object;
.source "MessagePdu.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/MessagePdu;
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
        "Landroid/service/carrier/MessagePdu;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/carrier/MessagePdu;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "size":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x0

    .local v1, "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_0
    new-instance v3, Landroid/service/carrier/MessagePdu;

    invoke-direct {v3, v1}, Landroid/service/carrier/MessagePdu;-><init>(Ljava/util/List;)V

    return-object v3

    .end local v1    # "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v1    # "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/service/carrier/MessagePdu$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/carrier/MessagePdu;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/carrier/MessagePdu;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/service/carrier/MessagePdu;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/service/carrier/MessagePdu$1;->newArray(I)[Landroid/service/carrier/MessagePdu;

    move-result-object v0

    return-object v0
.end method
