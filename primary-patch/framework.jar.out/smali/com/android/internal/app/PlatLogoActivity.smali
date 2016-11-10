.class public Lcom/android/internal/app/PlatLogoActivity;
.super Landroid/app/Activity;
.source "PlatLogoActivity.java"


# instance fields
.field mInterpolator:Landroid/view/animation/PathInterpolator;

.field mKeyCount:I

.field mLayout:Landroid/widget/FrameLayout;

.field mTapCount:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    .local v3, "dp":F
    iget v9, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x44160000    # 600.0f

    mul-float/2addr v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v10, v3

    sub-float/2addr v9, v10

    float-to-int v8, v9

    .local v8, "size":I
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .local v6, "im":Landroid/view/View;
    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationZ(F)V

    invoke-virtual {v6, v13}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v6, v13}, Landroid/view/View;->setScaleY(F)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    new-instance v9, Lcom/android/internal/app/PlatLogoActivity$1;

    invoke-direct {v9, p0, v3}, Lcom/android/internal/app/PlatLogoActivity$1;-><init>(Lcom/android/internal/app/PlatLogoActivity;F)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    double-to-float v5, v10

    .local v5, "hue":F
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .local v1, "bgPaint":Landroid/graphics/Paint;
    const v9, 0x3ecccccd    # 0.4f

    invoke-static {v5, v9, v12}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .local v4, "fgPaint":Landroid/graphics/Paint;
    invoke-static {v5, v13, v12}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    const v9, 0x1080539

    invoke-virtual {p0, v9}, Lcom/android/internal/app/PlatLogoActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "M":Landroid/graphics/drawable/Drawable;
    new-instance v7, Lcom/android/internal/app/PlatLogoActivity$2;

    invoke-direct {v7, p0, v1, v4, v0}, Lcom/android/internal/app/PlatLogoActivity$2;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V

    .local v7, "platlogo":Landroid/graphics/drawable/Drawable;
    new-instance v9, Landroid/graphics/drawable/RippleDrawable;

    const/4 v10, -0x1

    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v7, v11}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Lcom/android/internal/app/PlatLogoActivity$3;

    invoke-direct {v9, p0}, Lcom/android/internal/app/PlatLogoActivity$3;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {v6, v14}, Landroid/view/View;->setClickable(Z)V

    new-instance v9, Lcom/android/internal/app/PlatLogoActivity$4;

    invoke-direct {v9, p0, v6}, Lcom/android/internal/app/PlatLogoActivity$4;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/view/View;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v14}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    new-instance v9, Lcom/android/internal/app/PlatLogoActivity$5;

    invoke-direct {v9, p0, v6}, Lcom/android/internal/app/PlatLogoActivity$5;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/view/View;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v9, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v11, 0x11

    invoke-direct {v10, v8, v8, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v9, v6, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/app/PlatLogoActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const-wide/16 v10, 0x1f4

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const-wide/16 v10, 0x320

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public showMarshmallow(Landroid/view/View;)V
    .locals 6
    .param p1, "im"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const v2, 0x1080538

    invoke-virtual {p0, v2}, Lcom/android/internal/app/PlatLogoActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "fg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/16 v4, 0xff

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "fadeIn":Landroid/animation/Animator;
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
