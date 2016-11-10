.class public Lcom/android/internal/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ViewPager$ViewPositionComparator;,
        Lcom/android/internal/widget/ViewPager$LayoutParams;,
        Lcom/android/internal/widget/ViewPager$PagerObserver;,
        Lcom/android/internal/widget/ViewPager$SavedState;,
        Lcom/android/internal/widget/ViewPager$Decor;,
        Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;,
        Lcom/android/internal/widget/ViewPager$PageTransformer;,
        Lcom/android/internal/widget/ViewPager$SimpleOnPageChangeListener;,
        Lcom/android/internal/widget/ViewPager$OnPageChangeListener;,
        Lcom/android/internal/widget/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SCROLL_X:I = 0x1000000

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/android/internal/widget/PagerAdapter;

.field private mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private final mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private final mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private final mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private final mLeftEdge:Landroid/widget/EdgeEffect;

.field private mLeftIncr:I

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMaximumVelocity:I

.field private final mMinimumVelocity:I

.field private mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private final mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/android/internal/widget/ViewPager;->LAYOUT_ATTRS:[I

    new-instance v0, Lcom/android/internal/widget/ViewPager$1;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/internal/widget/ViewPager$2;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$2;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-direct {v2}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    iput-object v6, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v6, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    const v2, -0x800001

    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    iput-boolean v4, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    new-instance v2, Lcom/android/internal/widget/ViewPager$3;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/ViewPager$3;-><init>(Lcom/android/internal/widget/ViewPager;)V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    iput v5, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ViewPager;->setWillNotDraw(Z)V

    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->setDescendantFocusability(I)V

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ViewPager;->setFocusable(Z)V

    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/android/internal/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .local v1, "density":F
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mMaximumVelocity:I

    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mFlingDistance:I

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mCloseEnough:I

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mDefaultGutterSize:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ViewPager;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ViewPager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/ViewPager;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V
    .locals 14
    .param p1, "curItem"    # Lcom/android/internal/widget/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/android/internal/widget/ViewPager$ItemInfo;

    .prologue
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v1

    .local v1, "N":I
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v11

    .local v11, "width":I
    if-lez v11, :cond_0

    iget v12, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .local v6, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    iget v8, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .local v8, "oldCurPosition":I
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v8, v12, :cond_3

    const/4 v5, 0x0

    .local v5, "itemIndex":I
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .local v7, "offset":F
    add-int/lit8 v9, v8, 0x1

    .local v9, "pos":I
    :goto_1
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_6

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .local v3, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_2
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_1

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_1

    add-int/lit8 v5, v5, 0x1

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_2

    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v6    # "marginOffset":F
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v5    # "itemIndex":I
    .restart local v6    # "marginOffset":F
    .restart local v7    # "offset":F
    .restart local v8    # "oldCurPosition":I
    .restart local v9    # "pos":I
    :cond_1
    :goto_3
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_2

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    iput v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v9    # "pos":I
    :cond_3
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v8, v12, :cond_6

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .restart local v5    # "itemIndex":I
    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .restart local v7    # "offset":F
    add-int/lit8 v9, v8, -0x1

    .restart local v9    # "pos":I
    :goto_4
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_6

    if-ltz v5, :cond_6

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_5
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_4

    if-lez v5, :cond_4

    add-int/lit8 v5, v5, -0x1

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_5

    :cond_4
    :goto_6
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_5

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    :cond_5
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    iput v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_6
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "itemCount":I
    iget v7, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .restart local v7    # "offset":F
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    .restart local v9    # "pos":I
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_8

    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    :goto_8
    iput v12, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_b

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_a
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_9

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    add-int/lit8 v10, v9, -0x1

    .end local v9    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v12, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_a

    .end local v2    # "i":I
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_7
    const v12, -0x800001

    goto :goto_7

    :cond_8
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .restart local v2    # "i":I
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_9
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    iput v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_a

    iput v7, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_b
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    add-int/lit8 v2, p2, 0x1

    :goto_b
    if-ge v2, v4, :cond_e

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_c
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_c

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v12, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_c

    :cond_c
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    :cond_d
    iput v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_e
    return-void
.end method

.method private canScroll()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private completeScroll(Z)V
    .locals 10
    .param p1, "postEvents"    # Z

    .prologue
    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v2, 0x1

    .local v2, "needPopulate":Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-direct {p0, v7}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v3

    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v4

    .local v4, "oldY":I
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .local v5, "x":I
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    iput-boolean v7, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-boolean v8, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v8, :cond_2

    const/4 v2, 0x1

    iput-boolean v7, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v2    # "needPopulate":Z
    :cond_3
    move v2, v7

    goto :goto_0

    .restart local v0    # "i":I
    .restart local v2    # "needPopulate":Z
    :cond_4
    if-eqz v2, :cond_5

    if-eqz p1, :cond_6

    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ViewPager;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 8
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .prologue
    const/4 v5, 0x0

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mFlingDistance:I

    if-le v4, v6, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mMinimumVelocity:I

    if-le v4, v6, :cond_2

    if-gez p3, :cond_1

    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    :goto_0
    sub-int v2, p1, v4

    .local v2, "targetPage":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .local v0, "firstItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .local v1, "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v4, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v5, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    invoke-static {v2, v4, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .end local v0    # "firstItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v1    # "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    return v2

    .end local v2    # "targetPage":I
    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-lt p1, v4, :cond_3

    const v3, 0x3ecccccd    # 0.4f

    .local v3, "truncator":F
    :goto_2
    int-to-float v4, p1

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    int-to-float v6, v6

    add-float v7, p2, v3

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    float-to-int v2, v4

    .restart local v2    # "targetPage":I
    goto :goto_1

    .end local v2    # "targetPage":I
    .end local v3    # "truncator":F
    :cond_3
    const v3, 0x3f19999a    # 0.6f

    goto :goto_2
.end method

.method private enableLayers(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    .local v2, "layerType":I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "layerType":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    if-nez p2, :cond_2

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method

.method private getLeftEdgeForItem(I)I
    .locals 8
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .local v0, "info":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v3

    .local v3, "width":I
    int-to-float v4, v3

    iget v5, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    iget v7, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    invoke-static {v5, v6, v7}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .local v2, "scaledOffset":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_0

    int-to-float v4, v3

    iget v5, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v1, v4

    .local v1, "itemWidth":I
    const/high16 v4, 0x1000000

    sub-int/2addr v4, v1

    sub-int v2, v4, v2

    goto :goto_0
.end method

.method private getPaddedWidth()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getScrollStart()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x1000000

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    goto :goto_0
.end method

.method private infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 19

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollStart()I

    move-result v15

    .local v15, "startOffset":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v16

    .local v16, "width":I
    if-lez v16, :cond_4

    int-to-float v0, v15

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v13, v17, v18

    .local v13, "scrollOffset":F
    :goto_0
    if-lez v16, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v11, v17, v18

    .local v11, "marginOffset":F
    :goto_1
    const/4 v9, -0x1

    .local v9, "lastPos":I
    const/4 v8, 0x0

    .local v8, "lastOffset":F
    const/4 v10, 0x0

    .local v10, "lastWidth":F
    const/4 v4, 0x1

    .local v4, "first":Z
    const/4 v7, 0x0

    .local v7, "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .local v6, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v4, :cond_0

    iget v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/ViewPager;->mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    add-float v17, v8, v10

    add-float v17, v17, v11

    move/from16 v0, v17

    iput v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    iput v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v17, v0

    iget v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v5, v5, -0x1

    :cond_0
    iget v12, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .local v12, "offset":F
    move v14, v12

    .local v14, "startBound":F
    if-nez v4, :cond_1

    cmpl-float v17, v13, v14

    if-ltz v17, :cond_3

    :cond_1
    iget v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v17, v0

    add-float v17, v17, v12

    add-float v3, v17, v11

    .local v3, "endBound":F
    cmpg-float v17, v13, v3

    if-ltz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_6

    :cond_2
    move-object v7, v6

    .end local v3    # "endBound":F
    .end local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v7    # "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v12    # "offset":F
    .end local v14    # "startBound":F
    :cond_3
    return-object v7

    .end local v2    # "N":I
    .end local v4    # "first":Z
    .end local v5    # "i":I
    .end local v8    # "lastOffset":F
    .end local v9    # "lastPos":I
    .end local v10    # "lastWidth":F
    .end local v11    # "marginOffset":F
    .end local v13    # "scrollOffset":F
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0

    .restart local v13    # "scrollOffset":F
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .restart local v2    # "N":I
    .restart local v3    # "endBound":F
    .restart local v4    # "first":Z
    .restart local v5    # "i":I
    .restart local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v7    # "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v8    # "lastOffset":F
    .restart local v9    # "lastPos":I
    .restart local v10    # "lastWidth":F
    .restart local v11    # "marginOffset":F
    .restart local v12    # "offset":F
    .restart local v14    # "startBound":F
    :cond_6
    const/4 v4, 0x0

    iget v9, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move v8, v12

    iget v10, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move-object v7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .prologue
    const/4 v2, 0x0

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 11
    .param p1, "scrollX"    # I

    .prologue
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_0

    iput-boolean v8, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9, v8}, Lcom/android/internal/widget/ViewPager;->onPageScrolled(IFI)V

    iget-boolean v9, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    if-nez v9, :cond_3

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "onPageScrolled did not call superclass implementation"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_1

    const/high16 v9, 0x1000000

    sub-int v5, v9, p1

    .local v5, "scrollStart":I
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v1

    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v6

    .local v6, "width":I
    iget v9, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    add-int v7, v6, v9

    .local v7, "widthWithMargin":I
    iget v9, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v9, v9

    int-to-float v10, v6

    div-float v2, v9, v10

    .local v2, "marginOffset":F
    iget v0, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .local v0, "currentPage":I
    int-to-float v9, v5

    int-to-float v10, v6

    div-float/2addr v9, v10

    iget v10, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    iget v10, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v10, v2

    div-float v4, v9, v10

    .local v4, "pageOffset":F
    int-to-float v9, v7

    mul-float/2addr v9, v4

    float-to-int v3, v9

    .local v3, "offsetPixels":I
    iput-boolean v8, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    invoke-virtual {p0, v0, v4, v3}, Lcom/android/internal/widget/ViewPager;->onPageScrolled(IFI)V

    iget-boolean v8, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "onPageScrolled did not call superclass implementation"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v0    # "currentPage":I
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v2    # "marginOffset":F
    .end local v3    # "offsetPixels":I
    .end local v4    # "pageOffset":F
    .end local v5    # "scrollStart":I
    .end local v6    # "width":I
    .end local v7    # "widthWithMargin":I
    :cond_1
    move v5, p1

    .restart local v5    # "scrollStart":I
    goto :goto_0

    .restart local v0    # "currentPage":I
    .restart local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v2    # "marginOffset":F
    .restart local v3    # "offsetPixels":I
    .restart local v4    # "pageOffset":F
    .restart local v6    # "width":I
    .restart local v7    # "widthWithMargin":I
    :cond_2
    const/4 v8, 0x1

    .end local v0    # "currentPage":I
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v2    # "marginOffset":F
    .end local v3    # "offsetPixels":I
    .end local v4    # "pageOffset":F
    .end local v5    # "scrollStart":I
    .end local v6    # "width":I
    .end local v7    # "widthWithMargin":I
    :cond_3
    return v8
.end method

.method private performDrag(F)Z
    .locals 21
    .param p1, "x"    # F

    .prologue
    const/4 v9, 0x0

    .local v9, "needsInvalidate":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v18

    .local v18, "width":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v4, v19, p1

    .local v4, "deltaX":F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .local v15, "startEdge":Landroid/widget/EdgeEffect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .local v7, "endEdge":Landroid/widget/EdgeEffect;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v10, v19, v4

    .local v10, "nextScrollX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v19

    if-eqz v19, :cond_2

    const/high16 v19, 0x4b800000    # 1.6777216E7f

    sub-float v12, v19, v10

    .local v12, "scrollStart":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .local v16, "startItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    const/4 v13, 0x1

    .local v13, "startAbsolute":Z
    :goto_2
    if-eqz v13, :cond_4

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v14, v19, v20

    .local v14, "startBound":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .local v8, "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    const/4 v5, 0x1

    .local v5, "endAbsolute":Z
    :goto_4
    if-eqz v5, :cond_6

    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v6, v19, v20

    .local v6, "endBound":F
    :goto_5
    cmpg-float v19, v12, v14

    if-gez v19, :cond_7

    if-eqz v13, :cond_0

    sub-float v11, v14, v12

    .local v11, "over":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v9, 0x1

    .end local v11    # "over":F
    :cond_0
    move v3, v14

    .local v3, "clampedScrollStart":F
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v19

    if-eqz v19, :cond_a

    const/high16 v19, 0x4b800000    # 1.6777216E7f

    sub-float v17, v19, v3

    .local v17, "targetScrollX":F
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    move/from16 v19, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v17, v20

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    return v9

    .end local v3    # "clampedScrollStart":F
    .end local v5    # "endAbsolute":Z
    .end local v6    # "endBound":F
    .end local v7    # "endEdge":Landroid/widget/EdgeEffect;
    .end local v8    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v10    # "nextScrollX":F
    .end local v12    # "scrollStart":F
    .end local v13    # "startAbsolute":Z
    .end local v14    # "startBound":F
    .end local v15    # "startEdge":Landroid/widget/EdgeEffect;
    .end local v16    # "startItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v17    # "targetScrollX":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .restart local v15    # "startEdge":Landroid/widget/EdgeEffect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .restart local v7    # "endEdge":Landroid/widget/EdgeEffect;
    goto/16 :goto_0

    .restart local v10    # "nextScrollX":F
    :cond_2
    move v12, v10

    .restart local v12    # "scrollStart":F
    goto/16 :goto_1

    .restart local v16    # "startItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_2

    .restart local v13    # "startAbsolute":Z
    :cond_4
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    move/from16 v20, v0

    mul-float v14, v19, v20

    .restart local v14    # "startBound":F
    goto/16 :goto_3

    .restart local v8    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_4

    .restart local v5    # "endAbsolute":Z
    :cond_6
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    move/from16 v20, v0

    mul-float v6, v19, v20

    .restart local v6    # "endBound":F
    goto/16 :goto_5

    :cond_7
    cmpl-float v19, v12, v6

    if-lez v19, :cond_9

    if-eqz v5, :cond_8

    sub-float v11, v12, v6

    .restart local v11    # "over":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v9, 0x1

    .end local v11    # "over":F
    :cond_8
    move v3, v6

    .restart local v3    # "clampedScrollStart":F
    goto/16 :goto_6

    .end local v3    # "clampedScrollStart":F
    :cond_9
    move v3, v12

    .restart local v3    # "clampedScrollStart":F
    goto/16 :goto_6

    :cond_a
    move/from16 v17, v3

    .restart local v17    # "targetScrollX":F
    goto/16 :goto_7
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 14
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v12, v0, p3

    .local v12, "widthWithMargin":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v7, v0, p4

    .local v7, "oldWidthWithMargin":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v13

    .local v13, "xpos":I
    int-to-float v0, v13

    int-to-float v2, v7

    div-float v8, v0, v2

    .local v8, "pageOffset":F
    int-to-float v0, v12

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .local v1, "newOffsetPixels":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int v5, v0, v2

    .local v5, "newDuration":I
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v11

    .local v11, "targetInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget v3, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .end local v1    # "newOffsetPixels":I
    .end local v5    # "newDuration":I
    .end local v7    # "oldWidthWithMargin":I
    .end local v8    # "pageOffset":F
    .end local v11    # "targetInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v12    # "widthWithMargin":I
    .end local v13    # "xpos":I
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v6

    .local v6, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v6, :cond_2

    iget v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .local v9, "scrollOffset":F
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v10, v0

    .local v10, "scrollPos":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    if-eq v10, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v10, v0}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    goto :goto_0

    .end local v9    # "scrollOffset":F
    .end local v10    # "scrollPos":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .local v2, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v3, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->getLeftEdgeForItem(I)I

    move-result v0

    .local v0, "destX":I
    if-eqz p2, :cond_2

    invoke-virtual {p0, v0, v2, p3}, Lcom/android/internal/widget/ViewPager;->smoothScrollTo(III)V

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    if-eqz p4, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p4, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    if-eqz p4, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->enableLayers(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/widget/ViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    .prologue
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/internal/widget/ViewPager;->sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "focusableCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getDescendantFocusability()I

    move-result v1

    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_1

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v4

    .local v4, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_5
    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    new-instance v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    .local v0, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iput p1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/android/internal/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v2

    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .local v0, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/android/internal/widget/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    iget-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/16 v12, 0x42

    const/16 v11, 0x11

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    .local v1, "currentFocused":Landroid/view/View;
    if-ne v1, p0, :cond_3

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .local v4, "nextFocused":Landroid/view/View;
    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_a

    if-ne p1, v11, :cond_8

    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .local v5, "nextLeft":I
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .local v0, "currLeft":I
    if-eqz v1, :cond_7

    if-lt v5, v0, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageLeft()Z

    move-result v2

    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/ViewPager;->playSoundEffect(I)V

    :cond_2
    return v2

    .end local v2    # "handled":Z
    .end local v4    # "nextFocused":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_0

    const/4 v3, 0x0

    .local v3, "isChild":Z
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    if-ne v6, p0, :cond_5

    const/4 v3, 0x1

    :cond_4
    if-nez v3, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_3
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_6

    const-string v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_3

    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_2

    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const-string v8, "ViewPager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto/16 :goto_0

    .end local v3    # "isChild":Z
    .end local v6    # "parent":Landroid/view/ViewParent;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "currLeft":I
    .restart local v2    # "handled":Z
    .restart local v4    # "nextFocused":Landroid/view/View;
    .restart local v5    # "nextLeft":I
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_1

    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_8
    if-ne p1, v12, :cond_1

    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .restart local v5    # "nextLeft":I
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .restart local v0    # "currLeft":I
    if-eqz v1, :cond_9

    if-gt v5, v0, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageRight()Z

    move-result v2

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto/16 :goto_1

    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_a
    if-eq p1, v11, :cond_b

    const/4 v8, 0x1

    if-ne p1, v8, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageLeft()Z

    move-result v2

    goto/16 :goto_1

    :cond_c
    if-eq p1, v12, :cond_d

    const/4 v8, 0x2

    if-ne p1, v8, :cond_1

    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageRight()Z

    move-result v2

    goto/16 :goto_1
.end method

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

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
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
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v1

    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    .local v0, "scrollX":I
    if-gez p1, :cond_3

    int-to-float v4, v1

    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v0, v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    if-lez p1, :cond_0

    int-to-float v4, v1

    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v0, v4, :cond_4

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    instance-of v0, p1, Lcom/android/internal/widget/ViewPager$LayoutParams;

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

.method public computeScroll()V
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v1

    .local v1, "oldY":I
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .local v2, "x":I
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    invoke-direct {p0, v2}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    .local v0, "adapterCount":I
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    if-ge v12, v13, :cond_1

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, v0, :cond_1

    move v7, v10

    .local v7, "needPopulate":Z
    :goto_0
    iget v8, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .local v8, "newCurrItem":I
    const/4 v5, 0x0

    .local v5, "isUpdating":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_6

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .local v4, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v13, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    .local v9, "newPos":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "isUpdating":Z
    .end local v7    # "needPopulate":Z
    .end local v8    # "newCurrItem":I
    .end local v9    # "newPos":I
    :cond_1
    move v7, v11

    goto :goto_0

    .restart local v3    # "i":I
    .restart local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v5    # "isUpdating":Z
    .restart local v7    # "needPopulate":Z
    .restart local v8    # "newCurrItem":I
    .restart local v9    # "newPos":I
    :cond_2
    const/4 v12, -0x2

    if-ne v9, v12, :cond_4

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    if-nez v5, :cond_3

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v5, 0x1

    :cond_3
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v13, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v14, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, p0, v13, v14}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    const/4 v7, 0x1

    iget v12, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v13, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v12, v13, :cond_0

    iget v12, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v13, v0, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    iget v12, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-eq v12, v9, :cond_0

    iget v12, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v13, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v12, v13, :cond_5

    move v8, v9

    :cond_5
    iput v9, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    const/4 v7, 0x1

    goto :goto_2

    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v9    # "newPos":I
    :cond_6
    if-eqz v5, :cond_7

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    :cond_7
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v13, Lcom/android/internal/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v2

    .local v2, "childCount":I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_9

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .local v6, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v12, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_8

    const/4 v12, 0x0

    iput v12, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_9
    invoke-virtual {p0, v8, v11, v10}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    .end local v2    # "childCount":I
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    .local v1, "needsInvalidate":Z
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getOverScrollMode()I

    move-result v2

    .local v2, "overScrollMode":I
    if-eqz v2, :cond_0

    if-ne v2, v6, :cond_4

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v5}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v5

    if-le v5, v6, :cond_4

    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .local v3, "restoreCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v4

    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v5, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v4

    .restart local v4    # "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .restart local v0    # "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    :cond_3
    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/android/internal/widget/PagerAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$LayoutParams;

    iget v1, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    .local v1, "result":I
    return v1

    .end local v0    # "index":I
    .end local v1    # "result":I
    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v3, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_1
    return-object v1

    .restart local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v2, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_1
    return-object v1

    .restart local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    if-lez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v12

    .local v12, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v13

    .local v13, "width":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v8, v15, v16

    .local v8, "marginOffset":F
    const/4 v4, 0x0

    .local v4, "itemIndex":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v9, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .local v9, "offset":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "itemCount":I
    iget v1, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .local v1, "firstPos":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v16, v3, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/ViewPager$ItemInfo;

    iget v6, v15, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .local v6, "lastPos":I
    move v10, v1

    .local v10, "pos":I
    :goto_0
    if-ge v10, v6, :cond_2

    :goto_1
    iget v15, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v10, v15, :cond_0

    if-ge v4, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .restart local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_1

    :cond_0
    iget v15, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v10, v15, :cond_3

    iget v5, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .local v5, "itemOffset":F
    iget v14, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .local v14, "widthFactor":F
    :goto_2
    int-to-float v15, v13

    mul-float v11, v5, v15

    .local v11, "scaledOffset":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v15

    if-eqz v15, :cond_4

    const/high16 v15, 0x4b800000    # 1.6777216E7f

    sub-float v7, v15, v11

    .local v7, "left":F
    :goto_3
    add-float v15, v5, v14

    add-float v9, v15, v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v7

    int-to-float v0, v12

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v0, v7

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mTopPageBounds:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v7

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mBottomPageBounds:I

    move/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int v15, v12, v13

    int-to-float v15, v15

    cmpl-float v15, v7, v15

    if-lez v15, :cond_5

    .end local v1    # "firstPos":I
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v3    # "itemCount":I
    .end local v4    # "itemIndex":I
    .end local v5    # "itemOffset":F
    .end local v6    # "lastPos":I
    .end local v7    # "left":F
    .end local v8    # "marginOffset":F
    .end local v9    # "offset":F
    .end local v10    # "pos":I
    .end local v11    # "scaledOffset":F
    .end local v12    # "scrollX":I
    .end local v13    # "width":I
    .end local v14    # "widthFactor":F
    :cond_2
    return-void

    .restart local v1    # "firstPos":I
    .restart local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v3    # "itemCount":I
    .restart local v4    # "itemIndex":I
    .restart local v6    # "lastPos":I
    .restart local v8    # "marginOffset":F
    .restart local v9    # "offset":F
    .restart local v10    # "pos":I
    .restart local v12    # "scrollX":I
    .restart local v13    # "width":I
    :cond_3
    move v5, v9

    .restart local v5    # "itemOffset":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v15, v10}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v14

    .restart local v14    # "widthFactor":F
    goto :goto_2

    .restart local v11    # "scaledOffset":F
    :cond_4
    int-to-float v15, v13

    mul-float/2addr v15, v14

    add-float v7, v11, v15

    .restart local v7    # "left":F
    goto :goto_3

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->canScroll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->canScroll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .local v6, "action":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    if-eqz v6, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    sparse-switch v6, :sswitch_data_0

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    goto :goto_0

    :sswitch_0
    iget v7, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .local v7, "activePointerId":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .local v9, "pointerIndex":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .local v10, "x":F
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    sub-float v8, v10, v0

    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .local v11, "xDiff":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .local v12, "y":F
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .local v13, "yDiff":F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Lcom/android/internal/widget/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    iput v10, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    iput v12, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_a

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v11

    cmpl-float v0, v0, v13

    if-lez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_9

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    iput v12, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    :cond_8
    :goto_3
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v10}, Lcom/android/internal/widget/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    :cond_a
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .end local v7    # "activePointerId":I
    .end local v8    # "dx":F
    .end local v9    # "pointerIndex":I
    .end local v10    # "x":F
    .end local v11    # "xDiff":F
    .end local v12    # "y":F
    .end local v13    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    goto/16 :goto_1

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 31
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v10

    .local v10, "count":I
    sub-int v25, p4, p2

    .local v25, "width":I
    sub-int v12, p5, p3

    .local v12, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v19

    .local v19, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v21

    .local v21, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v20

    .local v20, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v18

    .local v18, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v22

    .local v22, "scrollX":I
    const/4 v11, 0x0

    .local v11, "decorCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v10, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .local v17, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    const/4 v6, 0x0

    .local v6, "childLeft":I
    const/4 v8, 0x0

    .local v8, "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v14, v27, 0x7

    .local v14, "hgrav":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v24, v27, 0x70

    .local v24, "vgrav":I
    packed-switch v14, :pswitch_data_0

    :pswitch_0
    move/from16 v6, v19

    :goto_1
    sparse-switch v24, :sswitch_data_0

    move/from16 v8, v21

    :goto_2
    add-int v6, v6, v22

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    add-int v27, v27, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v8

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v6, v8, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    .end local v6    # "childLeft":I
    .end local v8    # "childTop":I
    .end local v14    # "hgrav":I
    .end local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v24    # "vgrav":I
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .restart local v6    # "childLeft":I
    .restart local v8    # "childTop":I
    .restart local v14    # "hgrav":I
    .restart local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .restart local v24    # "vgrav":I
    :pswitch_1
    move/from16 v6, v19

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    add-int v19, v19, v27

    goto :goto_1

    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v27, v25, v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    :pswitch_3
    sub-int v27, v25, v20

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    sub-int v6, v27, v28

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    add-int v20, v20, v27

    goto :goto_1

    :sswitch_0
    move/from16 v8, v21

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v21, v21, v27

    goto :goto_2

    :sswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v27, v12, v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_2

    :sswitch_2
    sub-int v27, v12, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    sub-int v8, v27, v28

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v18, v18, v27

    goto :goto_2

    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v8    # "childTop":I
    .end local v14    # "hgrav":I
    .end local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v24    # "vgrav":I
    :cond_1
    sub-int v27, v25, v19

    sub-int v9, v27, v20

    .local v9, "childWidth":I
    const/4 v15, 0x0

    :goto_3
    if-ge v15, v10, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    :cond_2
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .restart local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-nez v27, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v16

    .local v16, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v16, :cond_2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    int-to-float v0, v9

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .local v26, "widthSpec":I
    sub-int v27, v12, v21

    sub-int v27, v27, v18

    const/high16 v28, 0x40000000    # 2.0f

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .local v13, "heightSpec":I
    move/from16 v0, v26

    invoke-virtual {v5, v0, v13}, Landroid/view/View;->measure(II)V

    .end local v13    # "heightSpec":I
    .end local v26    # "widthSpec":I
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .local v7, "childMeasuredWidth":I
    int-to-float v0, v9

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v23, v0

    .local v23, "startOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v27

    if-eqz v27, :cond_5

    const/high16 v27, 0x1000000

    sub-int v27, v27, v20

    sub-int v27, v27, v23

    sub-int v6, v27, v7

    .restart local v6    # "childLeft":I
    :goto_5
    move/from16 v8, v21

    .restart local v8    # "childTop":I
    add-int v27, v6, v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v8

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v6, v8, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_4

    .end local v6    # "childLeft":I
    .end local v8    # "childTop":I
    :cond_5
    add-int v6, v19, v23

    .restart local v6    # "childLeft":I
    goto :goto_5

    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v7    # "childMeasuredWidth":I
    .end local v16    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v23    # "startOffset":I
    :cond_6
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mTopPageBounds:I

    sub-int v27, v12, v18

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mBottomPageBounds:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/widget/ViewPager;->mDecorChildCount:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    :cond_7
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/widget/ViewPager;->getDefaultSize(II)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/widget/ViewPager;->getDefaultSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setMeasuredDimension(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result v15

    .local v15, "measuredWidth":I
    div-int/lit8 v14, v15, 0xa

    .local v14, "maxGutterSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mDefaultGutterSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v16

    .local v16, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .local v13, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    .local v11, "hgrav":I
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .local v17, "vgrav":I
    const/high16 v18, -0x80000000

    .local v18, "widthMode":I
    const/high16 v8, -0x80000000

    .local v8, "heightMode":I
    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .local v7, "consumeVertical":Z
    :goto_1
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .local v6, "consumeHorizontal":Z
    :goto_2
    if-eqz v7, :cond_8

    const/high16 v18, 0x40000000    # 2.0f

    :cond_2
    :goto_3
    move/from16 v19, v5

    .local v19, "widthSize":I
    move v9, v4

    .local v9, "heightSize":I
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    const/high16 v18, 0x40000000    # 2.0f

    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    move/from16 v19, v0

    :cond_3
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    const/high16 v8, 0x40000000    # 2.0f

    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    iget v9, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    :cond_4
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .local v20, "widthSpec":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .restart local v8    # "heightMode":I
    .restart local v11    # "hgrav":I
    .restart local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .restart local v17    # "vgrav":I
    .restart local v18    # "widthMode":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .restart local v7    # "consumeVertical":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .restart local v6    # "consumeHorizontal":Z
    :cond_8
    if-eqz v6, :cond_2

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    .restart local v9    # "heightSize":I
    .restart local v10    # "heightSpec":I
    .restart local v19    # "widthSize":I
    .restart local v20    # "widthSpec":I
    :cond_9
    if-eqz v6, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_4

    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_a
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mChildWidthMeasureSpec:I

    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mChildHeightMeasureSpec:I

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v16

    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .restart local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    if-eqz v13, :cond_b

    iget-boolean v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    :cond_b
    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .restart local v20    # "widthSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mChildHeightMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .end local v3    # "child":Landroid/view/View;
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 17
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mDecorChildCount:I

    if-lez v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v12

    .local v12, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v10

    .local v10, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v11

    .local v11, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v14

    .local v14, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v4

    .local v4, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .local v9, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v15, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget v15, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v15, 0x7

    .local v7, "hgrav":I
    const/4 v5, 0x0

    .local v5, "childLeft":I
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v5, v10

    :goto_2
    add-int/2addr v5, v12

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v6, v5, v15

    .local v6, "childOffset":I
    if-eqz v6, :cond_0

    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .end local v6    # "childOffset":I
    :pswitch_1
    move v5, v10

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v10, v15

    goto :goto_2

    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v15, v14, v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2

    :pswitch_3
    sub-int v15, v14, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sub-int v5, v15, v16

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v11, v15

    goto :goto_2

    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v5    # "childLeft":I
    .end local v7    # "hgrav":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "scrollX":I
    .end local v14    # "width":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v12

    .restart local v12    # "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v4

    .restart local v4    # "childCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v4, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .restart local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_5

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int/2addr v15, v12

    int-to-float v15, v15

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .local v13, "transformPos":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    invoke-interface {v15, v3, v13}, Lcom/android/internal/widget/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v12    # "scrollX":I
    .end local v13    # "transformPos":F
    :cond_6
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    .local v6, "index":I
    const/4 v5, 0x1

    .local v5, "increment":I
    move v2, v1

    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v4

    .local v4, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_2
    return v7

    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .restart local v6    # "index":I
    const/4 v5, -0x1

    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    instance-of v1, p1, Lcom/android/internal/widget/ViewPager$SavedState;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ViewPager$SavedState;

    .local v0, "ss":Lcom/android/internal/widget/ViewPager$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v2, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/ViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .local v0, "ss":Lcom/android/internal/widget/ViewPager$SavedState;
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iput v2, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/android/internal/widget/ViewPager;->recomputeScrollPosition(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x0

    :goto_0
    return v24

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v24

    if-nez v24, :cond_2

    :cond_1
    const/16 v24, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .local v5, "action":I
    const/4 v11, 0x0

    .local v11, "needsInvalidate":Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    if-eqz v11, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    :cond_5
    const/16 v24, 0x1

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-nez v24, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    .local v15, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .local v20, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .local v21, "xDiff":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    .local v22, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .local v23, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v21, v24

    if-lez v24, :cond_6

    cmpl-float v24, v21, v23

    if-lez v24, :cond_6

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    .local v14, "parent":Landroid/view/ViewParent;
    if-eqz v14, :cond_6

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .end local v14    # "parent":Landroid/view/ViewParent;
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .local v6, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .restart local v20    # "x":F
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager;->performDrag(F)Z

    move-result v24

    or-int v11, v11, v24

    goto/16 :goto_1

    .end local v6    # "activePointerIndex":I
    .restart local v15    # "pointerIndex":I
    .restart local v21    # "xDiff":F
    .restart local v22    # "y":F
    .restart local v23    # "yDiff":F
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    goto :goto_2

    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .local v19, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mMaximumVelocity:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    .local v10, "initialVelocity":I
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollStart()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v16, v0

    .local v16, "scrollStart":F
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v17, v16, v24

    .local v17, "scrolledPages":F
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v8

    .local v8, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v7, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .local v7, "currentPage":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v24

    if-eqz v24, :cond_8

    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v24, v0

    sub-float v24, v24, v17

    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v25, v0

    div-float v13, v24, v25

    .local v13, "nextPageOffset":F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .restart local v6    # "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .restart local v20    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    .local v18, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v7, v13, v10, v1}, Lcom/android/internal/widget/ViewPager;->determineTargetPage(IFII)I

    move-result v12

    .local v12, "nextPage":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2, v10}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->endDrag()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    const/4 v11, 0x1

    goto/16 :goto_1

    .end local v6    # "activePointerIndex":I
    .end local v12    # "nextPage":I
    .end local v13    # "nextPageOffset":F
    .end local v18    # "totalDelta":I
    .end local v20    # "x":F
    :cond_8
    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v24, v0

    sub-float v24, v17, v24

    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v25, v0

    div-float v13, v24, v25

    .restart local v13    # "nextPageOffset":F
    goto :goto_3

    .end local v7    # "currentPage":I
    .end local v8    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v10    # "initialVelocity":I
    .end local v13    # "nextPageOffset":F
    .end local v16    # "scrollStart":F
    .end local v17    # "scrolledPages":F
    .end local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->endDrag()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    const/4 v11, 0x1

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .local v9, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .restart local v20    # "x":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .end local v9    # "index":I
    .end local v20    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 3

    .prologue
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_1
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x1020039 -> :sswitch_1
        0x102003b -> :sswitch_0
    .end sparse-switch
.end method

.method public populate()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->populate(I)V

    return-void
.end method

.method populate(I)V
    .locals 30
    .param p1, "newCurrentItem"    # I

    .prologue
    const/16 v21, 0x0

    .local v21, "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    const/4 v15, 0x2

    .local v15, "focusDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    const/16 v15, 0x42

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v21

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v15, 0x11

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v27

    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    move/from16 v22, v0

    .local v22, "pageLimit":I
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v28, v0

    sub-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v26

    .local v26, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v4

    .local v4, "N":I
    add-int/lit8 v27, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v28, v0

    add-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v12

    .local v12, "endPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v4, v0, :cond_5

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .local v24, "resName":Ljava/lang/String;
    :goto_2
    new-instance v27, Ljava/lang/IllegalStateException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", found: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager id: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager class: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Problematic adapter: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .end local v24    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getId()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "resName":Ljava/lang/String;
    goto :goto_2

    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v24    # "resName":Ljava/lang/String;
    :cond_5
    const/4 v8, -0x1

    .local v8, "curIndex":I
    const/4 v9, 0x0

    .local v9, "curItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .local v17, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_c

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    move-object/from16 v9, v17

    .end local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_6
    if-nez v9, :cond_7

    if-lez v4, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v9

    :cond_7
    if-eqz v9, :cond_a

    const/4 v13, 0x0

    .local v13, "extraWidthLeft":F
    add-int/lit8 v18, v8, -0x1

    .local v18, "itemIndex":I
    if-ltz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    .restart local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v7

    .local v7, "clientWidth":I
    if-gtz v7, :cond_e

    const/16 v19, 0x0

    .local v19, "leftWidthNeeded":F
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, -0x1

    .local v23, "pos":I
    :goto_6
    if-ltz v23, :cond_8

    cmpl-float v27, v13, v19

    if-ltz v27, :cond_12

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_12

    if-nez v17, :cond_f

    :cond_8
    iget v14, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .local v14, "extraWidthRight":F
    add-int/lit8 v18, v8, 0x1

    const/high16 v27, 0x40000000    # 2.0f

    cmpg-float v27, v14, v27

    if-gez v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_7
    if-gtz v7, :cond_17

    const/16 v25, 0x0

    .local v25, "rightWidthNeeded":F
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, 0x1

    :goto_9
    move/from16 v0, v23

    if-ge v0, v4, :cond_9

    cmpl-float v27, v14, v25

    if-ltz v27, :cond_1b

    move/from16 v0, v23

    if-le v0, v12, :cond_1b

    if-nez v17, :cond_18

    .end local v25    # "rightWidthNeeded":F
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v8, v1}, Lcom/android/internal/widget/ViewPager;->calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V

    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v29, v0

    if-eqz v9, :cond_1f

    iget-object v0, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v27, v0

    :goto_a
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v6

    .local v6, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v6, :cond_20

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .local v20, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-nez v27, :cond_b

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-nez v27, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v17

    .restart local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->position:I

    .end local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v16    # "i":I
    .end local v20    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .restart local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .end local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v13    # "extraWidthLeft":F
    .restart local v18    # "itemIndex":I
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_4

    .restart local v7    # "clientWidth":I
    .restart local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_e
    const/high16 v27, 0x40000000    # 2.0f

    iget v0, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v7

    move/from16 v29, v0

    div-float v28, v28, v29

    add-float v19, v27, v28

    goto/16 :goto_5

    .restart local v19    # "leftWidthNeeded":F
    .restart local v23    # "pos":I
    :cond_f
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v18, v18, -0x1

    add-int/lit8 v8, v8, -0x1

    if-ltz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :cond_10
    :goto_c
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_6

    :cond_11
    const/16 v17, 0x0

    goto :goto_c

    :cond_12
    if-eqz v17, :cond_14

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_d
    goto :goto_c

    :cond_13
    const/16 v17, 0x0

    goto :goto_d

    :cond_14
    add-int/lit8 v27, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    add-int/lit8 v8, v8, 0x1

    if-ltz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_e
    goto :goto_c

    :cond_15
    const/16 v17, 0x0

    goto :goto_e

    .restart local v14    # "extraWidthRight":F
    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v7

    move/from16 v28, v0

    div-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    add-float v25, v27, v28

    goto/16 :goto_8

    .restart local v25    # "rightWidthNeeded":F
    :cond_18
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :cond_19
    :goto_f
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_9

    :cond_1a
    const/16 v17, 0x0

    goto :goto_f

    :cond_1b
    if-eqz v17, :cond_1d

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_10
    goto :goto_f

    :cond_1c
    const/16 v17, 0x0

    goto :goto_10

    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v17

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_11
    goto :goto_f

    :cond_1e
    const/16 v17, 0x0

    goto :goto_11

    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    .end local v25    # "rightWidthNeeded":F
    :cond_1f
    const/16 v27, 0x0

    goto/16 :goto_a

    .restart local v6    # "childCount":I
    .restart local v16    # "i":I
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v10

    .local v10, "currentFocused":Landroid/view/View;
    if-eqz v10, :cond_23

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/ViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v17

    .restart local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_12
    if-eqz v17, :cond_21

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    :cond_21
    const/16 v16, 0x0

    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v17

    if-eqz v17, :cond_22

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_22

    invoke-virtual {v5, v15}, Landroid/view/View;->requestFocus(I)Z

    move-result v27

    if-nez v27, :cond_1

    :cond_22
    add-int/lit8 v16, v16, 0x1

    goto :goto_13

    .end local v5    # "child":Landroid/view/View;
    .end local v17    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_23
    const/16 v17, 0x0

    goto :goto_12
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/android/internal/widget/PagerAdapter;)V
    .locals 10
    .param p1, "adapter"    # Lcom/android/internal/widget/PagerAdapter;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v4, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v5, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v6, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v4, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->removeNonDecorViews()V

    iput v7, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v7, v7}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .local v2, "oldAdapter":Lcom/android/internal/widget/PagerAdapter;
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iput v7, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    if-nez v4, :cond_2

    new-instance v4, Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-direct {v4, p0, v8}, Lcom/android/internal/widget/ViewPager$PagerObserver;-><init>(Lcom/android/internal/widget/ViewPager;Lcom/android/internal/widget/ViewPager$1;)V

    iput-object v4, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v7, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    iget-boolean v3, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .local v3, "wasFirstLayout":Z
    iput-boolean v9, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    if-ltz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v4, v7, v9}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    iput-object v8, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v8, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .end local v3    # "wasFirstLayout":Z
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    if-eqz v4, :cond_4

    if-eq v2, p1, :cond_4

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    invoke-interface {v4, v2, p1}, Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/android/internal/widget/PagerAdapter;Lcom/android/internal/widget/PagerAdapter;)V

    :cond_4
    return-void

    .restart local v3    # "wasFirstLayout":Z
    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    return-void
