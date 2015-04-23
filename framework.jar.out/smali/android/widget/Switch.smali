.class public Landroid/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final THUMB_POS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/widget/Switch;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTrackTint:Z

.field private mHasTrackTintMode:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mShowText:Z

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackTintList:Landroid/content/res/ColorStateList;

.field private mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    new-instance v0, Landroid/widget/Switch$1;

    const-string v1, "thumbPos"

    invoke-direct {v0, v1}, Landroid/widget/Switch$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/Switch;->THUMB_POS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x101043f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    new-instance v8, Landroid/text/TextPaint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v8, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, "res":Landroid/content/res/Resources;
    iget-object v8, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    iput v9, v8, Landroid/text/TextPaint;->density:F

    iget-object v8, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    sget-object v8, Lcom/android/internal/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    const/16 v8, 0xb

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Landroid/widget/Switch;->mShowText:Z

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Landroid/widget/Switch;->mSwitchPadding:I

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Landroid/widget/Switch;->mSplitTrack:Z

    const/16 v8, 0x9

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .local v4, "thumbTintList":Landroid/content/res/ColorStateList;
    if-eqz v4, :cond_2

    iput-object v4, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    :cond_2
    const/16 v8, 0xa

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    .local v5, "thumbTintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v8, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v8, v5, :cond_3

    iput-object v5, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    :cond_3
    iget-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    if-eqz v8, :cond_5

    :cond_4
    invoke-direct {p0}, Landroid/widget/Switch;->applyThumbTint()V

    :cond_5
    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .local v6, "trackTintList":Landroid/content/res/ColorStateList;
    if-eqz v6, :cond_6

    iput-object v6, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    :cond_6
    const/16 v8, 0xd

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    .local v7, "trackTintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v8, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v8, v7, :cond_7

    iput-object v7, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    :cond_7
    iget-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    if-nez v8, :cond_8

    iget-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    if-eqz v8, :cond_9

    :cond_8
    invoke-direct {p0}, Landroid/widget/Switch;->applyTrackTint()V

    :cond_9
    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .local v1, "appearance":I
    if-eqz v1, :cond_a

    invoke-virtual {p0, p1, v1}, Landroid/widget/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    :cond_a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    iput v8, p0, Landroid/widget/Switch;->mTouchSlop:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v8

    iput v8, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    invoke-virtual {p0}, Landroid/widget/Switch;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/Switch;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/Switch;

    .prologue
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    return v0
.end method

