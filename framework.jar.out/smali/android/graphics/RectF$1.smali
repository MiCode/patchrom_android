.class final Landroid/graphics/RectF$1;
.super Ljava/lang/Object;
.source "RectF.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/RectF;
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
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/graphics/RectF;
    .locals 1
    .parameter "in"

    .prologue
    .line 536
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 537
    .local v0, r:Landroid/graphics/RectF;
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->readFromParcel(Landroid/os/Parcel;)V

    .line 538
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Landroid/graphics/RectF$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/graphics/RectF;
    .locals 1
    .parameter "size"

    .prologue
    .line 545
    new-array v0, p1, [Landroid/graphics/RectF;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Landroid/graphics/RectF$1;->newArray(I)[Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method
