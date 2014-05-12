.class final Landroid/view/GraphicBuffer$1;
.super Ljava/lang/Object;
.source "GraphicBuffer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GraphicBuffer;
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
        "Landroid/view/GraphicBuffer;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/GraphicBuffer;
    .locals 7
    .parameter "in"

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, width:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, height:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, format:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, usage:I
    #calls: Landroid/view/GraphicBuffer;->nReadGraphicBufferFromParcel(Landroid/os/Parcel;)I
    invoke-static {p1}, Landroid/view/GraphicBuffer;->access$000(Landroid/os/Parcel;)I

    move-result v5

    .local v5, nativeObject:I
    if-eqz v5, :cond_0

    new-instance v0, Landroid/view/GraphicBuffer;

    invoke-direct/range {v0 .. v6}, Landroid/view/GraphicBuffer;-><init>(IIIIILandroid/view/GraphicBuffer$1;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/GraphicBuffer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/GraphicBuffer;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/view/GraphicBuffer;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/GraphicBuffer$1;->newArray(I)[Landroid/view/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method