.method static synthetic access$100(Landroid/widget/Switch;F)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Switch;
    .param p1, "x1"    # F

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Switch;->setThumbPosition(F)V

    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 5
    .param p1, "newCheckedState"    # Z

    .prologue
    const/4 v4, 0x1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .local v0, "targetPosition":F
    :goto_0
    sget-object v1, Landroid/widget/Switch;->THUMB_POS:Landroid/util/FloatProperty;

    new-array v2, v4, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .end local v0    # "targetPosition":F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private applyThumbTint()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyTrackTint()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private cancelPositionAnimator()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbOffset()I
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Landroid/widget/Switch;->mThumbPosition:F

    sub-float v0, v1, v2

    .local v0, "thumbPosition":F
    :goto_0
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .end local v0    # "thumbPosition":F
    :cond_0
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    .restart local v0    # "thumbPosition":F
    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .local v1, "padding":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .local v0, "insets":Landroid/graphics/Insets;
    :goto_0
    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    iget v3, p0, Landroid/widget/Switch;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v2, v3

    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :goto_1
    return v2

    .restart local v1    # "padding":Landroid/graphics/Rect;
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .restart local v0    # "insets":Landroid/graphics/Insets;
    goto :goto_0

    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private hitThumb(FF)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbOffset()I

    move-result v2

    .local v2, "thumbOffset":I
    iget-object v6, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v6, p0, Landroid/widget/Switch;->mSwitchTop:I

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int v4, v6, v7

    .local v4, "thumbTop":I
    iget v6, p0, Landroid/widget/Switch;->mSwitchLeft:I

    add-int/2addr v6, v2

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int v1, v6, v7

    .local v1, "thumbLeft":I
    iget v6, p0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v6, v1

    iget-object v7, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int v3, v6, v7

    .local v3, "thumbRight":I
    iget v6, p0, Landroid/widget/Switch;->mSwitchBottom:I

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int v0, v6, v7

    .local v0, "thumbBottom":I
    int-to-float v6, v1

    cmpl-float v6, p1, v6

    if-lez v6, :cond_0

    int-to-float v6, v3

    cmpg-float v6, p1, v6

    if-gez v6, :cond_0

    int-to-float v6, v4

    cmpl-float v6, p2, v6

    if-lez v6, :cond_0

    int-to-float v6, v0

    cmpg-float v6, p2, v6

    if-gez v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "transformed":Ljava/lang/CharSequence;
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .end local v1    # "transformed":Ljava/lang/CharSequence;
    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1
    .param p1, "typefaceIndex"    # I
    .param p2, "styleIndex"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "tf":Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v0, p2}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    return-void

    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPosition(F)V
    .locals 0
    .param p1, "position"    # F

    .prologue
    iput p1, p0, Landroid/widget/Switch;->mThumbPosition:F

    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/Switch;->mTouchMode:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .local v0, "commitChange":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    .local v2, "oldState":Z
    if-eqz v0, :cond_6

    iget-object v6, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v6, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .local v3, "xvel":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_3

    cmpg-float v6, v3, v8

    if-gez v6, :cond_2

    move v1, v4

    .end local v3    # "xvel":F
    .local v1, "newState":Z
    :goto_1
    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v5}, Landroid/widget/Switch;->playSoundEffect(I)V

    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    return-void

    .end local v0    # "commitChange":Z
    .end local v1    # "newState":Z
    .end local v2    # "oldState":Z
    :cond_1
    move v0, v5

    goto :goto_0

    .restart local v0    # "commitChange":Z
    .restart local v2    # "oldState":Z
    .restart local v3    # "xvel":F
    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    cmpl-float v6, v3, v8

    if-lez v6, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1

    .end local v1    # "newState":Z
    .end local v3    # "xvel":F
    :cond_6
    move v1, v2

    .restart local v1    # "newState":Z
    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .local v2, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/Switch;->mSwitchLeft:I

    .local v4, "switchLeft":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/Switch;->mSwitchTop:I

    .local v6, "switchTop":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/Switch;->mSwitchRight:I

    .local v5, "switchRight":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Switch;->mSwitchBottom:I

    .local v3, "switchBottom":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getThumbOffset()I

    move-result v15

    add-int v7, v4, v15

    .local v7, "thumbInitialLeft":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v8

    .local v8, "thumbInsets":Landroid/graphics/Insets;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v15, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v15

    move v12, v4

    .local v12, "trackLeft":I
    move v14, v6

    .local v14, "trackTop":I
    move v13, v5

    .local v13, "trackRight":I
    move v11, v3

    .local v11, "trackBottom":I
    sget-object v15, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-eq v8, v15, :cond_3

    iget v15, v8, Landroid/graphics/Insets;->left:I

    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    iget v15, v8, Landroid/graphics/Insets;->left:I

    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/2addr v12, v15

    :cond_0
    iget v15, v8, Landroid/graphics/Insets;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    iget v15, v8, Landroid/graphics/Insets;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    :cond_1
    iget v15, v8, Landroid/graphics/Insets;->right:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    iget v15, v8, Landroid/graphics/Insets;->right:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int/2addr v13, v15

    :cond_2
    iget v15, v8, Landroid/graphics/Insets;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    iget v15, v8, Landroid/graphics/Insets;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int/2addr v11, v15

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v12, v14, v13, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .end local v11    # "trackBottom":I
    .end local v12    # "trackLeft":I
    .end local v13    # "trackRight":I
    .end local v14    # "trackTop":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v15, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v7, v15

    .local v9, "thumbLeft":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v15, v7

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int v10, v15, v16

    .local v10, "thumbRight":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v9, v6, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_5

    invoke-virtual {v1, v9, v6, v10, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v9    # "thumbLeft":I
    .end local v10    # "thumbRight":I
    :cond_5
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    return-void

    .end local v8    # "thumbInsets":Landroid/graphics/Insets;
    :cond_6
    sget-object v8, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .restart local v8    # "thumbInsets":Landroid/graphics/Insets;
    goto/16 :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v0

    .local v0, "myDrawableState":[I
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getShowText()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Switch;->mShowText:Z

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Switch;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/Switch;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/Switch;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .local v8, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    .local v17, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Switch;->mSwitchTop:I

    .local v14, "switchTop":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/Switch;->mSwitchBottom:I

    .local v10, "switchBottom":I
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v12, v14, v18

    .local v12, "switchInnerTop":I
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v11, v10, v18

    .local v11, "switchInnerBottom":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .local v15, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Switch;->mSplitTrack:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v6

    .local v6, "insets":Landroid/graphics/Insets;
    invoke-virtual {v15, v8}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Insets;->left:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Insets;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .local v9, "saveCount":I
    sget-object v18, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .end local v6    # "insets":Landroid/graphics/Insets;
    .end local v9    # "saveCount":I
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .restart local v9    # "saveCount":I
    if-eqz v15, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .local v13, "switchText":Landroid/text/Layout;
    :goto_2
    if-eqz v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v5

    .local v5, "drawableState":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setColor(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v5, v0, Landroid/text/TextPaint;->drawableState:[I

    if-eqz v15, :cond_7

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .local v3, "bounds":Landroid/graphics/Rect;
    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v4, v18, v19

    .end local v3    # "bounds":Landroid/graphics/Rect;
    .local v4, "cX":I
    :goto_3
    div-int/lit8 v18, v4, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v7, v18, v19

    .local v7, "left":I
    add-int v18, v12, v11

    div-int/lit8 v18, v18, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v16, v18, v19

    .local v16, "top":I
    int-to-float v0, v7

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .end local v4    # "cX":I
    .end local v5    # "drawableState":[I
    .end local v7    # "left":I
    .end local v16    # "top":I
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .end local v9    # "saveCount":I
    .end local v10    # "switchBottom":I
    .end local v11    # "switchInnerBottom":I
    .end local v12    # "switchInnerTop":I
    .end local v13    # "switchText":Landroid/text/Layout;
    .end local v14    # "switchTop":I
    .end local v15    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0

    .restart local v10    # "switchBottom":I
    .restart local v11    # "switchInnerBottom":I
    .restart local v12    # "switchInnerTop":I
    .restart local v14    # "switchTop":I
    .restart local v15    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .restart local v9    # "saveCount":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto/16 :goto_2

    .restart local v5    # "drawableState":[I
    .restart local v13    # "switchText":Landroid/text/Layout;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getWidth()I

    move-result v4

    .restart local v4    # "cX":I
    goto :goto_3
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .local v2, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .end local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .end local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0

    .restart local v1    # "oldText":Ljava/lang/CharSequence;
    .restart local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    const/4 v1, 0x0

    .local v1, "opticalInsetLeft":I
    const/4 v2, 0x0

    .local v2, "opticalInsetRight":I
    iget-object v8, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    iget-object v7, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .local v7, "trackPadding":Landroid/graphics/Rect;
    iget-object v8, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :goto_0
    iget-object v8, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .local v0, "insets":Landroid/graphics/Insets;
    const/4 v8, 0x0

    iget v9, v0, Landroid/graphics/Insets;->left:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v8, 0x0

    iget v9, v0, Landroid/graphics/Insets;->right:I

    iget v10, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingLeft()I

    move-result v8

    add-int v4, v8, v1

    .local v4, "switchLeft":I
    iget v8, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int/2addr v8, v4

    sub-int/2addr v8, v1

    sub-int v5, v8, v2

    .local v5, "switchRight":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/Switch;->getGravity()I

    move-result v8

    and-int/lit8 v8, v8, 0x70

    sparse-switch v8, :sswitch_data_0

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v6

    .local v6, "switchTop":I
    iget v8, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int v3, v6, v8

    .local v3, "switchBottom":I
    :goto_2
    iput v4, p0, Landroid/widget/Switch;->mSwitchLeft:I

    iput v6, p0, Landroid/widget/Switch;->mSwitchTop:I

    iput v3, p0, Landroid/widget/Switch;->mSwitchBottom:I

    iput v5, p0, Landroid/widget/Switch;->mSwitchRight:I

    return-void

    .end local v3    # "switchBottom":I
    .end local v4    # "switchLeft":I
    .end local v5    # "switchRight":I
    .end local v6    # "switchTop":I
    .restart local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .end local v7    # "trackPadding":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Switch;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v5, v8, v2

    .restart local v5    # "switchRight":I
    iget v8, p0, Landroid/widget/Switch;->mSwitchWidth:I

    sub-int v8, v5, v8

    add-int/2addr v8, v1

    add-int v4, v8, v2

    .restart local v4    # "switchLeft":I
    goto :goto_1

    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Landroid/widget/Switch;->mSwitchHeight:I

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v8, v9

    .restart local v6    # "switchTop":I
    iget v8, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int v3, v6, v8

    .restart local v3    # "switchBottom":I
    goto :goto_2

    .end local v3    # "switchBottom":I
    .end local v6    # "switchTop":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v9

    sub-int v3, v8, v9

    .restart local v3    # "switchBottom":I
    iget v8, p0, Landroid/widget/Switch;->mSwitchHeight:I

    sub-int v6, v3, v8

    .restart local v6    # "switchTop":I
    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    iget-boolean v11, p0, Landroid/widget/Switch;->mShowText:Z

    if-eqz v11, :cond_1

    iget-object v11, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v11, :cond_0

    iget-object v11, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v11}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v11

    iput-object v11, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    :cond_0
    iget-object v11, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v11, :cond_1

    iget-object v11, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v11}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v11

    iput-object v11, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    :cond_1
    iget-object v3, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .local v3, "padding":Landroid/graphics/Rect;
    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_4

    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    iget v12, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iget v12, v3, Landroid/graphics/Rect;->right:I

    sub-int v9, v11, v12

    .local v9, "thumbWidth":I
    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .local v8, "thumbHeight":I
    :goto_0
    iget-boolean v11, p0, Landroid/widget/Switch;->mShowText:Z

    if-eqz v11, :cond_5

    iget-object v11, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I

    move-result v11

    iget-object v12, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v12}, Landroid/text/Layout;->getWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v12, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v12, v12, 0x2

    add-int v1, v11, v12

    .local v1, "maxTextWidth":I
    :goto_1
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Landroid/widget/Switch;->mThumbWidth:I

    iget-object v11, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_6

    iget-object v11, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v11, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .local v10, "trackHeight":I
    :goto_2
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .local v4, "paddingLeft":I
    iget v5, v3, Landroid/graphics/Rect;->right:I

    .local v5, "paddingRight":I
    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_2

    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .local v0, "inset":Landroid/graphics/Insets;
    iget v11, v0, Landroid/graphics/Insets;->left:I

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v11, v0, Landroid/graphics/Insets;->right:I

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .end local v0    # "inset":Landroid/graphics/Insets;
    :cond_2
    iget v11, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    iget v12, p0, Landroid/widget/Switch;->mThumbWidth:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    add-int/2addr v12, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .local v7, "switchWidth":I
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .local v6, "switchHeight":I
    iput v7, p0, Landroid/widget/Switch;->mSwitchWidth:I

    iput v6, p0, Landroid/widget/Switch;->mSwitchHeight:I

    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredHeight()I

    move-result v2

    .local v2, "measuredHeight":I
    if-ge v2, v6, :cond_3

    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredWidthAndState()I

    move-result v11

    invoke-virtual {p0, v11, v6}, Landroid/widget/Switch;->setMeasuredDimension(II)V

    :cond_3
    return-void

    .end local v1    # "maxTextWidth":I
    .end local v2    # "measuredHeight":I
    .end local v4    # "paddingLeft":I
    .end local v5    # "paddingRight":I
    .end local v6    # "switchHeight":I
    .end local v7    # "switchWidth":I
    .end local v8    # "thumbHeight":I
    .end local v9    # "thumbWidth":I
    .end local v10    # "trackHeight":I
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "thumbWidth":I
    const/4 v8, 0x0

    .restart local v8    # "thumbHeight":I
    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "maxTextWidth":I
    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v10, 0x0

    .restart local v10    # "trackHeight":I
    goto :goto_2
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .local v0, "text":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onProvideStructure(Landroid/view/ViewStructure;)V
    .locals 5
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onProvideStructure(Landroid/view/ViewStructure;)V

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .local v2, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewStructure;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    .end local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .end local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0

    .restart local v1    # "oldText":Ljava/lang/CharSequence;
    .restart local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_1
    return v7

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .local v6, "y":F
    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v5, v6}, Landroid/widget/Switch;->hitThumb(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    iput v8, p0, Landroid/widget/Switch;->mTouchMode:I

    iput v5, p0, Landroid/widget/Switch;->mTouchX:F

    iput v6, p0, Landroid/widget/Switch;->mTouchY:F

    goto :goto_0

    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_2
    iget v9, p0, Landroid/widget/Switch;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .restart local v5    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .restart local v6    # "y":F
    iget v7, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_1

    iget v7, p0, Landroid/widget/Switch;->mTouchY:F

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_0

    :cond_1
    iput v11, p0, Landroid/widget/Switch;->mTouchMode:I

    invoke-virtual {p0}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput v5, p0, Landroid/widget/Switch;->mTouchX:F

    iput v6, p0, Landroid/widget/Switch;->mTouchY:F

    move v7, v8

    goto :goto_1

    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .restart local v5    # "x":F
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v4

    .local v4, "thumbScrollRange":I
    iget v9, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v3, v5, v9

    .local v3, "thumbScrollOffset":F
    if-eqz v4, :cond_4

    int-to-float v9, v4

    div-float v1, v3, v9

    .local v1, "dPos":F
    :goto_2
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_2

    neg-float v1, v1

    :cond_2
    iget v9, p0, Landroid/widget/Switch;->mThumbPosition:F

    add-float/2addr v9, v1

    invoke-static {v9, v10, v7}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    .local v2, "newPos":F
    iget v7, p0, Landroid/widget/Switch;->mThumbPosition:F

    cmpl-float v7, v2, v7

    if-eqz v7, :cond_3

    iput v5, p0, Landroid/widget/Switch;->mTouchX:F

    invoke-direct {p0, v2}, Landroid/widget/Switch;->setThumbPosition(F)V

    :cond_3
    move v7, v8

    goto/16 :goto_1

    .end local v1    # "dPos":F
    .end local v2    # "newPos":F
    :cond_4
    cmpl-float v9, v3, v10

    if-lez v9, :cond_5

    move v1, v7

    .restart local v1    # "dPos":F
    :goto_3
    goto :goto_2

    .end local v1    # "dPos":F
    :cond_5
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_3

    .end local v3    # "thumbScrollOffset":F
    .end local v4    # "thumbScrollRange":I
    .end local v5    # "x":F
    :pswitch_5
    iget v7, p0, Landroid/widget/Switch;->mTouchMode:I

    if-ne v7, v11, :cond_6

    invoke-direct {p0, p1}, Landroid/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v7, v8

    goto/16 :goto_1

    :cond_6
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/Switch;->mTouchMode:I

    iget-object v7, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    invoke-virtual {p0}, Landroid/widget/Switch;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Switch;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/Switch;->cancelPositionAnimator()V

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {p0, v0}, Landroid/widget/Switch;->setThumbPosition(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setShowText(Z)V
    .locals 1
    .param p1, "showText"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/Switch;->mShowText:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/Switch;->mShowText:Z

    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/Switch;->mSplitTrack:Z

    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    iput p1, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    iput p1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "appearance":Landroid/content/res/TypedArray;
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .local v2, "colors":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    iput-object v2, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {v1, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .local v4, "ts":I
    if-eqz v4, :cond_0

    int-to-float v6, v4

    iget-object v7, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getTextSize()F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    :cond_0
    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .local v5, "typefaceIndex":I
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .local v3, "styleIndex":I
    invoke-direct {p0, v5, v3}, Landroid/widget/Switch;->setSwitchTypefaceByIndex(II)V

    const/16 v6, 0xb

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .local v0, "allCaps":Z
    if-eqz v0, :cond_2

    new-instance v6, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    iget-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v6, v10}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .end local v0    # "allCaps":Z
    .end local v3    # "styleIndex":I
    .end local v4    # "ts":I
    .end local v5    # "typefaceIndex":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .restart local v0    # "allCaps":Z
    .restart local v3    # "styleIndex":I
    .restart local v4    # "ts":I
    .restart local v5    # "typefaceIndex":I
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    goto :goto_1
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .local v0, "need":I
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    goto :goto_2

    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    iput p1, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    invoke-direct {p0}, Landroid/widget/Switch;->applyThumbTint()V

    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    iput-object p1, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    invoke-direct {p0}, Landroid/widget/Switch;->applyThumbTint()V

    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    invoke-direct {p0}, Landroid/widget/Switch;->applyTrackTint()V

    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    iput-object p1, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    invoke-direct {p0}, Landroid/widget/Switch;->applyTrackTint()V

    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
