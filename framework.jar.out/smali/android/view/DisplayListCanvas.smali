.class public Landroid/view/DisplayListCanvas;
.super Landroid/graphics/Canvas;
.source "DisplayListCanvas.java"


# static fields
.field private static final POOL_LIMIT:I = 0x19

.field private static sIsAvailable:Z

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/DisplayListCanvas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHeight:I

.field mNode:Landroid/view/RenderNode;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-static {}, Landroid/view/DisplayListCanvas;->nIsAvailable()Z

    move-result v0

    sput-boolean v0, Landroid/view/DisplayListCanvas;->sIsAvailable:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/view/DisplayListCanvas;->nCreateDisplayListCanvas()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Canvas;-><init>(J)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/DisplayListCanvas;->mDensity:I

    return-void
.end method

.method static isAvailable()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/view/DisplayListCanvas;->sIsAvailable:Z

    return v0
.end method

.method private static native nCallDrawGLFunction(JJ)V
.end method

.method private static native nCreateDisplayListCanvas()J
.end method

.method private static native nDrawCircle(JJJJJ)V
.end method

.method private static native nDrawLayer(JJFF)V
.end method

.method private static native nDrawPatch(JLandroid/graphics/Bitmap;JFFFFJ)V
.end method

.method private static native nDrawRects(JJJ)V
.end method

.method private static native nDrawRenderNode(JJ)V
.end method

.method private static native nDrawRoundRect(JJJJJJJJ)V
.end method

.method private static native nFinish(J)V
.end method

.method protected static native nFinishRecording(J)J
.end method

.method private static native nGetMaximumTextureHeight()I
.end method

.method private static native nGetMaximumTextureWidth()I
.end method

.method private static native nInsertReorderBarrier(JZ)V
.end method

.method private static native nIsAvailable()Z
.end method

.method private static native nPrepare(J)V
.end method

.method private static native nPrepareDirty(JIIII)V
.end method

.method private static native nSetHighContrastText(JZ)V
.end method

.method private static native nSetViewport(JII)V
.end method

.method static obtain(Landroid/view/RenderNode;)Landroid/view/DisplayListCanvas;
    .locals 3
    .param p0, "node"    # Landroid/view/RenderNode;

    .prologue
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "node cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DisplayListCanvas;

    .local v0, "canvas":Landroid/view/DisplayListCanvas;
    if-nez v0, :cond_1

    new-instance v0, Landroid/view/DisplayListCanvas;

    .end local v0    # "canvas":Landroid/view/DisplayListCanvas;
    invoke-direct {v0}, Landroid/view/DisplayListCanvas;-><init>()V

    .restart local v0    # "canvas":Landroid/view/DisplayListCanvas;
    :cond_1
    iput-object p0, v0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    return-object v0
.end method


# virtual methods
.method public callDrawGLFunction2(J)V
    .locals 3
    .param p1, "drawGLFunction"    # J

    .prologue
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/DisplayListCanvas;->nCallDrawGLFunction(JJ)V

    return-void
.end method

.method public drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "cy":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "radius":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v4

    invoke-virtual {p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v6

    invoke-virtual {p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v8

    invoke-static/range {v0 .. v9}, Landroid/view/DisplayListCanvas;->nDrawCircle(JJJJJ)V

    return-void
.end method

.method drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "layer"    # Landroid/view/HardwareLayer;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    invoke-virtual {p1, p4}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getLayerHandle()J

    move-result-wide v2

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/view/DisplayListCanvas;->nDrawLayer(JJFF)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 12
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    invoke-virtual {p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v3}, Landroid/view/DisplayListCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    if-nez p3, :cond_0

    const-wide/16 v10, 0x0

    .local v10, "nativePaint":J
    :goto_0
    iget-wide v1, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    iget-wide v4, p1, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v0

    invoke-static/range {v1 .. v11}, Landroid/view/DisplayListCanvas;->nDrawPatch(JLandroid/graphics/Bitmap;JFFFFJ)V

    return-void

    .end local v10    # "nativePaint":J
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    goto :goto_0
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 12
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    invoke-virtual {p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v3}, Landroid/view/DisplayListCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    if-nez p3, :cond_0

    const-wide/16 v10, 0x0

    .local v10, "nativePaint":J
    :goto_0
    iget-wide v1, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    iget-wide v4, p1, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v6, p2, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->top:F

    iget v8, p2, Landroid/graphics/RectF;->right:F

    iget v9, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v1 .. v11}, Landroid/view/DisplayListCanvas;->nDrawPatch(JLandroid/graphics/Bitmap;JFFFFJ)V

    return-void

    .end local v10    # "nativePaint":J
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    goto :goto_0
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget-wide v2, v2, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/view/DisplayListCanvas;->nDrawRects(JJJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawRenderNode(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "renderNode"    # Landroid/view/RenderNode;

    .prologue
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->nDrawRenderNode(JJ)V

    return-void
.end method

.method public drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "left":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "top":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "right":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "bottom":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p5, "rx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p6, "ry":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p7, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v10

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v12

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v14

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v16

    invoke-static/range {v2 .. v17}, Landroid/view/DisplayListCanvas;->nDrawRoundRect(JJJJJJJJ)V

    return-void
.end method

.method finishRecording()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/view/DisplayListCanvas;->nFinishRecording(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/DisplayListCanvas;->mHeight:I

    return v0
.end method

.method public getMaximumBitmapHeight()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/view/DisplayListCanvas;->nGetMaximumTextureHeight()I

    move-result v0

    return v0
.end method

.method public getMaximumBitmapWidth()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/view/DisplayListCanvas;->nGetMaximumTextureWidth()I

    move-result v0

    return v0
.end method

.method getRenderer()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/DisplayListCanvas;->mWidth:I

    return v0
.end method

.method public insertInorderBarrier()V
    .locals 3

    .prologue
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/DisplayListCanvas;->nInsertReorderBarrier(JZ)V

    return-void
.end method

.method public insertReorderBarrier()V
    .locals 3

    .prologue
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/view/DisplayListCanvas;->nInsertReorderBarrier(JZ)V

    return-void
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isRecordingFor(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPostDraw()V
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/view/DisplayListCanvas;->nFinish(J)V

    return-void
.end method

.method public onPreDraw(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Landroid/view/DisplayListCanvas;->nPrepareDirty(JIIII)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/view/DisplayListCanvas;->nPrepare(J)V

    goto :goto_0
.end method

.method recycle()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    sget-object v0, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDensity(I)V
    .locals 0
    .param p1, "density"    # I

    .prologue
    return-void
.end method

.method public setHighContrastText(Z)V
    .locals 2
    .param p1, "highContrastText"    # Z

    .prologue
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/view/DisplayListCanvas;->nSetHighContrastText(JZ)V

    return-void
.end method

.method public setViewport(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    iput p1, p0, Landroid/view/DisplayListCanvas;->mWidth:I

    iput p2, p0, Landroid/view/DisplayListCanvas;->mHeight:I

    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/DisplayListCanvas;->nSetViewport(JII)V

    return-void
.end method
