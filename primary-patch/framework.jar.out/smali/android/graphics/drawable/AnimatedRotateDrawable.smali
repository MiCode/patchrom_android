.class public Landroid/graphics/drawable/AnimatedRotateDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "AnimatedRotateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    }
.end annotation


# instance fields
.field private mCurrentDegrees:F

.field private mIncrement:F

.field private final mNextFrame:Ljava/lang/Runnable;

.field private mRunning:Z

.field private mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedRotateDrawable$1;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateLocalState()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedRotateDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/AnimatedRotateDrawable$1;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$100(Landroid/graphics/drawable/AnimatedRotateDrawable;)F
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/AnimatedRotateDrawable;

    .prologue
    iget v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    return v0
.end method

.method static synthetic access$102(Landroid/graphics/drawable/AnimatedRotateDrawable;F)F
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/AnimatedRotateDrawable;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    return p1
.end method

.method static synthetic access$116(Landroid/graphics/drawable/AnimatedRotateDrawable;F)F
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/AnimatedRotateDrawable;
    .param p1, "x1"    # F

    .prologue
    iget v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    return v0
.end method

.method static synthetic access$200(Landroid/graphics/drawable/AnimatedRotateDrawable;)F
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/AnimatedRotateDrawable;

    .prologue
    iget v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    return v0
.end method

.method static synthetic access$300(Landroid/graphics/drawable/AnimatedRotateDrawable;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/AnimatedRotateDrawable;

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->nextFrame()V

    return-void
.end method

.method private nextFrame()V
    .locals 6

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget v1, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Landroid/graphics/drawable/AnimatedRotateDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private updateLocalState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .local v1, "state":Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    const/high16 v2, 0x43b40000    # 360.0f

    iget v3, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    :cond_0
    return-void
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mThemeAttrs:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <animated-rotate> tag requires a \'drawable\' attribute or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .local v2, "state":Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mThemeAttrs:[I

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mThemeAttrs:[I

    sget-object v4, Lcom/android/internal/R$styleable;->AnimatedRotateDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateLocalState()V

    goto :goto_0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "bounds":Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v8, v9

    .local v7, "w":I
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v8, v9

    .local v2, "h":I
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .local v6, "st":Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    iget-boolean v8, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    if-eqz v8, :cond_0

    int-to-float v8, v7

    iget v9, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    mul-float v3, v8, v9

    .local v3, "px":F
    :goto_0
    iget-boolean v8, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    if-eqz v8, :cond_1

    int-to-float v8, v2

    iget v9, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    mul-float v4, v8, v9

    .local v4, "py":F
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .local v5, "saveCount":I
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

    .end local v3    # "px":F
    .end local v4    # "py":F
    .end local v5    # "saveCount":I
    :cond_0
    iget v3, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    goto :goto_0

    .restart local v3    # "px":F
    :cond_1
    iget v4, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    goto :goto_1
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    sget-object v1, Lcom/android/internal/R$styleable;->AnimatedRotateDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-super {p0, p1, p2, v0, v1}, Landroid/graphics/drawable/DrawableWrapper;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedRotateDrawable;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateLocalState()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    return v0
.end method

.method public setFramesCount(I)V
    .locals 2
    .param p1, "framesCount"    # I

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iput p1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    const/high16 v0, 0x43b40000    # 360.0f

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget v1, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    return-void
.end method

.method public setFramesDuration(I)V
    .locals 1
    .param p1, "framesDuration"    # I

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iput p1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z

    move-result v0

    .local v0, "changed":Z
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
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

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

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .local v1, "state":Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .local v2, "tv":Landroid/util/TypedValue;
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_4

    move v3, v4

    :goto_0
    iput-boolean v3, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    iget-boolean v3, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2, v7, v7}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v3

    :goto_1
    iput v3, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    .end local v2    # "tv":Landroid/util/TypedValue;
    :cond_0
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .restart local v2    # "tv":Landroid/util/TypedValue;
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_1

    move v5, v4

    :cond_1
    iput-boolean v5, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    iget-boolean v3, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    if-eqz v3, :cond_6

    invoke-virtual {v2, v7, v7}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v3

    :goto_2
    iput v3, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    .end local v2    # "tv":Landroid/util/TypedValue;
    :cond_2
    const/4 v3, 0x5

    iget v5, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    const/4 v3, 0x4

    iget v5, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "tv":Landroid/util/TypedValue;
    :cond_4
    move v3, v5

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    goto :goto_2
.end method
