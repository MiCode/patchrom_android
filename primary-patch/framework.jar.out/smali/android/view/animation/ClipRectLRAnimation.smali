.class public Landroid/view/animation/ClipRectLRAnimation;
.super Landroid/view/animation/ClipRectAnimation;
.source "ClipRectLRAnimation.java"


# direct methods
.method public constructor <init>(IIII)V
    .locals 9
    .param p1, "fromL"    # I
    .param p2, "fromR"    # I
    .param p3, "toL"    # I
    .param p4, "toR"    # I

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, v2

    move v5, p3

    move v6, v2

    move v7, p4

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ClipRectAnimation;-><init>(IIIIIIII)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "it"    # F
    .param p2, "tr"    # Landroid/view/animation/Transformation;

    .prologue
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "oldClipRect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/animation/ClipRectLRAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/animation/ClipRectLRAnimation;->mToRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/view/animation/ClipRectLRAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/animation/ClipRectLRAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/animation/ClipRectLRAnimation;->mToRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/view/animation/ClipRectLRAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    return-void
.end method
