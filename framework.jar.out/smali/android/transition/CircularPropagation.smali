.class public Landroid/transition/CircularPropagation;
.super Landroid/transition/VisibilityPropagation;
.source "CircularPropagation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircularPropagation"


# instance fields
.field private mPropagationSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/transition/VisibilityPropagation;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    return-void
.end method

.method private static distance(FFFF)D
    .locals 6
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    sub-float v4, p2, p0

    float-to-double v0, v4

    .local v0, "x":D
    sub-float v4, p3, p1

    float-to-double v2, v4

    .local v2, "y":D
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J
    .locals 22
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Landroid/transition/Transition;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const-wide/16 v18, 0x0

    :goto_0
    return-wide v18

    :cond_0
    const/4 v2, 0x1

    .local v2, "directionMultiplier":I
    if-eqz p4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/transition/CircularPropagation;->getViewVisibility(Landroid/transition/TransitionValues;)I

    move-result v18

    if-nez v18, :cond_3

    :cond_1
    move-object/from16 v13, p3

    .local v13, "positionValues":Landroid/transition/TransitionValues;
    const/4 v2, -0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/transition/CircularPropagation;->getViewX(Landroid/transition/TransitionValues;)I

    move-result v16

    .local v16, "viewCenterX":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/transition/CircularPropagation;->getViewY(Landroid/transition/TransitionValues;)I

    move-result v17

    .local v17, "viewCenterY":I
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v3

    .local v3, "epicenter":Landroid/graphics/Rect;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    .local v10, "epicenterX":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    .local v11, "epicenterY":I
    :goto_2
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v11

    move/from16 v21, v0

    invoke-static/range {v18 .. v21}, Landroid/transition/CircularPropagation;->distance(FFFF)D

    move-result-wide v4

    .local v4, "distance":D
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v18 .. v21}, Landroid/transition/CircularPropagation;->distance(FFFF)D

    move-result-wide v14

    .local v14, "maxDistance":D
    div-double v6, v4, v14

    .local v6, "distanceFraction":D
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v8

    .local v8, "duration":J
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-gez v18, :cond_2

    const-wide/16 v8, 0x12c

    :cond_2
    int-to-long v0, v2

    move-wide/from16 v18, v0

    mul-long v18, v18, v8

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v6

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    goto/16 :goto_0

    .end local v3    # "epicenter":Landroid/graphics/Rect;
    .end local v4    # "distance":D
    .end local v6    # "distanceFraction":D
    .end local v8    # "duration":J
    .end local v10    # "epicenterX":I
    .end local v11    # "epicenterY":I
    .end local v13    # "positionValues":Landroid/transition/TransitionValues;
    .end local v14    # "maxDistance":D
    .end local v16    # "viewCenterX":I
    .end local v17    # "viewCenterY":I
    :cond_3
    move-object/from16 v13, p4

    .restart local v13    # "positionValues":Landroid/transition/TransitionValues;
    goto :goto_1

    .restart local v3    # "epicenter":Landroid/graphics/Rect;
    .restart local v16    # "viewCenterX":I
    .restart local v17    # "viewCenterY":I
    :cond_4
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v12, v0, [I

    .local v12, "loc":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/16 v18, 0x0

    aget v18, v12, v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v19

    add-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v10

    .restart local v10    # "epicenterX":I
    const/16 v18, 0x1

    aget v18, v12, v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v19

    add-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v11

    .restart local v11    # "epicenterY":I
    goto/16 :goto_2
.end method

.method public setPropagationSpeed(F)V
    .locals 2
    .param p1, "propagationSpeed"    # F

    .prologue
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "propagationSpeed may not be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    return-void
.end method
