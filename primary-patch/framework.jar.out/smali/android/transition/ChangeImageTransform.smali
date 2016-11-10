.class public Landroid/transition/ChangeImageTransform;
.super Landroid/transition/Transition;
.source "ChangeImageTransform.java"


# static fields
.field private static ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeImageTransform:bounds"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeImageTransform:matrix"

.field private static final TAG:Ljava/lang/String; = "ChangeImageTransform"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeImageTransform:matrix"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeImageTransform:bounds"

    aput-object v2, v0, v1

    sput-object v0, Landroid/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    new-instance v0, Landroid/transition/ChangeImageTransform$1;

    invoke-direct {v0}, Landroid/transition/ChangeImageTransform$1;-><init>()V

    sput-object v0, Landroid/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    new-instance v0, Landroid/transition/ChangeImageTransform$2;

    const-class v1, Landroid/graphics/Matrix;

    const-string v2, "animatedTransform"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeImageTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 19
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v16, v0

    .local v16, "view":Landroid/view/View;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-eqz v17, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v6, v16

    check-cast v6, Landroid/widget/ImageView;

    .local v6, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .local v15, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v7

    .local v7, "left":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v14

    .local v14, "top":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v10

    .local v10, "right":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v1

    .local v1, "bottom":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7, v14, v10, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v2, "bounds":Landroid/graphics/Rect;
    const-string v17, "android:changeImageTransform:bounds"

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v11

    .local v11, "scaleType":Landroid/widget/ImageView$ScaleType;
    sget-object v17, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v17

    if-ne v11, v0, :cond_4

    invoke-virtual {v6}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v17

    if-nez v17, :cond_2

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9, v8}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .local v9, "matrix":Landroid/graphics/Matrix;
    move-object v8, v9

    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .restart local v8    # "matrix":Landroid/graphics/Matrix;
    :goto_1
    const-string v17, "android:changeImageTransform:matrix"

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .local v5, "drawableWidth":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .local v4, "drawableHeight":I
    if-lez v5, :cond_3

    if-lez v4, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    div-float v12, v17, v18

    .local v12, "scaleX":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v4

    move/from16 v18, v0

    div-float v13, v17, v18

    .local v13, "scaleY":F
    new-instance v8, Landroid/graphics/Matrix;

    .end local v8    # "matrix":Landroid/graphics/Matrix;
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .restart local v8    # "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v8, v12, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .end local v12    # "scaleX":F
    .end local v13    # "scaleY":F
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .end local v4    # "drawableHeight":I
    .end local v5    # "drawableWidth":I
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    :cond_4
    new-instance v8, Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .restart local v8    # "matrix":Landroid/graphics/Matrix;
    goto :goto_1
.end method

.method private createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "startMatrix"    # Landroid/graphics/Matrix;
    .param p3, "endMatrix"    # Landroid/graphics/Matrix;

    .prologue
    sget-object v0, Landroid/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    new-instance v1, Landroid/transition/TransitionUtils$MatrixEvaluator;

    invoke-direct {v1}, Landroid/transition/TransitionUtils$MatrixEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Matrix;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {p1, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v4, 0x0

    sget-object v0, Landroid/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    sget-object v1, Landroid/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Matrix;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    invoke-static {p1, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    invoke-direct {p0, p1}, Landroid/transition/ChangeImageTransform;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    invoke-direct {p0, p1}, Landroid/transition/ChangeImageTransform;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v10, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeImageTransform:bounds"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .local v8, "startBounds":Landroid/graphics/Rect;
    iget-object v10, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeImageTransform:bounds"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .local v4, "endBounds":Landroid/graphics/Rect;
    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    iget-object v10, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeImageTransform:matrix"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Matrix;

    .local v9, "startMatrix":Landroid/graphics/Matrix;
    iget-object v10, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeImageTransform:matrix"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Matrix;

    .local v5, "endMatrix":Landroid/graphics/Matrix;
    if-nez v9, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    if-eqz v9, :cond_6

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_3
    const/4 v7, 0x1

    .local v7, "matricesEqual":Z
    :goto_1
    invoke-virtual {v8, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez v7, :cond_0

    :cond_4
    iget-object v6, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v6, Landroid/widget/ImageView;

    .local v6, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .local v3, "drawableWidth":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .local v2, "drawableHeight":I
    if-eqz v3, :cond_5

    if-nez v2, :cond_7

    :cond_5
    invoke-direct {p0, v6}, Landroid/transition/ChangeImageTransform;->createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "animator":Landroid/animation/ObjectAnimator;
    goto :goto_0

    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawableHeight":I
    .end local v3    # "drawableWidth":I
    .end local v6    # "imageView":Landroid/widget/ImageView;
    .end local v7    # "matricesEqual":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "drawableHeight":I
    .restart local v3    # "drawableWidth":I
    .restart local v6    # "imageView":Landroid/widget/ImageView;
    .restart local v7    # "matricesEqual":Z
    :cond_7
    if-nez v9, :cond_8

    sget-object v9, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_8
    if-nez v5, :cond_9

    sget-object v5, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_9
    sget-object v10, Landroid/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    invoke-virtual {v10, v6, v9}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v6, v9, v5}, Landroid/transition/ChangeImageTransform;->createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
