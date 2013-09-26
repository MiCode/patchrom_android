.class Landroid/view/GLES20RenderLayer;
.super Landroid/view/GLES20Layer;
.source "GLES20RenderLayer.java"


# instance fields
.field private final mCanvas:Landroid/view/GLES20Canvas;

.field private mLayerHeight:I

.field private mLayerWidth:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 5
    .parameter "width"
    .parameter "height"
    .parameter "isOpaque"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/GLES20Layer;-><init>(IIZ)V

    const/4 v3, 0x2

    new-array v0, v3, [I

    .local v0, layerInfo:[I
    invoke-static {p1, p2, p3, v0}, Landroid/view/GLES20Canvas;->nCreateLayer(IIZ[I)I

    move-result v3

    iput v3, p0, Landroid/view/GLES20RenderLayer;->mLayer:I

    iget v3, p0, Landroid/view/GLES20RenderLayer;->mLayer:I

    if-eqz v3, :cond_1

    aget v3, v0, v2

    iput v3, p0, Landroid/view/GLES20RenderLayer;->mLayerWidth:I

    aget v3, v0, v1

    iput v3, p0, Landroid/view/GLES20RenderLayer;->mLayerHeight:I

    new-instance v3, Landroid/view/GLES20Canvas;

    iget v4, p0, Landroid/view/GLES20RenderLayer;->mLayer:I

    if-nez p3, :cond_0

    :goto_0
    invoke-direct {v3, v4, v1}, Landroid/view/GLES20Canvas;-><init>(IZ)V

    iput-object v3, p0, Landroid/view/GLES20RenderLayer;->mCanvas:Landroid/view/GLES20Canvas;

    new-instance v1, Landroid/view/GLES20Layer$Finalizer;

    iget v2, p0, Landroid/view/GLES20RenderLayer;->mLayer:I

    invoke-direct {v1, v2}, Landroid/view/GLES20Layer$Finalizer;-><init>(I)V

    iput-object v1, p0, Landroid/view/GLES20RenderLayer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    :goto_1
    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iput-object v4, p0, Landroid/view/GLES20RenderLayer;->mCanvas:Landroid/view/GLES20Canvas;

    iput-object v4, p0, Landroid/view/GLES20RenderLayer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    goto :goto_1
.end method


# virtual methods
.method end(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "currentCanvas"

    .prologue
    instance-of v0, p1, Landroid/view/GLES20Canvas;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/GLES20Canvas;

    .end local p1
    invoke-virtual {p1}, Landroid/view/GLES20Canvas;->resume()V

    :cond_0
    return-void
.end method

.method getCanvas()Landroid/view/HardwareCanvas;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/GLES20RenderLayer;->mCanvas:Landroid/view/GLES20Canvas;

    return-object v0
.end method

.method isValid()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/GLES20RenderLayer;->mLayer:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/GLES20RenderLayer;->mLayerWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/view/GLES20RenderLayer;->mLayerHeight:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method redrawLater(Landroid/view/DisplayList;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "displayList"
    .parameter "dirtyRect"

    .prologue
    iget v0, p0, Landroid/view/GLES20RenderLayer;->mLayer:I

    iget-object v1, p0, Landroid/view/GLES20RenderLayer;->mCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v1}, Landroid/view/GLES20Canvas;->getRenderer()I

    move-result v1

    check-cast p1, Landroid/view/GLES20DisplayList;

    .end local p1
    invoke-virtual {p1}, Landroid/view/GLES20DisplayList;->getNativeDisplayList()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nUpdateRenderLayer(IIIIIII)V

    return-void
.end method

.method resize(II)Z
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/GLES20RenderLayer;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iput p1, p0, Landroid/view/GLES20RenderLayer;->mWidth:I

    iput p2, p0, Landroid/view/GLES20RenderLayer;->mHeight:I

    iget v2, p0, Landroid/view/GLES20RenderLayer;->mLayerWidth:I

    if-ne p1, v2, :cond_2

    iget v2, p0, Landroid/view/GLES20RenderLayer;->mLayerHeight:I

    if-eq p2, v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    new-array v0, v2, [I

    .local v0, layerInfo:[I
    iget v2, p0, Landroid/view/GLES20RenderLayer;->mLayer:I

    invoke-static {v2, p1, p2, v0}, Landroid/view/GLES20Canvas;->nResizeLayer(III[I)Z

    move-result v2

    if-eqz v2, :cond_4

    aget v1, v0, v1

    iput v1, p0, Landroid/view/GLES20RenderLayer;->mLayerWidth:I

    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/view/GLES20RenderLayer;->mLayerHeight:I

    .end local v0           #layerInfo:[I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/view/GLES20RenderLayer;->isValid()Z

    move-result v1

    goto :goto_0

    .restart local v0       #layerInfo:[I
    :cond_4
    iput v1, p0, Landroid/view/GLES20RenderLayer;->mLayer:I

    iput v1, p0, Landroid/view/GLES20RenderLayer;->mLayerWidth:I

    iput v1, p0, Landroid/view/GLES20RenderLayer;->mLayerHeight:I

    goto :goto_1
.end method

.method setOpaque(Z)V
    .locals 1
    .parameter "isOpaque"

    .prologue
    iput-boolean p1, p0, Landroid/view/GLES20RenderLayer;->mOpaque:Z

    iget v0, p0, Landroid/view/GLES20RenderLayer;->mLayer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nSetOpaqueLayer(IZ)V

    return-void
.end method

.method setTransform(Landroid/graphics/Matrix;)V
    .locals 0
    .parameter "matrix"

    .prologue
    return-void
.end method

.method start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;
    .locals 1
    .parameter "currentCanvas"

    .prologue
    instance-of v0, p1, Landroid/view/GLES20Canvas;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/GLES20Canvas;

    .end local p1
    invoke-virtual {p1}, Landroid/view/GLES20Canvas;->interrupt()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/GLES20RenderLayer;->getCanvas()Landroid/view/HardwareCanvas;

    move-result-object v0

    return-object v0
.end method
