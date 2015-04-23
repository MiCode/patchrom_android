.class public final Lcom/android/internal/widget/FloatingToolbar;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/FloatingToolbar$ViewFader;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    }
.end annotation


# static fields
.field private static final NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mMenu:Landroid/view/Menu;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

.field private final mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

.field private final mPreviousContentRect:Landroid/graphics/Rect;

.field private mShowingMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestedWidth:I

.field private mWidthChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$1;

    invoke-direct {v0}, Lcom/android/internal/widget/FloatingToolbar$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    sget-object v0, Lcom/android/internal/widget/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$2;-><init>(Lcom/android/internal/widget/FloatingToolbar;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/FloatingToolbar;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->createPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/FloatingToolbar;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->getEstimatedToolbarHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->getEstimatedOpenOverflowButtonWidth(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/widget/FloatingToolbar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/view/MenuItem;

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/widget/FloatingToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Landroid/view/MenuItem;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/MenuItem;

    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->createOverflowMenuItemButton(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private static applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;
    .locals 7
    .param p0, "originalContext"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v3, v6, [I

    const/high16 v4, 0x1160000

    aput v4, v3, v5

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .local v1, "isLightTheme":Z
    if-eqz v1, :cond_0

    const v2, 0x1030237

    .local v2, "themeId":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v3

    .end local v2    # "themeId":I
    :cond_0
    const v2, 0x1030224

    goto :goto_0
.end method

.method private static createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private static createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .local v0, "animation":Landroid/animation/AnimatorSet;
    new-array v1, v6, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Landroid/view/View;->X:Landroid/util/Property;

    new-array v3, v6, [F

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v4

    aput v4, v3, v7

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v4

    aput v4, v3, v8

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startDelay"    # I
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .local v0, "animation":Landroid/animation/AnimatorSet;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109005b

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "imageMenuItemButton":Landroid/view/View;
    const v2, 0x1020054

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v0    # "imageMenuItemButton":Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109005a

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .local v1, "menuItemButton":Landroid/widget/Button;
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static createOverflowMenuItemButton(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109005e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private static createPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 5
    .param p0, "content"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v0, "popupContentHolder":Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .local v1, "popupWindow":Landroid/widget/PopupWindow;
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private static getEstimatedOpenOverflowButtonWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private static getEstimatedToolbarHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    return-object v2
.end method

.method private getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    .local v3, "subMenu":Landroid/view/Menu;
    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/android/internal/widget/FloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .end local v3    # "subMenu":Landroid/view/Menu;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v3    # "subMenu":Landroid/view/Menu;
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "menuItem":Landroid/view/MenuItem;
    .end local v3    # "subMenu":Landroid/view/Menu;
    :cond_2
    return-object v2
.end method

.method private isCurrentlyShowing(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar;->getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isIconOnlyMenuItem(Landroid/view/MenuItem;)Z
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->dismiss()V

    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hide()V

    return-void
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setContentRect(Landroid/graphics/Rect;)Lcom/android/internal/widget/FloatingToolbar;
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public setMenu(Landroid/view/Menu;)Lcom/android/internal/widget/FloatingToolbar;
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenu:Landroid/view/Menu;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/android/internal/widget/FloatingToolbar;
    .locals 1
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lcom/android/internal/widget/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    goto :goto_0
.end method

.method public setSuggestedWidth(I)Lcom/android/internal/widget/FloatingToolbar;
    .locals 8
    .param p1, "suggestedWidth"    # I

    .prologue
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mSuggestedWidth:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .local v0, "difference":I
    int-to-double v2, v0

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mSuggestedWidth:I

    int-to-double v4, v1

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    iput p1, p0, Lcom/android/internal/widget/FloatingToolbar;->mSuggestedWidth:I

    return-object p0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public show()Lcom/android/internal/widget/FloatingToolbar;
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    invoke-virtual {v1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/FloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v0

    .local v0, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-direct {p0, v0}, Lcom/android/internal/widget/FloatingToolbar;->isCurrentlyShowing(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->dismiss()V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar;->mSuggestedWidth:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/FloatingToolbar;->getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->show(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateCoordinates(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public updateLayout()Lcom/android/internal/widget/FloatingToolbar;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar;->show()Lcom/android/internal/widget/FloatingToolbar;

    :cond_0
    return-object p0
.end method
