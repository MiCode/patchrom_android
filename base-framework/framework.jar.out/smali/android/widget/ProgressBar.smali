.class public Landroid/widget/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ProgressBar$1;,
        Landroid/widget/ProgressBar$ProgressTintInfo;,
        Landroid/widget/ProgressBar$AccessibilityEventSender;,
        Landroid/widget/ProgressBar$SavedState;,
        Landroid/widget/ProgressBar$RefreshData;,
        Landroid/widget/ProgressBar$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAttached:Z

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field mMirrorForRtl:Z

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/16 v10, 0x10

    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    invoke-direct {p0}, Landroid/widget/ProgressBar;->initProgressBar()V

    sget-object v6, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    const/16 v6, 0x9

    iget v7, p0, Landroid/widget/ProgressBar;->mDuration:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/ProgressBar;->mDuration:I

    const/16 v6, 0xb

    iget v7, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    const/16 v6, 0xc

    iget v7, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    const/16 v6, 0xa

    iget v7, p0, Landroid/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/ProgressBar;->mBehavior:I

    const/16 v6, 0xd

    const v7, 0x10a000b

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .local v3, "resID":I
    if-lez v3, :cond_1

    invoke-virtual {p0, p1, v3}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/content/Context;I)V

    :cond_1
    const/4 v6, 0x2

    iget v7, p0, Landroid/widget/ProgressBar;->mMax:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 v6, 0x3

    iget v7, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 v6, 0x4

    iget v7, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    const/4 v6, 0x6

    iget-boolean v7, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    iget-boolean v6, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-nez v6, :cond_3

    const/4 v6, 0x5

    iget-boolean v7, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/16 v4, 0xf

    iget-boolean v6, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_5

    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_5
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x11

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    :cond_6
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_7

    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_7
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    :cond_8
    const/16 v4, 0x13

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_9

    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_9
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x13

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    :cond_a
    const/16 v4, 0x12

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_b

    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_b
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x12

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    :cond_c
    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_d

    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_d
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x15

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    :cond_e
    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_f

    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_f
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x14

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    :cond_10
    const/16 v4, 0x17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_11

    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_11
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x17

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    :cond_12
    const/16 v4, 0x16

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_13

    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_13
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x16

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    :cond_14
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressTints()V

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setImportantForAccessibility(I)V

    :cond_15
    return-void

    .end local v1    # "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "resID":I
    :cond_16
    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .restart local v1    # "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "resID":I
    :cond_17
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method static synthetic access$100(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ProgressBar;

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/ProgressBar;IIZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ProgressBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static synthetic access$302(Landroid/widget/ProgressBar;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/ProgressBar;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    return p1
.end method

.method private applyIndeterminateTint()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_3

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .local v0, "tintInfo":Landroid/widget/ProgressBar$ProgressTintInfo;
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .end local v0    # "tintInfo":Landroid/widget/ProgressBar$ProgressTintInfo;
    :cond_3
    return-void
.end method

.method private applyPrimaryProgressTint()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_3

    :cond_0
    const v1, 0x102000d

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private applyProgressBackgroundTint()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_3

    :cond_0
    const/high16 v1, 0x1020000

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private applyProgressTints()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    :cond_0
    return-void
.end method

.method private applySecondaryProgressTint()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_3

    :cond_0
    const v1, 0x102000f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    iget v5, p0, Landroid/widget/ProgressBar;->mMax:I

    if-lez v5, :cond_2

    int-to-float v5, p2

    iget v6, p0, Landroid/widget/ProgressBar;->mMax:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .local v4, "scale":F
    :goto_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    const/4 v3, 0x0

    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->canResolveLayoutDirection()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    const v5, 0x461c4000    # 10000.0f

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .local v2, "level":I
    if-eqz v3, :cond_3

    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .end local v2    # "level":I
    :goto_2
    if-eqz p4, :cond_1

    const v5, 0x102000d

    if-ne p1, v5, :cond_1

    invoke-virtual {p0, v4, p3, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "scale":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "level":I
    .restart local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "scale":F
    :cond_3
    move-object v3, v1

    goto :goto_1

    .end local v2    # "level":I
    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "scale":F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "layerId"    # I
    .param p2, "shouldFallback"    # Z

    .prologue
    const/4 v1, 0x0

    .local v1, "layer":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    const/16 v0, 0x64

    iput v0, p0, Landroid/widget/ProgressBar;->mMax:I

    iput v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    iput v1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    const/16 v0, 0xfa0

    iput v0, p0, Landroid/widget/ProgressBar;->mDuration:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ProgressBar;->mBehavior:I

    iput v2, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iput v3, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    iput v2, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iput v3, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    return-void
.end method

.method private static needsTileify(Landroid/graphics/drawable/Drawable;)Z
    .locals 7
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    instance-of v6, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_3

    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .local v3, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "orig":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    :goto_1
    return v4

    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v3    # "orig":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "orig":Landroid/graphics/drawable/LayerDrawable;
    :cond_3
    instance-of v6, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v6, :cond_5

    move-object v2, p0

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    .local v2, "in":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v0

    .restart local v0    # "N":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_4

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_1

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "in":Landroid/graphics/drawable/StateListDrawable;
    :cond_5
    instance-of v6, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_0

    move v4, v5

    goto :goto_1
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-nez v1, :cond_2

    new-instance v1, Landroid/widget/ProgressBar$RefreshProgressRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$1;)V

    iput-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    :cond_2
    invoke-static {p1, p2, p3}, Landroid/widget/ProgressBar$RefreshData;->obtain(IIZ)Landroid/widget/ProgressBar$RefreshData;

    move-result-object v0

    .local v0, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mAttached:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ProgressBar$AccessibilityEventSender;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    :goto_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .prologue
    const/4 v11, 0x1

    instance-of v10, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v10, :cond_3

    move-object v6, p1

    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    .local v6, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .local v0, "N":I
    new-array v8, v0, [Landroid/graphics/drawable/Drawable;

    .local v8, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    .local v4, "id":I
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const v10, 0x102000d

    if-eq v4, v10, :cond_0

    const v10, 0x102000f

    if-ne v4, v10, :cond_1

    :cond_0
    move v10, v11

    :goto_1
    invoke-direct {p0, v12, v10}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .end local v4    # "id":I
    :cond_2
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v2, "clone":Landroid/graphics/drawable/LayerDrawable;
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "N":I
    .end local v2    # "clone":Landroid/graphics/drawable/LayerDrawable;
    .end local v3    # "i":I
    .end local v6    # "orig":Landroid/graphics/drawable/LayerDrawable;
    .end local v8    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_3
    instance-of v10, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v10, :cond_6

    move-object v5, p1

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    .local v5, "in":Landroid/graphics/drawable/StateListDrawable;
    new-instance v7, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .local v7, "out":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v0

    .restart local v0    # "N":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_4

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v10

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {p0, v11, p2}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move-object v2, v7

    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v5    # "in":Landroid/graphics/drawable/StateListDrawable;
    .end local v7    # "out":Landroid/graphics/drawable/StateListDrawable;
    :cond_5
    :goto_4
    return-object v2

    :cond_6
    instance-of v10, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_8

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .local v1, "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .local v9, "tileBitmap":Landroid/graphics/Bitmap;
    iget-object v10, p0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v10, :cond_7

    iput-object v9, p0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    :cond_7
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .local v2, "clone":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v10, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v10, v12}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    if-eqz p2, :cond_5

    new-instance v7, Landroid/graphics/drawable/ClipDrawable;

    const/4 v10, 0x3

    invoke-direct {v7, v2, v10, v11}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v2, v7

    goto :goto_4

    .end local v1    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "clone":Landroid/graphics/drawable/BitmapDrawable;
    .end local v9    # "tileBitmap":Landroid/graphics/Bitmap;
    :cond_8
    move-object v2, p1

    goto :goto_4
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v7, 0x2710

    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .local v1, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .local v0, "N":I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .local v4, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object p1, v4

    .end local v0    # "N":I
    .end local v1    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "i":I
    .end local v4    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method

.method private updateDrawableBounds(II)V
    .locals 15
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    iget v12, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    iget v13, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    add-int/2addr v12, v13

    sub-int p1, p1, v12

    iget v12, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    iget v13, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    add-int/2addr v12, v13

    sub-int p2, p2, v12

    move/from16 v8, p1

    .local v8, "right":I
    move/from16 v1, p2

    .local v1, "bottom":I
    const/4 v10, 0x0

    .local v10, "top":I
    const/4 v7, 0x0

    .local v7, "left":I
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_2

    iget-boolean v12, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v12, v12, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v12, :cond_0

    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .local v6, "intrinsicWidth":I
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .local v5, "intrinsicHeight":I
    int-to-float v12, v6

    int-to-float v13, v5

    div-float v4, v12, v13

    .local v4, "intrinsicAspect":F
    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v2, v12, v13

    .local v2, "boundAspect":F
    cmpl-float v12, v4, v2

    if-eqz v12, :cond_0

    cmpl-float v12, v2, v4

    if-lez v12, :cond_4

    move/from16 v0, p2

    int-to-float v12, v0

    mul-float/2addr v12, v4

    float-to-int v11, v12

    .local v11, "width":I
    sub-int v12, p1, v11

    div-int/lit8 v7, v12, 0x2

    add-int v8, v7, v11

    .end local v2    # "boundAspect":F
    .end local v4    # "intrinsicAspect":F
    .end local v5    # "intrinsicHeight":I
    .end local v6    # "intrinsicWidth":I
    .end local v11    # "width":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-boolean v12, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v12, :cond_1

    move v9, v7

    .local v9, "tempLeft":I
    sub-int v7, p1, v8

    sub-int v8, p1, v9

    .end local v9    # "tempLeft":I
    :cond_1
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v7, v10, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    iget-object v12, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    iget-object v12, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    return-void

    .restart local v2    # "boundAspect":F
    .restart local v4    # "intrinsicAspect":F
    .restart local v5    # "intrinsicHeight":I
    .restart local v6    # "intrinsicWidth":I
    :cond_4
    move/from16 v0, p1

    int-to-float v12, v0

    const/high16 v13, 0x3f800000    # 1.0f

    div-float/2addr v13, v4

    mul-float/2addr v12, v13

    float-to-int v3, v12

    .local v3, "height":I
    sub-int v12, p2, v3

    div-int/lit8 v10, v12, 0x2

    add-int v1, v10, v3

    goto :goto_0
.end method

.method private updateDrawableState()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    .local v0, "state":[I
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .local v1, "saveCount":I
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v3

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawingTime()J

    move-result-wide v4

    .local v4, "time":J
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object v3, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    .local v2, "scale":F
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidateOnAnimation()V

    .end local v2    # "scale":F
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v3, :cond_1

    instance-of v3, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/graphics/drawable/Animatable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .end local v1    # "saveCount":I
    .end local v4    # "time":J
    :cond_1
    return-void

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "saveCount":I
    :cond_2
    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    int-to-float v3, v3

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .restart local v2    # "scale":F
    .restart local v4    # "time":J
    :catchall_0
    move-exception v3

    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    throw v3
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "progress:max"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "progress:progress"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "progress:secondaryProgress"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "progress:indeterminate"

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .local v0, "roundedCorners":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "dirty":Landroid/graphics/Rect;
    iget v3, p0, Landroid/widget/ProgressBar;->mScrollX:I

    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    add-int v1, v3, v4

    .local v1, "scrollX":I
    iget v3, p0, Landroid/widget/ProgressBar;->mScrollY:I

    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    add-int v2, v3, v4

    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->invalidate(IIII)V

    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    :cond_0
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar$RefreshData;

    .local v2, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget v3, v2, Landroid/widget/ProgressBar$RefreshData;->id:I

    iget v4, v2, Landroid/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v5, v2, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    const/4 v6, 0x1

    invoke-direct {p0, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    invoke-virtual {v2}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :cond_1
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mAttached:Z

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    :cond_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mAttached:Z

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    monitor-enter p0

    const/4 v2, 0x0

    .local v2, "dw":I
    const/4 v1, 0x0

    .local v1, "dh":I
    :try_start_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget v5, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    const/4 v5, 0x0

    invoke-static {v2, p1, v5}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v4

    .local v4, "measuredWidth":I
    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v3

    .local v3, "measuredHeight":I
    invoke-virtual {p0, v4, v3}, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method onProgressRefresh(FZI)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/ProgressBar;->scheduleAccessibilityEventSender()V

    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    check-cast v0, Landroid/widget/ProgressBar$SavedState;

    .local v0, "ss":Landroid/widget/ProgressBar$SavedState;
    invoke-virtual {v0}, Landroid/widget/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ProgressBar$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .local v0, "ss":Landroid/widget/ProgressBar$SavedState;
    iget v2, p0, Landroid/widget/ProgressBar;->mProgress:I

    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    iget v2, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    :cond_2
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_3

    iput-object p1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    :cond_3
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    iput-object p1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    monitor-enter p0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Landroid/widget/ProgressBar;->mMax:I

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    :cond_1
    const v0, 0x102000d

    iget v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/ProgressBar;->setProgress(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)Z
    .locals 3
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iget v2, p0, Landroid/widget/ProgressBar;->mMax:I

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    iget v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    const v0, 0x102000d

    iget v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    :cond_1
    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_5

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .local v0, "drawableHeight":I
    iget v1, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    if-ge v1, v0, :cond_2

    iput v0, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    :cond_2
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressTints()V

    .end local v0    # "drawableHeight":I
    :cond_3
    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v1, :cond_4

    iput-object p1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    const v1, 0x102000d

    iget v2, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, v1, v2, v3, v3}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    const v1, 0x102000f

    iget v2, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    invoke-direct {p0, v1, v2, v3, v3}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    :cond_5
    return-void
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    :cond_1
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    :cond_1
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    iget p1, p0, Landroid/widget/ProgressBar;->mMax:I

    :cond_3
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const v0, 0x102000f

    iget v1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    :cond_1
    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    :goto_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    :goto_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    :goto_3
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/widget/ProgressBar;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    goto :goto_3
.end method

.method stopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
