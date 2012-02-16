.class public abstract Landroid/view/HardwareCanvas;
.super Landroid/graphics/Canvas;
.source "HardwareCanvas.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    return-void
.end method


# virtual methods
.method public callDrawGLFunction(I)Z
    .locals 1
    .parameter "drawGLFunction"

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method abstract drawDisplayList(Landroid/view/DisplayList;IILandroid/graphics/Rect;)Z
.end method

.method abstract drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method abstract onPostDraw()V
.end method

.method abstract onPreDraw(Landroid/graphics/Rect;)V
.end method

.method abstract outputDisplayList(Landroid/view/DisplayList;)V
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
