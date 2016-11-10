.class public Landroid/view/animation/ClipRectTBAnimation;
.super Landroid/view/animation/ClipRectAnimation;
.source "ClipRectTBAnimation.java"


# direct methods
.method public constructor <init>(IIII)V
    .locals 9
    .param p1, "fromT"    # I
    .param p2, "fromB"    # I
    .param p3, "toT"    # I
    .param p4, "toB"    # I

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, v1

    move v4, p2

    move v5, v1

    move v6, p3

    move v7, v1

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ClipRectAnimation;-><init>(IIIIIIII)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7
    .param p1, "it"    # F
    .param p2, "tr"    # Landroid/view/animation/Transformation;

    .prologue
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "oldClipRect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/animation/ClipRectTBAnimation;->mToRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/view/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroid/view/animation/ClipRectTBAnimation;->mToRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/view/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    return-void
.end method
