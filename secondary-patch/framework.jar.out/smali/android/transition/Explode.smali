.class public Landroid/transition/Explode;
.super Landroid/transition/Visibility;
.source "Explode.java"


# static fields
.field private static final PROPNAME_SCREEN_BOUNDS:Ljava/lang/String; = "android:explode:screenBounds"

.field private static final TAG:Ljava/lang/String; = "Explode"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mTempLoc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    new-instance v0, Landroid/transition/CircularPropagation;

    invoke-direct {v0}, Landroid/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/transition/Explode;->setPropagation(Landroid/transition/TransitionPropagation;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    new-instance v0, Landroid/transition/CircularPropagation;

    invoke-direct {v0}, Landroid/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/transition/Explode;->setPropagation(Landroid/transition/TransitionPropagation;)V

    return-void
.end method

.method private static calculateMaxDistance(Landroid/view/View;II)D
    .locals 6
    .param p0, "sceneRoot"    # Landroid/view/View;
    .param p1, "focalX"    # I
    .param p2, "focalY"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "maxX":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "maxY":I
    int-to-double v2, v0

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    return-wide v2
.end method

.method private calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V
    .locals 22
    .param p1, "sceneRoot"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "outVector"    # [I

    .prologue
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/transition/Explode;->mTempLoc:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/transition/Explode;->mTempLoc:[I

    const/16 v18, 0x0

    aget v7, v11, v18

    .local v7, "sceneRootX":I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/transition/Explode;->mTempLoc:[I

    const/16 v18, 0x1

    aget v10, v11, v18

    .local v10, "sceneRootY":I
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Explode;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v4

    .local v4, "epicenter":Landroid/graphics/Rect;
    if-nez v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    add-int v5, v11, v18

    .local v5, "focalX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    add-int v6, v11, v18

    .local v6, "focalY":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .local v2, "centerX":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .local v3, "centerY":I
    sub-int v11, v2, v5

    int-to-double v14, v11

    .local v14, "xVector":D
    sub-int v11, v3, v6

    int-to-double v0, v11

    move-wide/from16 v16, v0

    .local v16, "yVector":D
    const-wide/16 v18, 0x0

    cmpl-double v11, v14, v18

    if-nez v11, :cond_0

    const-wide/16 v18, 0x0

    cmpl-double v11, v16, v18

    if-nez v11, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v14, v18, v20

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v16, v18, v20

    :cond_0
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    .local v12, "vectorSize":D
    div-double/2addr v14, v12

    div-double v16, v16, v12

    sub-int v11, v5, v7

    sub-int v18, v6, v10

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v11, v1}, Landroid/transition/Explode;->calculateMaxDistance(Landroid/view/View;II)D

    move-result-wide v8

    .local v8, "maxDistance":D
    const/4 v11, 0x0

    mul-double v18, v8, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    aput v18, p3, v11

    const/4 v11, 0x1

    mul-double v18, v8, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    aput v18, p3, v11

    return-void

    .end local v2    # "centerX":I
    .end local v3    # "centerY":I
    .end local v5    # "focalX":I
    .end local v6    # "focalY":I
    .end local v8    # "maxDistance":D
    .end local v12    # "vectorSize":D
    .end local v14    # "xVector":D
    .end local v16    # "yVector":D
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    .restart local v5    # "focalX":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    .restart local v6    # "focalY":I
    goto :goto_0
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 8
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Landroid/transition/Explode;->mTempLoc:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v5, p0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v6, 0x0

    aget v1, v5, v6

    .local v1, "left":I
    iget-object v5, p0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v6, 0x1

    aget v3, v5, v6

    .local v3, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int v2, v1, v5

    .local v2, "right":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v0, v3, v5

    .local v0, "bottom":I
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:explode:screenBounds"

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    invoke-direct {p0, p1}, Landroid/transition/Explode;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    invoke-direct {p0, p1}, Landroid/transition/Explode;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:explode:screenBounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .local v10, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .local v6, "endX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .local v7, "endY":F
    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    invoke-direct {p0, p1, v10, v0}, Landroid/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    add-float v4, v6, v0

    .local v4, "startX":F
    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    add-float v5, v7, v0

    .local v5, "startY":F
    iget v2, v10, Landroid/graphics/Rect;->left:I

    iget v3, v10, Landroid/graphics/Rect;->top:I

    sget-object v8, Landroid/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p4

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:explode:screenBounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .local v10, "bounds":Landroid/graphics/Rect;
    iget v2, v10, Landroid/graphics/Rect;->left:I

    .local v2, "viewPosX":I
    iget v3, v10, Landroid/graphics/Rect;->top:I

    .local v3, "viewPosY":I
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    .local v4, "startX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .local v5, "startY":F
    move v6, v4

    .local v6, "endX":F
    move v7, v5

    .local v7, "endY":F
    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const v1, 0x1020051

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v11, v0

    check-cast v11, [I

    .local v11, "interruptedPosition":[I
    if-eqz v11, :cond_1

    const/4 v0, 0x0

    aget v0, v11, v0

    iget v1, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v6, v0

    const/4 v0, 0x1

    aget v0, v11, v0

    iget v1, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v7, v0

    const/4 v0, 0x0

    aget v0, v11, v0

    const/4 v1, 0x1

    aget v1, v11, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1
    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    invoke-direct {p0, p1, v10, v0}, Landroid/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr v6, v0

    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr v7, v0

    sget-object v8, Landroid/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p3

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method
