.class public Landroid/view/animation/TranslateYAnimation;
.super Landroid/view/animation/TranslateAnimation;
.source "TranslateYAnimation.java"


# instance fields
.field mTmpValues:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "fromYDelta"    # F
    .param p2, "toYDelta"    # F

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    return-void
.end method

.method public constructor <init>(IFIF)V
    .locals 9
    .param p1, "fromYType"    # I
    .param p2, "fromYValue"    # F
    .param p3, "toYType"    # I
    .param p4, "toYValue"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, v1

    move v4, v2

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .local v1, "m":Landroid/graphics/Matrix;
    iget-object v2, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget v2, p0, Landroid/view/animation/TranslateYAnimation;->mFromYDelta:F

    iget v3, p0, Landroid/view/animation/TranslateYAnimation;->mToYDelta:F

    iget v4, p0, Landroid/view/animation/TranslateYAnimation;->mFromYDelta:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    .local v0, "dy":F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method