.end method

.method setCurrentItemInternal(IZZ)Z
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    move-result v0

    return v0
.end method

.method setCurrentItemInternal(IZZI)Z
    .locals 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v0, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    if-nez p3, :cond_2

    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .local v2, "pageLimit":I
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_3

    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_4

    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    iput-boolean v4, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_4
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eq v3, p1, :cond_5

    move v0, v4

    .local v0, "dispatchSelected":Z
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    if-eqz v3, :cond_8

    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_6
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    :goto_2
    move v0, v4

    goto :goto_0

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->populate(I)V

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_2
.end method

.method setInternalPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)Lcom/android/internal/widget/ViewPager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .local v0, "oldListener":Lcom/android/internal/widget/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    const/4 v3, 0x1

    if-ge p1, v3, :cond_0

    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    return-void
.end method

.method public setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .prologue
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .local v0, "oldMargin":I
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v1

    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/android/internal/widget/ViewPager;->recomputeScrollPosition(IIII)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->invalidate()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLcom/android/internal/widget/ViewPager$PageTransformer;)V
    .locals 5
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/android/internal/widget/ViewPager$PageTransformer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    move v0, v2

    .local v0, "hasTransformer":Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    if-eq v0, v4, :cond_4

    move v1, v2

    .local v1, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setChildrenDrawingOrderEnabled(Z)V

    if-eqz v0, :cond_5

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :cond_0
    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    :cond_1
    return-void

    .end local v0    # "hasTransformer":Z
    .end local v1    # "needsPopulate":Z
    :cond_2
    move v0, v3

    goto :goto_0

    .restart local v0    # "hasTransformer":Z
    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    .restart local v1    # "needsPopulate":Z
    :cond_5
    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    goto :goto_3
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;->smoothScrollTo(III)V

    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v2

    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v3

    .local v3, "sy":I
    sub-int v4, p1, v2

    .local v4, "dx":I
    sub-int v5, p2, v3

    .local v5, "dy":I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v12

    .local v12, "width":I
    div-int/lit8 v9, v12, 0x2

    .local v9, "halfWidth":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    int-to-float v14, v12

    div-float/2addr v13, v14

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v13, v9

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v7, v1, v13

    .local v7, "distance":F
    const/4 v6, 0x0

    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_2

    const/high16 v1, 0x447a0000    # 1000.0f

    move/from16 v0, p3

    int-to-float v13, v0

    div-float v13, v7, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_2
    int-to-float v1, v12

    iget-object v13, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v14, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v13

    mul-float v11, v1, v13

    .local v11, "pageWidth":F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    div-float v10, v1, v13

    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v1, v13

    float-to-int v6, v1

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
