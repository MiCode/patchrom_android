.class public abstract Landroid/media/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Image$Plane;
    }
.end annotation


# instance fields
.field private mCropRect:Landroid/graphics/Rect;

.field protected mIsImageValid:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Image;->mIsImageValid:Z

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Landroid/media/Image;->mCropRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/media/Image;->mCropRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public abstract getFormat()I
.end method

.method public abstract getHeight()I
.end method

.method getNativeContext()J
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getOwner()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPlanes()[Landroid/media/Image$Plane;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getWidth()I
.end method

.method isAttachable()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    const/4 v0, 0x0

    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .end local p1    # "cropRect":Landroid/graphics/Rect;
    .local v0, "cropRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    move-object p1, v0

    .end local v0    # "cropRect":Landroid/graphics/Rect;
    .restart local p1    # "cropRect":Landroid/graphics/Rect;
    :cond_1
    iput-object p1, p0, Landroid/media/Image;->mCropRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    return-void
.end method

.method protected throwISEIfImageIsInvalid()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/media/Image;->mIsImageValid:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
