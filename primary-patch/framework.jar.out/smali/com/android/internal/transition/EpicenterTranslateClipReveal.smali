.class public Lcom/android/internal/transition/EpicenterTranslateClipReveal;
.super Landroid/transition/Visibility;
.source "EpicenterTranslateClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;,
        Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;,
        Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    }
.end annotation


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:epicenterReveal:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:epicenterReveal:clip"

.field private static final PROPNAME_TRANSLATE_X:Ljava/lang/String; = "android:epicenterReveal:translateX"

.field private static final PROPNAME_TRANSLATE_Y:Ljava/lang/String; = "android:epicenterReveal:translateY"

.field private static final PROPNAME_TRANSLATE_Z:Ljava/lang/String; = "android:epicenterReveal:translateZ"

.field private static final PROPNAME_Z:Ljava/lang/String; = "android:epicenterReveal:z"


# instance fields
.field private final mInterpolatorX:Landroid/animation/TimeInterpolator;

.field private final mInterpolatorY:Landroid/animation/TimeInterpolator;

.field private final mInterpolatorZ:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v4, Lcom/android/internal/R$styleable;->EpicenterTranslateClipReveal:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .local v1, "interpolatorX":I
    if-eqz v1, :cond_0

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .local v2, "interpolatorY":I
    if-eqz v2, :cond_1

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .local v3, "interpolatorZ":I
    if-eqz v3, :cond_2

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .end local v2    # "interpolatorY":I
    .end local v3    # "interpolatorZ":I
    :cond_0
    sget-object v4, Lcom/android/internal/transition/TransitionConstants;->LINEAR_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .restart local v2    # "interpolatorY":I
    :cond_1
    sget-object v4, Lcom/android/internal/transition/TransitionConstants;->FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    goto :goto_1

    .restart local v3    # "interpolatorZ":I
    :cond_2
    sget-object v4, Lcom/android/internal/transition/TransitionConstants;->FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    goto :goto_2
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 6
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v5, 0x0

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:bounds"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:translateX"

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:translateY"

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:translateZ"

    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:z"

    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .local v1, "clip":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:clip"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startX"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .param p2, "startY"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .param p3, "startZ"    # F
    .param p4, "endX"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .param p5, "endY"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .param p6, "endZ"    # F
    .param p7, "endValues"    # Landroid/transition/TransitionValues;
    .param p8, "interpolatorX"    # Landroid/animation/TimeInterpolator;
    .param p9, "interpolatorY"    # Landroid/animation/TimeInterpolator;
    .param p10, "interpolatorZ"    # Landroid/animation/TimeInterpolator;

    .prologue
    new-instance v6, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;-><init>(Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;)V

    .local v6, "evaluator":Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;
    sget-object v10, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput p3, v11, v12

    const/4 v12, 0x1

    aput p6, v11, v12

    invoke-static {p0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .local v4, "animZ":Landroid/animation/ObjectAnimator;
    if-eqz p10, :cond_0

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    new-instance v7, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;

    const/16 v10, 0x78

    invoke-direct {v7, v10}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;-><init>(C)V

    .local v7, "propX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;
    const/4 v10, 0x2

    new-array v10, v10, [Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p4, v10, v11

    invoke-static {p0, v7, v6, v10}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "animX":Landroid/animation/ObjectAnimator;
    if-eqz p8, :cond_1

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1
    new-instance v8, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;

    const/16 v10, 0x79

    invoke-direct {v8, v10}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;-><init>(C)V

    .local v8, "propY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;
    const/4 v10, 0x2

    new-array v10, v10, [Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    const/4 v11, 0x0

    aput-object p2, v10, v11

    const/4 v11, 0x1

    aput-object p5, v10, v11

    invoke-static {p0, v8, v6, v10}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, "animY":Landroid/animation/ObjectAnimator;
    if-eqz p9, :cond_2

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_2
    move-object/from16 v0, p7

    iget-object v10, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:epicenterReveal:clip"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .local v9, "terminalClip":Landroid/graphics/Rect;
    new-instance v5, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;

    invoke-direct {v5, p0, v9}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;-><init>(Landroid/view/View;Landroid/graphics/Rect;)V

    .local v5, "animatorListener":Landroid/animation/AnimatorListenerAdapter;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1
.end method

.method private getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:clip"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .local v0, "clipRect":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:bounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "bestRect"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v2

    .local v2, "epicenter":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    .end local v2    # "epicenter":Landroid/graphics/Rect;
    :goto_0
    return-object v2

    .restart local v2    # "epicenter":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .local v0, "centerX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .local v1, "centerY":I
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "epicenter":Landroid/graphics/Rect;
    invoke-direct {v2, v0, v1, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 21
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    if-nez p4, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:epicenterReveal:bounds"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    .local v13, "endBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v17

    .local v17, "startBounds":Landroid/graphics/Rect;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    sub-int/2addr v2, v9

    int-to-float v0, v2

    move/from16 v19, v0

    .local v19, "startX":F
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    sub-int/2addr v2, v9

    int-to-float v0, v2

    move/from16 v20, v0

    .local v20, "startY":F
    const/4 v9, 0x0

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v10, "android:epicenterReveal:z"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v5, v9, v2

    .local v5, "startZ":F
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationZ(F)V

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:epicenterReveal:translateX"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .local v15, "endX":F
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:epicenterReveal:translateY"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v16

    .local v16, "endY":F
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:epicenterReveal:translateZ"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .local v8, "endZ":F
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    move-result-object v14

    .local v14, "endClip":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v18

    .local v18, "startClip":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    new-instance v3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->right:I

    move/from16 v0, v19

    invoke-direct {v3, v2, v9, v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .local v3, "startStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v6, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v2, v14, Landroid/graphics/Rect;->left:I

    iget v9, v14, Landroid/graphics/Rect;->right:I

    invoke-direct {v6, v2, v9, v15}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .local v6, "endStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v4, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    invoke-direct {v4, v2, v9, v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .local v4, "startStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v7, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v2, v14, Landroid/graphics/Rect;->top:I

    iget v9, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v16

    invoke-direct {v7, v2, v9, v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .local v7, "endStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    move-object/from16 v2, p2

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v12}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 21
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    if-nez p3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:epicenterReveal:bounds"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Rect;

    .local v17, "startBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    .local v13, "endBounds":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    sub-int/2addr v2, v9

    int-to-float v15, v2

    .local v15, "endX":F
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    sub-int/2addr v2, v9

    int-to-float v0, v2

    move/from16 v16, v0

    .local v16, "endY":F
    const/4 v9, 0x0

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v10, "android:epicenterReveal:z"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v8, v9, v2

    .local v8, "endZ":F
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:epicenterReveal:translateX"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v19

    .local v19, "startX":F
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:epicenterReveal:translateY"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v20

    .local v20, "startY":F
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:epicenterReveal:translateZ"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .local v5, "startZ":F
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    move-result-object v18

    .local v18, "startClip":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v14

    .local v14, "endClip":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    new-instance v3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->right:I

    move/from16 v0, v19

    invoke-direct {v3, v2, v9, v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .local v3, "startStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v6, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v2, v14, Landroid/graphics/Rect;->left:I

    iget v9, v14, Landroid/graphics/Rect;->right:I

    invoke-direct {v6, v2, v9, v15}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .local v6, "endStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v4, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    invoke-direct {v4, v2, v9, v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .local v4, "startStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v7, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v2, v14, Landroid/graphics/Rect;->top:I

    iget v9, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v16

    invoke-direct {v7, v2, v9, v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .local v7, "endStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    move-object/from16 v2, p2

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v12}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v2

    goto/16 :goto_0
.end method
