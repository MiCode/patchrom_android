.class Landroid/widget/Editor$ActionPopupWindow;
.super Landroid/widget/Editor$ActionPinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionPopupWindow"
.end annotation


# instance fields
.field private final POPUP_TEXT_LAYOUT:I

.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mFeatureTel:Z

.field private mMaxPhraseListHeight:I

.field private mPasteTextView:Landroid/widget/TextView;

.field private mPhraseTextView:Landroid/widget/TextView;

.field private mReplaceTextView:Landroid/widget/TextView;

.field private mSearchImageView:Landroid/widget/ImageView;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mSelectTextView:Landroid/widget/TextView;

.field private mShareImageView:Landroid/widget/ImageView;

.field private mTelImageView:Landroid/widget/ImageView;

.field private mTextActionPadding:I

.field private mWebImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V
    .locals 3
    .param p2, "handleView"    # Landroid/widget/Editor$HandleView;

    .prologue
    .line 3318
    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    .line 3319
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$ActionPinnedPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V

    .line 3287
    const v1, 0x11030014

    iput v1, p0, Landroid/widget/Editor$ActionPopupWindow;->POPUP_TEXT_LAYOUT:I

    .line 3321
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    .line 3324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3325
    .local v0, "intent":Landroid/content/Intent;
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3326
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mFeatureTel:Z

    .line 3328
    :cond_0
    return-void
.end method

.method private getMaxPhraseListHeight()I
    .locals 7

    .prologue
    .line 3706
    iget-object v6, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3708
    .local v5, "res":Landroid/content/res/Resources;
    const v6, 0x11020056

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3709
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 3711
    .local v2, "header":I
    const v6, 0x11020057

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3712
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 3713
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 3714
    .local v1, "first":I
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 3715
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 3716
    .local v4, "middle":I
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 3717
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 3719
    .local v3, "last":I
    add-int v6, v2, v1

    add-int/2addr v6, v4

    add-int/2addr v6, v3

    return v6
.end method

.method private newImageView()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 3432
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 3434
    .local v1, "wrapContent":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3435
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3436
    const v2, 0x1102009e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3437
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3438
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3439
    return-object v0
.end method

.method private newTextView()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 3419
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 3421
    .local v2, "wrapContent":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3423
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x11030014

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3424
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3425
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 3426
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 3427
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3428
    return-object v1
.end method


