.class Landroid/transition/ChangeTransform$PathAnimatorMatrix;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathAnimatorMatrix"
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mValues:[F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;[F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "values"    # [F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    iput-object p1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    iput v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    invoke-direct {p0}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    return-void
.end method

.method private setAnimationMatrix()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v1, 0x2

    iget v2, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    aput v2, v0, v1

    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v1, 0x5

    iget v2, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    aput v2, v0, v1

    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public setTranslation(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "translation"    # Landroid/graphics/PointF;

    .prologue
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    invoke-direct {p0}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    return-void
.end method

.method public setValues([F)V
    .locals 3
    .param p1, "values"    # [F

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    invoke-direct {p0}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    return-void
.end method
