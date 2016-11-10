.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SlidingPaneLayout$1;,
        Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;,
        Landroid/support/v4/widget/SlidingPaneLayout$SavedState;,
        Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;,
        Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroid/support/v4/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_COLOR:I = -0x33333334

.field private static final DEFAULT_OVERHANG_SIZE:I = 0x20

.field static final IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SlidingPaneLayout"


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field private final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPreservedOpenState:Z

.field private mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "deviceVersion":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;

    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;

    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;

    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v2, -0x33333334

    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .local v0, "density":F
    const/high16 v2, 0x42000000    # 32.0f

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .local v1, "viewConfig":Landroid/view/ViewConfiguration;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/support/v4/widget/SlidingPaneLayout$1;)V

    invoke-static {p0, v4, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SlidingPaneLayout;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/v4/widget/SlidingPaneLayout;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SlidingPaneLayout;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    return v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    return p1
.end method

.method static synthetic access$600(Landroid/support/v4/widget/SlidingPaneLayout;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->onPanelDragged(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/widget/SlidingPaneLayout;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/support/v4/widget/SlidingPaneLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    return v0
.end method

.method private closePane(Landroid/view/View;I)Z
    .locals 2
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "initialVelocity"    # I

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mag"    # F
    .param p3, "fadeColor"    # I

    .prologue
    const/4 v8, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .local v4, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_3

    if-eqz p3, :cond_3

    const/high16 v5, -0x1000000

    and-int/2addr v5, p3

    ushr-int/lit8 v0, v5, 0x18

    .local v0, "baseAlpha":I
    int-to-float v5, v0

    mul-float/2addr v5, p2

    float-to-int v3, v5

    .local v3, "imag":I
    shl-int/lit8 v5, v3, 0x18

    const v6, 0xffffff

    and-int/2addr v6, p3

    or-int v1, v5, v6

    .local v1, "color":I
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_0

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v1, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v5

    if-eq v5, v8, :cond_1

    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-static {p1, v8, v5}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    .end local v0    # "baseAlpha":I
    .end local v1    # "color":I
    .end local v3    # "imag":I
    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_4

    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_4
    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    invoke-direct {v2, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .local v2, "dlr":Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private invalidateChildRegion(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    sget-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;->invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    return-void
.end method

.method private isLayoutRtlSupport()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPanelDragged(I)V
    .locals 10
    .param p1, "newLeft"    # I

    .prologue
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-nez v7, :cond_0

    const/4 v7, 0x0

    iput v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    .local v1, "isLayoutRtl":Z
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .local v2, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    .local v0, "childWidth":I
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v7

    sub-int/2addr v7, p1

    sub-int v4, v7, v0

    .local v4, "newStart":I
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v5

    .local v5, "paddingStart":I
    :goto_2
    if-eqz v1, :cond_5

    iget v3, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    .local v3, "lpMargin":I
    :goto_3
    add-int v6, v5, v3

    .local v6, "startBound":I
    sub-int v7, v4, v6

    int-to-float v7, v7

    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v7, :cond_1

    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    :cond_1
    iget-boolean v7, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {p0, v7, v8, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    :cond_2
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    goto :goto_0

    .end local v3    # "lpMargin":I
    .end local v4    # "newStart":I
    .end local v5    # "paddingStart":I
    .end local v6    # "startBound":I
    :cond_3
    move v4, p1

    goto :goto_1

    .restart local v4    # "newStart":I
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v5

    goto :goto_2

    .restart local v5    # "paddingStart":I
    :cond_5
    iget v3, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_3
.end method

.method private openPane(Landroid/view/View;I)Z
    .locals 2
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "initialVelocity"    # I

    .prologue
    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parallaxOtherViews(F)V
    .locals 12
    .param p1, "slideOffset"    # F

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v4

    .local v4, "isLayoutRtl":Z
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .local v7, "slideLp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v9, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v9, :cond_2

    if-eqz v4, :cond_1

    iget v9, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    :goto_0
    if-gtz v9, :cond_2

    const/4 v1, 0x1

    .local v1, "dimViews":Z
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_6

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .local v8, "v":Landroid/view/View;
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v8, v9, :cond_3

    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "childCount":I
    .end local v1    # "dimViews":Z
    .end local v3    # "i":I
    .end local v8    # "v":Landroid/view/View;
    :cond_1
    iget v9, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .restart local v0    # "childCount":I
    .restart local v1    # "dimViews":Z
    .restart local v3    # "i":I
    .restart local v8    # "v":Landroid/view/View;
    :cond_3
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v9, v11, v9

    iget v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v6, v9

    .local v6, "oldOffset":I
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v9, v11, p1

    iget v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v5, v9

    .local v5, "newOffset":I
    sub-int v2, v6, v5

    .local v2, "dx":I
    if-eqz v4, :cond_4

    neg-int v2, v2

    .end local v2    # "dx":I
    :cond_4
    invoke-virtual {v8, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-eqz v1, :cond_0

    if-eqz v4, :cond_5

    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float/2addr v9, v11

    :goto_4
    iget v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    invoke-direct {p0, v8, v9, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_3

    :cond_5
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v9, v11, v9

    goto :goto_4

    .end local v5    # "newOffset":I
    .end local v6    # "oldOffset":I
    .end local v8    # "v":Landroid/view/View;
    :cond_6
    return-void
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isOpaque(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    check-cast v7, Landroid/view/ViewGroup;

    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    .end local p3    # "dx":I
    :goto_1
    return v0

    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    .restart local p3    # "dx":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_3

    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .end local p3    # "dx":I
    :goto_2
    invoke-static {p1, p3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    .restart local p3    # "dx":I
    :cond_2
    neg-int p3, p3

    goto :goto_2

    .end local p3    # "dx":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canSlide()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closePane()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    .local v1, "isLayoutRtl":Z
    if-eqz v1, :cond_1

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    .local v4, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v8

    if-le v8, v9, :cond_2

    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "shadowView":Landroid/view/View;
    :goto_1
    if-eqz v5, :cond_0

    if-nez v4, :cond_3

    :cond_0
    :goto_2
    return-void

    .end local v4    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "shadowView":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    .restart local v4    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .restart local v5    # "shadowView":Landroid/view/View;
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .local v7, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .local v0, "bottom":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .local v6, "shadowWidth":I
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v2

    .local v2, "left":I
    add-int v3, v2, v6

    .local v3, "right":I
    :goto_3
    invoke-virtual {v4, v2, v7, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    .restart local v3    # "right":I
    sub-int v2, v3, v6

    .restart local v2    # "left":I
    goto :goto_3
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .local v1, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    move-result v3

    .local v3, "save":I
    iget-boolean v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    :goto_0
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .local v2, "result":Z
    :goto_1
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return v2

    .end local v2    # "result":Z
    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget-boolean v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v4, :cond_5

    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "cache":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_1

    .end local v2    # "result":Z
    :cond_4
    const-string v4, "SlidingPaneLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawChild: child view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned null drawing cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_1

    .end local v0    # "cache":Landroid/graphics/Bitmap;
    .end local v2    # "result":Z
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getCoveredFadeColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getParallaxDistance()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    return v0
.end method

.method public getSliderFadeColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return v0
.end method

.method isDimmed(Landroid/view/View;)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .local v0, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlideable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    .local v1, "dlr":Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "dlr":Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .local v0, "action":I
    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v9, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "secondChild":Landroid/view/View;
    if-eqz v5, :cond_0

    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v9, v5, v10, v11}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .end local v5    # "secondChild":Landroid/view/View;
    :cond_0
    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v9, :cond_3

    if-eqz v0, :cond_3

    :cond_1
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    :goto_1
    return v9

    .restart local v5    # "secondChild":Landroid/view/View;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .end local v5    # "secondChild":Landroid/view/View;
    :cond_3
    const/4 v9, 0x3

    if-eq v0, v9, :cond_4

    const/4 v9, 0x1

    if-ne v0, v9, :cond_5

    :cond_4
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    .local v4, "interceptTap":Z
    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_2
    :pswitch_0
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .local v3, "interceptForDrag":Z
    if-nez v3, :cond_7

    if-eqz v4, :cond_8

    :cond_7
    const/4 v9, 0x1

    goto :goto_1

    .end local v3    # "interceptForDrag":Z
    :pswitch_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .local v8, "y":F
    iput v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    iput v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v11, v7

    float-to-int v12, v8

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .restart local v7    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .restart local v8    # "y":F
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .local v1, "adx":F
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .local v2, "ady":F
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v6

    .local v6, "slop":I
    int-to-float v9, v6

    cmpl-float v9, v1, v9

    if-lez v9, :cond_6

    cmpl-float v9, v2, v1

    if-lez v9, :cond_6

    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    const/4 v9, 0x0

    goto :goto_1

    .end local v1    # "adx":F
    .end local v2    # "ady":F
    .end local v6    # "slop":I
    .end local v7    # "x":F
    .end local v8    # "y":F
    .restart local v3    # "interceptForDrag":Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 28
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v12

    .local v12, "isLayoutRtl":Z
    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    :goto_0
    sub-int v23, p4, p2

    .local v23, "width":I
    if-eqz v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v19

    .local v19, "paddingStart":I
    :goto_1
    if-eqz v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v18

    .local v18, "paddingEnd":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v20

    .local v20, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v6

    .local v6, "childCount":I
    move/from16 v24, v19

    .local v24, "xStart":I
    move/from16 v16, v24

    .local v16, "nextXStart":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    const/high16 v25, 0x3f800000    # 1.0f

    :goto_3
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    if-ge v11, v6, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v11    # "i":I
    .end local v16    # "nextXStart":I
    .end local v18    # "paddingEnd":I
    .end local v19    # "paddingStart":I
    .end local v20    # "paddingTop":I
    .end local v23    # "width":I
    .end local v24    # "xStart":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    goto :goto_0

    .restart local v23    # "width":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v19

    goto :goto_1

    .restart local v19    # "paddingStart":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v18

    goto :goto_2

    .restart local v6    # "childCount":I
    .restart local v16    # "nextXStart":I
    .restart local v18    # "paddingEnd":I
    .restart local v20    # "paddingTop":I
    .restart local v24    # "xStart":I
    :cond_4
    const/16 v25, 0x0

    goto :goto_3

    .restart local v4    # "child":Landroid/view/View;
    .restart local v11    # "i":I
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .local v13, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .local v10, "childWidth":I
    const/16 v17, 0x0

    .local v17, "offset":I
    iget-boolean v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    iget v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    iget v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v15, v25, v26

    .local v15, "margin":I
    sub-int v25, v23, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v25

    sub-int v25, v25, v24

    sub-int v22, v25, v15

    .local v22, "range":I
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    if-eqz v12, :cond_6

    iget v14, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    .local v14, "lpMargin":I
    :goto_6
    add-int v25, v24, v14

    add-int v25, v25, v22

    div-int/lit8 v26, v10, 0x2

    add-int v25, v25, v26

    sub-int v26, v23, v18

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_7

    const/16 v25, 0x1

    :goto_7
    move/from16 v0, v25

    iput-boolean v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v21, v0

    .local v21, "pos":I
    add-int v25, v21, v14

    add-int v24, v24, v25

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .end local v14    # "lpMargin":I
    .end local v15    # "margin":I
    .end local v21    # "pos":I
    .end local v22    # "range":I
    :goto_8
    if-eqz v12, :cond_a

    sub-int v25, v23, v24

    add-int v8, v25, v17

    .local v8, "childRight":I
    sub-int v7, v8, v10

    .local v7, "childLeft":I
    :goto_9
    move/from16 v9, v20

    .local v9, "childTop":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    add-int v5, v9, v25

    .local v5, "childBottom":I
    move/from16 v0, v20

    invoke-virtual {v4, v7, v0, v8, v5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v25

    add-int v16, v16, v25

    goto/16 :goto_5

    .end local v5    # "childBottom":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    .restart local v15    # "margin":I
    .restart local v22    # "range":I
    :cond_6
    iget v14, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_6

    .restart local v14    # "lpMargin":I
    :cond_7
    const/16 v25, 0x0

    goto :goto_7

    .end local v14    # "lpMargin":I
    .end local v15    # "margin":I
    .end local v22    # "range":I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v25, v0

    if-eqz v25, :cond_9

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v24, v16

    goto :goto_8

    :cond_9
    move/from16 v24, v16

    goto :goto_8

    :cond_a
    sub-int v7, v24, v17

    .restart local v7    # "childLeft":I
    add-int v8, v7, v10

    .restart local v8    # "childRight":I
    goto :goto_9

    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v10    # "childWidth":I
    .end local v13    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v17    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 v25, v0

    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v25, v0

    if-eqz v25, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    :cond_e
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    return-void

    :cond_f
    const/4 v11, 0x0

    :goto_a
    if-ge v11, v6, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_a
.end method

.method protected onMeasure(II)V
    .locals 31
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .local v25, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v27

    .local v27, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .local v12, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .local v13, "heightSize":I
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v29

    if-eqz v29, :cond_4

    const/high16 v29, -0x80000000

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    const/high16 v25, 0x40000000    # 2.0f

    :cond_0
    :goto_0
    const/16 v16, 0x0

    .local v16, "layoutHeight":I
    const/16 v18, -0x1

    .local v18, "maxLayoutHeight":I
    sparse-switch v12, :sswitch_data_0

    :goto_1
    const/16 v23, 0x0

    .local v23, "weightSum":F
    const/4 v4, 0x0

    .local v4, "canSlide":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v29

    sub-int v29, v27, v29

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v30

    sub-int v24, v29, v30

    .local v24, "widthAvailable":I
    move/from16 v26, v24

    .local v26, "widthRemaining":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v6

    .local v6, "childCount":I
    const/16 v29, 0x2

    move/from16 v0, v29

    if-le v6, v0, :cond_1

    const-string v29, "SlidingPaneLayout"

    const-string v30, "onMeasure: More than two child views are not supported."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v6, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .local v17, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    :cond_2
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .end local v4    # "canSlide":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v15    # "i":I
    .end local v16    # "layoutHeight":I
    .end local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v18    # "maxLayoutHeight":I
    .end local v23    # "weightSum":F
    .end local v24    # "widthAvailable":I
    .end local v26    # "widthRemaining":I
    :cond_3
    if-nez v25, :cond_0

    const/high16 v25, 0x40000000    # 2.0f

    const/16 v27, 0x12c

    goto :goto_0

    :cond_4
    new-instance v29, Ljava/lang/IllegalStateException;

    const-string v30, "Width must have an exact value or MATCH_PARENT"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_5
    if-nez v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v29

    if-eqz v29, :cond_6

    if-nez v12, :cond_0

    const/high16 v12, -0x80000000

    const/16 v13, 0x12c

    goto :goto_0

    :cond_6
    new-instance v29, Ljava/lang/IllegalStateException;

    const-string v30, "Height must not be UNSPECIFIED"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    .restart local v16    # "layoutHeight":I
    .restart local v18    # "maxLayoutHeight":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v29

    sub-int v29, v13, v29

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v30

    sub-int v18, v29, v30

    move/from16 v16, v18

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v29

    sub-int v29, v13, v29

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v30

    sub-int v18, v29, v30

    goto/16 :goto_1

    .restart local v4    # "canSlide":Z
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v15    # "i":I
    .restart local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .restart local v23    # "weightSum":F
    .restart local v24    # "widthAvailable":I
    .restart local v26    # "widthRemaining":I
    :cond_7
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_8

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    add-float v23, v23, v29

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-eqz v29, :cond_2

    :cond_8
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v14, v29, v30

    .local v14, "horizontalMargin":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    sub-int v29, v24, v14

    const/high16 v30, -0x80000000

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .local v10, "childWidthSpec":I
    :goto_4
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    const/high16 v29, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .local v8, "childHeightSpec":I
    :goto_5
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .local v9, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .local v7, "childHeight":I
    const/high16 v29, -0x80000000

    move/from16 v0, v29

    if-ne v12, v0, :cond_9

    move/from16 v0, v16

    if-le v7, v0, :cond_9

    move/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    :cond_9
    sub-int v26, v26, v9

    if-gez v26, :cond_e

    const/16 v29, 0x1

    :goto_6
    move/from16 v0, v29

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    or-int v4, v4, v29

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    goto/16 :goto_3

    .end local v7    # "childHeight":I
    .end local v8    # "childHeightSpec":I
    .end local v9    # "childWidth":I
    .end local v10    # "childWidthSpec":I
    :cond_a
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_b

    sub-int v29, v24, v14

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .restart local v10    # "childWidthSpec":I
    goto :goto_4

    .end local v10    # "childWidthSpec":I
    :cond_b
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .restart local v10    # "childWidthSpec":I
    goto :goto_4

    :cond_c
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_5

    .end local v8    # "childHeightSpec":I
    :cond_d
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_5

    .restart local v7    # "childHeight":I
    .restart local v9    # "childWidth":I
    :cond_e
    const/16 v29, 0x0

    goto :goto_6

    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childHeight":I
    .end local v8    # "childHeightSpec":I
    .end local v9    # "childWidth":I
    .end local v10    # "childWidthSpec":I
    .end local v14    # "horizontalMargin":I
    .end local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    :cond_f
    if-nez v4, :cond_10

    const/16 v29, 0x0

    cmpl-float v29, v23, v29

    if-lez v29, :cond_1e

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    move/from16 v29, v0

    sub-int v11, v24, v29

    .local v11, "fixedPanelWidthLimit":I
    const/4 v15, 0x0

    :goto_7
    if-ge v15, v6, :cond_1e

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    :cond_11
    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_12
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .restart local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-nez v29, :cond_14

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_14

    const/16 v22, 0x1

    .local v22, "skippedFirstPass":Z
    :goto_9
    if-eqz v22, :cond_15

    const/16 v20, 0x0

    .local v20, "measuredWidth":I
    :goto_a
    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    if-eq v5, v0, :cond_19

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-gez v29, :cond_11

    move/from16 v0, v20

    if-gt v0, v11, :cond_13

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_11

    :cond_13
    if-eqz v22, :cond_18

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_16

    const/high16 v29, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    :goto_b
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v29

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .restart local v10    # "childWidthSpec":I
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    goto :goto_8

    .end local v8    # "childHeightSpec":I
    .end local v10    # "childWidthSpec":I
    .end local v20    # "measuredWidth":I
    .end local v22    # "skippedFirstPass":Z
    :cond_14
    const/16 v22, 0x0

    goto :goto_9

    .restart local v22    # "skippedFirstPass":Z
    :cond_15
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    goto :goto_a

    .restart local v20    # "measuredWidth":I
    :cond_16
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_17

    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_b

    .end local v8    # "childHeightSpec":I
    :cond_17
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_b

    .end local v8    # "childHeightSpec":I
    :cond_18
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_b

    .end local v8    # "childHeightSpec":I
    :cond_19
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-nez v29, :cond_1c

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1a

    const/high16 v29, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    :goto_c
    if-eqz v4, :cond_1d

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v14, v29, v30

    .restart local v14    # "horizontalMargin":I
    sub-int v21, v24, v14

    .local v21, "newWidth":I
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .restart local v10    # "childWidthSpec":I
    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_11

    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    goto/16 :goto_8

    .end local v8    # "childHeightSpec":I
    .end local v10    # "childWidthSpec":I
    .end local v14    # "horizontalMargin":I
    .end local v21    # "newWidth":I
    :cond_1a
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1b

    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_c

    .end local v8    # "childHeightSpec":I
    :cond_1b
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_c

    .end local v8    # "childHeightSpec":I
    :cond_1c
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_c

    :cond_1d
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    .local v28, "widthToDistribute":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    div-float v29, v29, v23

    move/from16 v0, v29

    float-to-int v3, v0

    .local v3, "addedWidth":I
    add-int v29, v20, v3

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .restart local v10    # "childWidthSpec":I
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    goto/16 :goto_8

    .end local v3    # "addedWidth":I
    .end local v5    # "child":Landroid/view/View;
    .end local v8    # "childHeightSpec":I
    .end local v10    # "childWidthSpec":I
    .end local v11    # "fixedPanelWidthLimit":I
    .end local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v20    # "measuredWidth":I
    .end local v22    # "skippedFirstPass":Z
    .end local v28    # "widthToDistribute":I
    :cond_1e
    move/from16 v20, v27

    .restart local v20    # "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v29

    add-int v29, v29, v16

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v30

    add-int v19, v29, v30

    .local v19, "measuredHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v29

    if-eqz v29, :cond_1f

    if-nez v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    :cond_1f
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    .local v0, "ss":Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    :goto_0
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .local v0, "ss":Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isOpen()Z

    move-result v2

    :goto_0
    iput-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    return-object v0

    :cond_0
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget-boolean v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v7, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v7, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    const/4 v4, 0x1

    .local v4, "wantTouchEvents":Z
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .local v6, "y":F
    iput v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    iput v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    goto :goto_0

    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_1
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .restart local v5    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .restart local v6    # "y":F
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v1, v5, v7

    .local v1, "dx":F
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v2, v6, v7

    .local v2, "dy":F
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v7}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    .local v3, "slop":I
    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    mul-int v8, v3, v3

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public openPane()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAllChildrenVisible()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return-void
.end method

.method public setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    .prologue
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 0
    .param p1, "parallaxBy"    # I

    .prologue
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->requestLayout()V

    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceLeft(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceRight(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return-void
.end method

.method public smoothSlideClosed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    return-void
.end method

.method public smoothSlideOpen()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 9
    .param p1, "slideOffset"    # F
    .param p2, "velocity"    # I

    .prologue
    const/4 v5, 0x0

    iget-boolean v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    .local v1, "isLayoutRtl":Z
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .local v2, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v6

    iget v7, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int v3, v6, v7

    .local v3, "startBound":I
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    .local v0, "childWidth":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v3

    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v8, v8

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    int-to-float v8, v0

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v4, v6

    .end local v0    # "childWidth":I
    .local v4, "x":I
    :goto_1
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v7, v4, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v3    # "startBound":I
    .end local v4    # "x":I
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v6

    iget v7, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int v3, v6, v7

    .restart local v3    # "startBound":I
    int-to-float v6, v3

    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v7, v7

    mul-float/2addr v7, p1

    add-float/2addr v6, v7

    float-to-int v4, v6

    .restart local v4    # "x":I
    goto :goto_1
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 21
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v12

    .local v12, "isLayoutRtl":Z
    if-eqz v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v20

    sub-int v15, v19, v20

    .local v15, "startBound":I
    :goto_0
    if-eqz v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v10

    .local v10, "endBound":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v17

    .local v17, "topBound":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v20

    sub-int v3, v19, v20

    .local v3, "bottomBound":I
    if-eqz p1, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/support/v4/widget/SlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    .local v13, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v14

    .local v14, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    .local v16, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    .local v2, "bottom":I
    :goto_2
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v5

    .local v5, "childCount":I
    :goto_3
    if-ge v11, v5, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, p1

    if-ne v4, v0, :cond_4

    .end local v4    # "child":Landroid/view/View;
    :cond_0
    return-void

    .end local v2    # "bottom":I
    .end local v3    # "bottomBound":I
    .end local v5    # "childCount":I
    .end local v10    # "endBound":I
    .end local v11    # "i":I
    .end local v13    # "left":I
    .end local v14    # "right":I
    .end local v15    # "startBound":I
    .end local v16    # "top":I
    .end local v17    # "topBound":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v15

    goto :goto_0

    .restart local v15    # "startBound":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v20

    sub-int v10, v19, v20

    goto :goto_1

    .restart local v3    # "bottomBound":I
    .restart local v10    # "endBound":I
    .restart local v17    # "topBound":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "bottom":I
    move/from16 v16, v2

    .restart local v16    # "top":I
    move v14, v2

    .restart local v14    # "right":I
    move v13, v2

    .restart local v13    # "left":I
    goto :goto_2

    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "childCount":I
    .restart local v11    # "i":I
    :cond_4
    if-eqz v12, :cond_5

    move/from16 v19, v10

    :goto_4
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v7

    .local v7, "clampedChildLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .local v9, "clampedChildTop":I
    if-eqz v12, :cond_6

    move/from16 v19, v15

    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v8

    .local v8, "clampedChildRight":I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "clampedChildBottom":I
    if-lt v7, v13, :cond_7

    move/from16 v0, v16

    if-lt v9, v0, :cond_7

    if-gt v8, v14, :cond_7

    if-gt v6, v2, :cond_7

    const/16 v18, 0x4

    .local v18, "vis":I
    :goto_6
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .end local v6    # "clampedChildBottom":I
    .end local v7    # "clampedChildLeft":I
    .end local v8    # "clampedChildRight":I
    .end local v9    # "clampedChildTop":I
    .end local v18    # "vis":I
    :cond_5
    move/from16 v19, v15

    goto :goto_4

    .restart local v7    # "clampedChildLeft":I
    .restart local v9    # "clampedChildTop":I
    :cond_6
    move/from16 v19, v10

    goto :goto_5

    .restart local v6    # "clampedChildBottom":I
    .restart local v8    # "clampedChildRight":I
    :cond_7
    const/16 v18, 0x0

    .restart local v18    # "vis":I
    goto :goto_6
.end method