# virtual methods
.method protected createAnimations()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 3394
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    .line 3395
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3396
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 3397
    .local v1, "scaleAnimatorX":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 3398
    .local v2, "scaleAnimatorY":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3399
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3400
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3402
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    .line 3403
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3404
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 3405
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 3406
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3407
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3408
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3410
    new-instance v3, Landroid/widget/Editor$ActionPopupWindow$1;

    invoke-direct {v3, p0}, Landroid/widget/Editor$ActionPopupWindow$1;-><init>(Landroid/widget/Editor$ActionPopupWindow;)V

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

    .line 3416
    return-void

    .line 3395
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 3396
    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    .line 3397
    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    .line 3403
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 3404
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    .line 3405
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method protected createPopupWindow()V
    .locals 4

    .prologue
    .line 3332
    new-instance v0, Landroid/widget/Editor$AnimatePopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$AnimatePopupWindow;-><init>(Landroid/widget/Editor;Landroid/content/Context;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3333
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3334
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 3702
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss(Z)V

    .line 3703
    return-void
.end method

.method public fadeIn(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3684
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 3685
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mAboveHandle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 3687
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3688
    return-void

    .line 3685
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initContentView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 3338
    new-instance v0, Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TouchPanelLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    .line 3340
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->setOrientation(I)V

    .line 3341
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    const v1, 0x1102009d

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->setBackgroundResource(I)V

    .line 3343
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3344
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3347
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    .line 3348
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3349
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    const v1, 0x1102008f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3351
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    .line 3352
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3353
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    const v1, 0x11020098

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3355
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    .line 3356
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3357
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    const v1, 0x11020095

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3359
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    .line 3360
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3361
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    const v1, 0x1107006a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3363
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    .line 3364
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3365
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    const v1, 0x1107006b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3367
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    .line 3368
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3369
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    const v1, 0x1107006c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3371
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    .line 3372
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3373
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    const v1, 0x1107006d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3375
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 3376
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3377
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v1, 0x1107006e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3379
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    .line 3380
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3381
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const v1, 0x1107006f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3383
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    .line 3384
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3385
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    const v1, 0x11020092

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3387
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    .line 3388
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3389
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    const v1, 0x11070070

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3390
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 28
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3548
    const/4 v15, 0x0

    .line 3549
    .local v15, "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v12

    .line 3551
    .local v12, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->isFocused()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 3552
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v22

    .line 3553
    .local v22, "selStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v21

    .line 3555
    .local v21, "selEnd":I
    const/16 v24, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 3556
    const/16 v24, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 3559
    .end local v21    # "selEnd":I
    .end local v22    # "selStart":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 3560
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 3561
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/widget/Editor$SelectionModifierCursorController;->setMinTouchOffset(I)V

    .line 3562
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/widget/Editor$SelectionModifierCursorController;->setMaxTouchOffset(I)V

    .line 3564
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 3680
    :cond_2
    :goto_0
    return-void

    .line 3565
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 3566
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    sget v25, Landroid/widget/TextView;->ID_SELECT_ALL:I

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3567
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_0

    .line 3568
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->canPaste()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 3569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    sget v25, Landroid/widget/TextView;->ID_PASTE:I

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3570
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    goto :goto_0

    .line 3571
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 3572
    add-int v24, v15, v12

    div-int/lit8 v14, v24, 0x2

    .line 3573
    .local v14, "middle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 3574
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v24

    check-cast v24, Landroid/text/Spannable;

    move-object/from16 v0, v24

    invoke-static {v0, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Editor;->showSuggestions()V

    goto/16 :goto_0

    .line 3576
    .end local v14    # "middle":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 3577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    sget v25, Landroid/widget/TextView;->ID_COPY:I

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    goto/16 :goto_0

    .line 3578
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 3579
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    sget v25, Landroid/widget/TextView;->ID_CUT:I

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    goto/16 :goto_0

    .line 3580
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 3581
    new-instance v10, Landroid/content/Intent;

    const-string v24, "android.intent.action.SEND"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3582
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v24, "text/plain"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3583
    const-string v24, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v15, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3586
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 3587
    .local v6, "context":Landroid/content/Context;
    sget v24, Lcom/android/internal/R$string;->share:I

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v10, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3589
    .end local v6    # "context":Landroid/content/Context;
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 3590
    new-instance v10, Landroid/content/Intent;

    const-string v24, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3591
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v24, "query"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v15, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3594
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3595
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 3596
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/LinkSpec;

    .line 3597
    .local v11, "link":Landroid/widget/LinkSpec;
    if-eqz v11, :cond_2

    .line 3598
    new-instance v10, Landroid/content/Intent;

    const-string v24, "android.intent.action.DIAL"

    iget-object v0, v11, Landroid/widget/LinkSpec;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3599
    .restart local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3601
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "link":Landroid/widget/LinkSpec;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 3602
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/LinkSpec;

    .line 3603
    .restart local v11    # "link":Landroid/widget/LinkSpec;
    if-eqz v11, :cond_2

    .line 3604
    new-instance v10, Landroid/content/Intent;

    const-string v24, "android.intent.action.VIEW"

    iget-object v0, v11, Landroid/widget/LinkSpec;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3605
    .restart local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3607
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "link":Landroid/widget/LinkSpec;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 3608
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/provider/MiuiSettings$FrequentPhrases;->getFrequentPhrases(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v18

    .line 3610
    .local v18, "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v18, :cond_d

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-nez v24, :cond_e

    .line 3611
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 3612
    .local v4, "addPhraseTextView":Landroid/widget/TextView;
    const v24, 0x11070071

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3614
    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3615
    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 3617
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    move/from16 v24, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    move/from16 v26, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v27

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3622
    new-instance v24, Landroid/widget/Editor$ActionPopupWindow$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Editor$ActionPopupWindow$2;-><init>(Landroid/widget/Editor$ActionPopupWindow;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3631
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/Editor$ActionPopupWindow;->setSubPanelAsContent(Landroid/view/View;)V

    goto/16 :goto_0

    .line 3633
    .end local v4    # "addPhraseTextView":Landroid/widget/TextView;
    .end local v5    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v24

    const-string v25, "layout_inflater"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 3635
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v24, 0x1103000c

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 3638
    .local v19, "phraseListLayout":Landroid/view/View;
    const v24, 0x110b0021

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 3640
    .local v7, "editBtn":Landroid/widget/ImageButton;
    new-instance v24, Landroid/widget/Editor$ActionPopupWindow$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Editor$ActionPopupWindow$3;-><init>(Landroid/widget/Editor$ActionPopupWindow;)V

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3647
    sget v24, Landroid/R$id;->list:I

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ListView;

    .line 3649
    .local v20, "phraseListView":Landroid/widget/ListView;
    const/16 v24, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 3651
    new-instance v17, Landroid/widget/Editor$PhraseAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$PhraseAdapter;-><init>(Landroid/widget/Editor;Ljava/util/ArrayList;)V

    .line 3652
    .local v17, "phraseAdapter":Landroid/widget/Editor$PhraseAdapter;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3653
    move/from16 v16, v15

    .line 3654
    .local v16, "minimum":I
    move v13, v12

    .line 3655
    .local v13, "maximum":I
    new-instance v24, Landroid/widget/Editor$ActionPopupWindow$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v13, v2}, Landroid/widget/Editor$ActionPopupWindow$4;-><init>(Landroid/widget/Editor$ActionPopupWindow;II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3666
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x110a002e

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 3668
    .local v23, "width":I
    const/4 v8, -0x2

    .line 3669
    .local v8, "height":I
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_10

    .line 3670
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mMaxPhraseListHeight:I

    move/from16 v24, v0

    if-nez v24, :cond_f

    .line 3671
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->getMaxPhraseListHeight()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$ActionPopupWindow;->mMaxPhraseListHeight:I

    .line 3673
    :cond_f
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/Editor$ActionPopupWindow;->mMaxPhraseListHeight:I

    .line 3675
    :cond_10
    new-instance v24, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-direct {v0, v1, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3677
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Editor$ActionPopupWindow;->setSubPanelAsContent(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public show()V
    .locals 29

    .prologue
    .line 3444
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    .line 3445
    .local v25, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v24

    .line 3446
    .local v24, "selStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v23

    .line 3448
    .local v23, "selEnd":I
    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->length()I

    move-result v27

    if-lez v27, :cond_4

    sub-int v27, v23, v24

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_4

    const/4 v10, 0x1

    .line 3450
    .local v10, "canSearch":Z
    :goto_0
    const/4 v15, 0x0

    .line 3451
    .local v15, "canTel":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3452
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mFeatureTel:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->length()I

    move-result v27

    if-lez v27, :cond_0

    .line 3453
    const/16 v27, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v23

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/widget/Linkify;->getLink(Ljava/lang/CharSequence;III)Landroid/widget/LinkSpec;

    move-result-object v20

    .line 3454
    .local v20, "link":Landroid/widget/LinkSpec;
    if-eqz v20, :cond_0

    .line 3455
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3456
    const/4 v15, 0x1

    .line 3460
    .end local v20    # "link":Landroid/widget/LinkSpec;
    :cond_0
    const/16 v16, 0x0

    .line 3461
    .local v16, "canWeb":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3462
    if-nez v15, :cond_1

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->length()I

    move-result v27

    if-lez v27, :cond_1

    .line 3463
    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v23

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/widget/Linkify;->getLink(Ljava/lang/CharSequence;III)Landroid/widget/LinkSpec;

    move-result-object v20

    .line 3464
    .restart local v20    # "link":Landroid/widget/LinkSpec;
    if-eqz v20, :cond_1

    .line 3465
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3466
    const/16 v16, 0x1

    .line 3470
    .end local v20    # "link":Landroid/widget/LinkSpec;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->canCopy()Z

    move-result v6

    .line 3471
    .local v6, "canCopy":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->canCut()Z

    move-result v7

    .line 3472
    .local v7, "canCut":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->canPaste()Z

    move-result v8

    .line 3473
    .local v8, "canPaste":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v27

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # invokes: Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v27

    if-eqz v27, :cond_5

    const/4 v14, 0x1

    .line 3474
    .local v14, "canSuggest":Z
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->length()I

    move-result v27

    if-lez v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->hasSelection()Z

    move-result v27

    if-nez v27, :cond_6

    const/4 v11, 0x1

    .line 3475
    .local v11, "canSelect":Z
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->length()I

    move-result v27

    if-lez v27, :cond_7

    if-nez v24, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->length()I

    move-result v27

    move/from16 v0, v23

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    :cond_2
    const/4 v12, 0x1

    .line 3476
    .local v12, "canSelectAll":Z
    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->length()I

    move-result v27

    if-lez v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->hasSelection()Z

    move-result v27

    if-eqz v27, :cond_8

    const/4 v13, 0x1

    .line 3477
    .local v13, "canShare":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->hasSelection()Z

    move-result v27

    if-nez v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v27

    instance-of v0, v0, Lmiui/phrase/AddPhraseActivity;

    move/from16 v27, v0

    if-nez v27, :cond_9

    const/4 v9, 0x1

    .line 3480
    .local v9, "canPhrase":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    if-eqz v10, :cond_a

    const/16 v27, 0x0

    :goto_6
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    if-eqz v15, :cond_b

    const/16 v27, 0x0

    :goto_7
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3482
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    if-eqz v16, :cond_c

    const/16 v27, 0x0

    :goto_8
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3483
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v6, :cond_d

    const/16 v27, 0x0

    :goto_9
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3484
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v7, :cond_e

    const/16 v27, 0x0

    :goto_a
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3485
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v8, :cond_f

    const/16 v27, 0x0

    :goto_b
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3486
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v14, :cond_10

    const/16 v27, 0x0

    :goto_c
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3487
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v11, :cond_11

    const/16 v27, 0x0

    :goto_d
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3488
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v12, :cond_12

    const/16 v27, 0x0

    :goto_e
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3489
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    if-eqz v13, :cond_13

    const/16 v27, 0x0

    :goto_f
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3490
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v9, :cond_14

    const/16 v27, 0x0

    :goto_10
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TouchPanelLayout;->getChildCount()I

    move-result v18

    .line 3493
    .local v18, "childCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->clear()V

    .line 3494
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_11
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_15

    .line 3495
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3496
    .local v17, "child":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v27

    if-nez v27, :cond_3

    .line 3497
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3494
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_11

    .line 3448
    .end local v6    # "canCopy":Z
    .end local v7    # "canCut":Z
    .end local v8    # "canPaste":Z
    .end local v9    # "canPhrase":Z
    .end local v10    # "canSearch":Z
    .end local v11    # "canSelect":Z
    .end local v12    # "canSelectAll":Z
    .end local v13    # "canShare":Z
    .end local v14    # "canSuggest":Z
    .end local v15    # "canTel":Z
    .end local v16    # "canWeb":Z
    .end local v17    # "child":Landroid/view/View;
    .end local v18    # "childCount":I
    .end local v19    # "i":I
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 3473
    .restart local v6    # "canCopy":Z
    .restart local v7    # "canCut":Z
    .restart local v8    # "canPaste":Z
    .restart local v10    # "canSearch":Z
    .restart local v15    # "canTel":Z
    .restart local v16    # "canWeb":Z
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 3474
    .restart local v14    # "canSuggest":Z
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 3475
    .restart local v11    # "canSelect":Z
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 3476
    .restart local v12    # "canSelectAll":Z
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 3477
    .restart local v13    # "canShare":Z
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 3480
    .restart local v9    # "canPhrase":Z
    :cond_a
    const/16 v27, 0x8

    goto/16 :goto_6

    .line 3481
    :cond_b
    const/16 v27, 0x8

    goto/16 :goto_7

    .line 3482
    :cond_c
    const/16 v27, 0x8

    goto/16 :goto_8

    .line 3483
    :cond_d
    const/16 v27, 0x8

    goto/16 :goto_9

    .line 3484
    :cond_e
    const/16 v27, 0x8

    goto/16 :goto_a

    .line 3485
    :cond_f
    const/16 v27, 0x8

    goto/16 :goto_b

    .line 3486
    :cond_10
    const/16 v27, 0x8

    goto/16 :goto_c

    .line 3487
    :cond_11
    const/16 v27, 0x8

    goto/16 :goto_d

    .line 3488
    :cond_12
    const/16 v27, 0x8

    goto/16 :goto_e

    .line 3489
    :cond_13
    const/16 v27, 0x8

    goto/16 :goto_f

    .line 3490
    :cond_14
    const/16 v27, 0x8

    goto/16 :goto_10

    .line 3501
    .restart local v18    # "childCount":I
    .restart local v19    # "i":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v26

    .line 3504
    .local v26, "visibleChildCount":I
    sget-boolean v27, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v27, :cond_19

    sget-boolean v27, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v27, :cond_18

    const/16 v27, 0x5

    :goto_12
    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_19

    .line 3506
    const/16 v21, 0x0

    .line 3511
    .local v21, "paddingHorizontal":I
    :goto_13
    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    .line 3512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 3513
    .restart local v17    # "child":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3514
    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 3515
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingTop()I

    move-result v27

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingBottom()I

    move-result v28

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v27

    move/from16 v3, v21

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 3534
    .end local v5    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v17    # "child":Landroid/view/View;
    :cond_16
    if-nez v6, :cond_1d

    if-nez v7, :cond_1d

    if-nez v8, :cond_1d

    if-nez v14, :cond_1d

    if-nez v11, :cond_1d

    if-nez v12, :cond_1d

    if-nez v9, :cond_1d

    .line 3536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/provider/MiuiSettings$FrequentPhrases;->getFrequentPhrases(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v22

    .line 3538
    .local v22, "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v22, :cond_17

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-nez v27, :cond_1d

    .line 3544
    .end local v22    # "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_17
    :goto_14
    return-void

    .line 3504
    .end local v21    # "paddingHorizontal":I
    :cond_18
    const/16 v27, 0x6

    goto :goto_12

    .line 3508
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    move/from16 v21, v0

    .restart local v21    # "paddingHorizontal":I
    goto :goto_13

    .line 3518
    :cond_1a
    const/16 v19, 0x0

    :goto_15
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_16

    .line 3519
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 3520
    .restart local v17    # "child":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3522
    .restart local v5    # "bg":Landroid/graphics/drawable/Drawable;
    if-nez v19, :cond_1b

    .line 3523
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 3529
    :goto_16
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingTop()I

    move-result v27

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingBottom()I

    move-result v28

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v27

    move/from16 v3, v21

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 3518
    add-int/lit8 v19, v19, 0x1

    goto :goto_15

    .line 3524
    :cond_1b
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c

    .line 3525
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_16

    .line 3527
    :cond_1c
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_16

    .line 3543
    .end local v5    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v17    # "child":Landroid/view/View;
    :cond_1d
    invoke-super/range {p0 .. p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->show()V

    goto :goto_14
.end method

.method protected updatePosition(II)V
    .locals 2
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    .prologue
    .line 3692
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    .line 3693
    .local v0, "popupWindow":Landroid/widget/Editor$AnimatePopupWindow;
    invoke-virtual {v0}, Landroid/widget/Editor$AnimatePopupWindow;->isDismissing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3694
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss(Z)V

    .line 3697
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->updatePosition(II)V

    .line 3698
    return-void
.end method
