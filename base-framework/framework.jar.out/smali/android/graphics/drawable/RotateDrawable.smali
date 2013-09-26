.class public Landroid/graphics/drawable/RotateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RotateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RotateDrawable$1;,
        Landroid/graphics/drawable/RotateDrawable$RotateState;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:F = 10000.0f


# instance fields
.field private mMutated:Z

.field private mState:Landroid/graphics/drawable/RotateDrawable$RotateState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "rotateState"
    .parameter "res"

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/drawable/RotateDrawable$RotateState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RotateDrawable$RotateState;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/graphics/drawable/RotateDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/RotateDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .local v4, saveCount:I
    iget-object v7, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v7, v7, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, bounds:Landroid/graphics/Rect;
    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int v6, v7, v8

    .local v6, w:I
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int v1, v7, v8

    .local v1, h:I
    iget-object v5, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .local v5, st:Landroid/graphics/drawable/RotateDrawable$RotateState;
    iget-boolean v7, v5, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    if-eqz v7, :cond_0

    int-to-float v7, v6

    iget v8, v5, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    mul-float v2, v7, v8

    .local v2, px:F
    :goto_0
    iget-boolean v7, v5, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    if-eqz v7, :cond_1

    int-to-float v7, v1

    iget v8, v5, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    mul-float v3, v7, v8

    .local v3, py:F
    :goto_1
    iget v7, v5, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float/2addr v8, v2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float/2addr v9, v3

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v7, v5, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .end local v2           #px:F
    .end local v3           #py:F
    :cond_0
    iget v2, v5, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    goto :goto_0

    .restart local v2       #px:F
    :cond_1
    iget v3, v5, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    goto :goto_1
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v1, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v1, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    invoke-virtual {v0}, Landroid/graphics/drawable/RotateDrawable$RotateState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 18
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
    sget-object v15, Lcom/android/internal/R$styleable;->RotateDrawable:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .local v3, a:Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-super {v0, v1, v2, v3, v15}, Landroid/graphics/drawable/Drawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    const/4 v15, 0x4

    invoke-virtual {v3, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .local v13, tv:Landroid/util/TypedValue;
    if-nez v13, :cond_3

    const/4 v8, 0x1

    .local v8, pivotXRel:Z
    const/high16 v7, 0x3f00

    .local v7, pivotX:F
    :goto_0
    const/4 v15, 0x5

    invoke-virtual {v3, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    if-nez v13, :cond_6

    const/4 v10, 0x1

    .local v10, pivotYRel:Z
    const/high16 v9, 0x3f00

    .local v9, pivotY:F
    :goto_1
    const/4 v15, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .local v5, fromDegrees:F
    const/4 v15, 0x3

    const/high16 v16, 0x43b4

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .local v12, toDegrees:F
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .local v11, res:I
    const/4 v4, 0x0

    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    if-lez v11, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .local v6, outerDepth:I
    :cond_1
    :goto_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .local v14, type:I
    const/4 v15, 0x1

    if-eq v14, v15, :cond_9

    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v6, :cond_9

    :cond_2
    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v15, "drawable"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Bad element under <rotate>: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #fromDegrees:F
    .end local v6           #outerDepth:I
    .end local v7           #pivotX:F
    .end local v8           #pivotXRel:Z
    .end local v9           #pivotY:F
    .end local v10           #pivotYRel:Z
    .end local v11           #res:I
    .end local v12           #toDegrees:F
    .end local v14           #type:I
    :cond_3
    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v8, 0x1

    .restart local v8       #pivotXRel:Z
    :goto_3
    if-eqz v8, :cond_5

    const/high16 v15, 0x3f80

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v7

    .restart local v7       #pivotX:F
    :goto_4
    goto :goto_0

    .end local v7           #pivotX:F
    .end local v8           #pivotXRel:Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .restart local v8       #pivotXRel:Z
    :cond_5
    invoke-virtual {v13}, Landroid/util/TypedValue;->getFloat()F

    move-result v7

    goto :goto_4

    .restart local v7       #pivotX:F
    :cond_6
    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const/4 v10, 0x1

    .restart local v10       #pivotYRel:Z
    :goto_5
    if-eqz v10, :cond_8

    const/high16 v15, 0x3f80

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v9

    .restart local v9       #pivotY:F
    :goto_6
    goto/16 :goto_1

    .end local v9           #pivotY:F
    .end local v10           #pivotYRel:Z
    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    .restart local v10       #pivotYRel:Z
    :cond_8
    invoke-virtual {v13}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    goto :goto_6

    .restart local v4       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v5       #fromDegrees:F
    .restart local v6       #outerDepth:I
    .restart local v9       #pivotY:F
    .restart local v11       #res:I
    .restart local v12       #toDegrees:F
    .restart local v14       #type:I
    :cond_9
    if-nez v4, :cond_a

    const-string v15, "drawable"

    const-string v16, "No drawable specified for <rotate>"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput-object v4, v15, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput-boolean v8, v15, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput v7, v15, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput-boolean v10, v15, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput v9, v15, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput v5, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    iput v5, v15, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput v12, v15, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_b
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "bounds"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 5
    .parameter "level"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v1, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v2, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    iget-object v3, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v3, v3, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    sub-float/2addr v2, v3

    int-to-float v3, p1

    const v4, 0x461c4000

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 2
    .parameter "state"

    .prologue
    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v1, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .local v0, changed:Z
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RotateDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

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
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .parameter "visible"
    .parameter "restart"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
