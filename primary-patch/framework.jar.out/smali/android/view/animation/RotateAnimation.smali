.class public Landroid/view/animation/RotateAnimation;
.super Landroid/view/animation/Animation;
.source "RotateAnimation.java"


# instance fields
.field private mFromDegrees:F

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private mToDegrees:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    iput p3, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    iput p4, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    invoke-direct {p0}, Landroid/view/animation/RotateAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor <init>(FFIFIF)V
    .locals 2
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "pivotXType"    # I
    .param p4, "pivotXValue"    # F
    .param p5, "pivotYType"    # I
    .param p6, "pivotYValue"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    iput p4, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    iput p3, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    iput p6, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    iput p5, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    invoke-direct {p0}, Landroid/view/animation/RotateAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v4, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    iput v4, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    iput v3, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    iput v3, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    sget-object v2, Lcom/android/internal/R$styleable;->RotateAnimation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .local v1, "d":Landroid/view/animation/Animation$Description;
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/view/animation/RotateAnimation;->initializePivotPoint()V

    return-void
.end method

.method private initializePivotPoint()V
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    :cond_0
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    :cond_1
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v5, 0x0

    iget v2, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    iget v3, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    iget v4, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    .local v0, "degrees":F
    invoke-virtual {p0}, Landroid/view/animation/RotateAnimation;->getScaleFactor()F

    move-result v1

    .local v1, "scale":F
    iget v2, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    iget v2, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    mul-float/2addr v3, v1

    iget v4, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    mul-float/2addr v4, v1

    invoke-virtual {v2, v0, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/RotateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/RotateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    return-void
.end method
