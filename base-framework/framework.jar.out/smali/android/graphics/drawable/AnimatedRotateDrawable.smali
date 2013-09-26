.class public Landroid/graphics/drawable/AnimatedRotateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedRotateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Ljava/lang/Runnable;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedRotateDrawable$1;,
        Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    }
.end annotation


# instance fields
.field private mCurrentDegrees:F

.field private mIncrement:F

.field private mMutated:Z

.field private mRunning:Z

.field private mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "rotateState"
    .parameter "res"

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/graphics/drawable/AnimatedRotateDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->init()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedRotateDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .local v1, state:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    const/high16 v2, 0x43b4

    iget v3, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    iget-object v0, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    :cond_0
    return-void
.end method

.method private nextFrame()V
    .locals 4

    .prologue
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget v2, v2, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .local v5, saveCount:I
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .local v6, st:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    iget-object v1, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, bounds:Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v8, v9

    .local v7, w:I
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v8, v9

    .local v2, h:I
    iget-boolean v8, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    if-eqz v8, :cond_0

    int-to-float v8, v7

    iget v9, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    mul-float v3, v8, v9

    .local v3, px:F
    :goto_0
    iget-boolean v8, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    if-eqz v8, :cond_1

    int-to-float v8, v2

    iget v9, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    mul-float v4, v8, v9

    .local v4, py:F
    :goto_1
    iget v8, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float/2addr v9, v3

    iget v10, v0, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float/2addr v10, v4

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .end local v3           #px:F
    .end local v4           #py:F
    :cond_0
    iget v3, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    goto :goto_0

    .restart local v3       #px:F
    :cond_1
    iget v4, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    goto :goto_1
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget v1, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v1, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 17
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    sget-object v14, Lcom/android/internal/R$styleable;->AnimatedRotateDrawable:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .local v3, a:Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-super {v0, v1, v2, v3, v14}, Landroid/graphics/drawable/Drawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    const/4 v14, 0x2

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .local v12, tv:Landroid/util/TypedValue;
    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x6

    if-ne v14, v15, :cond_3

    const/4 v7, 0x1

    .local v7, pivotXRel:Z
    :goto_0
    if-eqz v7, :cond_4

    const/high16 v14, 0x3f80

    const/high16 v15, 0x3f80

    invoke-virtual {v12, v14, v15}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v6

    .local v6, pivotX:F
    :goto_1
    const/4 v14, 0x3

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x6

    if-ne v14, v15, :cond_5

    const/4 v9, 0x1

    .local v9, pivotYRel:Z
    :goto_2
    if-eqz v9, :cond_6

    const/high16 v14, 0x3f80

    const/high16 v15, 0x3f80

    invoke-virtual {v12, v14, v15}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v8

    .local v8, pivotY:F
    :goto_3
    const/4 v14, 0x5

    const/16 v15, 0xc

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    const/4 v14, 0x4

    const/16 v15, 0x96

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .local v10, res:I
    const/4 v4, 0x0

    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    if-lez v10, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .local v5, outerDepth:I
    :cond_1
    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, type:I
    const/4 v14, 0x1

    if-eq v13, v14, :cond_7

    const/4 v14, 0x3

    if-ne v13, v14, :cond_2

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v5, :cond_7

    :cond_2
    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v14, "drawable"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad element under <animated-rotate>: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #outerDepth:I
    .end local v6           #pivotX:F
    .end local v7           #pivotXRel:Z
    .end local v8           #pivotY:F
    .end local v9           #pivotYRel:Z
    .end local v10           #res:I
    .end local v13           #type:I
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .restart local v7       #pivotXRel:Z
    :cond_4
    invoke-virtual {v12}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    goto :goto_1

    .restart local v6       #pivotX:F
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .restart local v9       #pivotYRel:Z
    :cond_6
    invoke-virtual {v12}, Landroid/util/TypedValue;->getFloat()F

    move-result v8

    goto :goto_3

    .restart local v4       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v5       #outerDepth:I
    .restart local v8       #pivotY:F
    .restart local v10       #res:I
    .restart local v13       #type:I
    :cond_7
    if-nez v4, :cond_8

    const-string v14, "drawable"

    const-string v15, "No drawable specified for <animated-rotate>"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .local v11, rotateState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    iput-object v4, v11, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v7, v11, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    iput v6, v11, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    iput-boolean v9, v11, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    iput v8, v11, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->init()V

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_9
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "bounds"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    iget v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    iget v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    iget v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    const/high16 v1, 0x43b4

    iget v2, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->invalidateSelf()V

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->nextFrame()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setFramesCount(I)V
    .locals 2
    .parameter "framesCount"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iput p1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    const/high16 v0, 0x43b4

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget v1, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    return-void
.end method

.method public setFramesDuration(I)V
    .locals 1
    .parameter "framesDuration"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iput p1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .parameter "visible"
    .parameter "restart"

    .prologue
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v1, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .local v0, changed:Z
    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->nextFrame()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->nextFrame()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
