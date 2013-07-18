.class Landroid/webkit/ViewManager;
.super Ljava/lang/Object;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ViewManager$ChildView;
    }
.end annotation


# static fields
.field private static final MAX_SURFACE_DIMENSION:I = 0x800


# instance fields
.field private final MAX_SURFACE_AREA:I

.field private final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/ViewManager$ChildView;",
            ">;"
        }
    .end annotation
.end field

.field private mHidden:Z

.field private mReadyToDraw:Z

.field private final mWebView:Landroid/webkit/WebViewClassic;

.field private mZoomInProgress:Z


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 6
    .parameter "w"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    iput-object p1, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v1, v2, v3

    .local v1, pixelArea:I
    int-to-double v2, v1

    const-wide/high16 v4, 0x4006

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Landroid/webkit/ViewManager;->MAX_SURFACE_AREA:I

    return-void
.end method

.method static synthetic access$000(Landroid/webkit/ViewManager;Landroid/webkit/ViewManager$ChildView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/ViewManager;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/ViewManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/ViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/webkit/ViewManager;->mReadyToDraw:Z

    return v0
.end method

.method static synthetic access$402(Landroid/webkit/ViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/webkit/ViewManager;->mReadyToDraw:Z

    return p1
.end method

.method private requestLayout(Landroid/webkit/ViewManager$ChildView;)V
    .locals 13
    .parameter "v"

    .prologue
    const/16 v12, 0x800

    iget-object v10, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    invoke-virtual {v10, v11}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v7

    .local v7, width:I
    iget-object v10, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    invoke-virtual {v10, v11}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v3

    .local v3, height:I
    iget-object v10, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->x:I

    invoke-virtual {v10, v11}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v8

    .local v8, x:I
    iget-object v10, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->y:I

    invoke-virtual {v10, v11}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v9

    .local v9, y:I
    iget-object v10, p1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .local v4, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v10, v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v10, :cond_1

    move-object v5, v4

    check-cast v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    .local v5, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v7, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    iput v3, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    iput v8, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iput v9, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    :goto_0
    iget-object v10, p1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v10, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    instance-of v10, v10, Landroid/view/SurfaceView;

    if-eqz v10, :cond_0

    iget-object v6, p1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    check-cast v6, Landroid/view/SurfaceView;

    .local v6, sView:Landroid/view/SurfaceView;
    invoke-virtual {v6}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    if-eqz v10, :cond_2

    .end local v6           #sView:Landroid/view/SurfaceView;
    :cond_0
    :goto_1
    return-void

    .end local v5           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_1
    new-instance v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v5, v7, v3, v8, v9}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .restart local v5       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    goto :goto_0

    .restart local v6       #sView:Landroid/view/SurfaceView;
    :cond_2
    move v2, v7

    .local v2, fixedW:I
    move v1, v3

    .local v1, fixedH:I
    if-gt v2, v12, :cond_3

    if-le v1, v12, :cond_4

    :cond_3
    iget v10, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    if-le v10, v11, :cond_7

    const/16 v2, 0x800

    iget v10, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    mul-int/lit16 v10, v10, 0x800

    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    div-int v1, v10, v11

    :cond_4
    :goto_2
    mul-int v10, v2, v1

    iget v11, p0, Landroid/webkit/ViewManager;->MAX_SURFACE_AREA:I

    if-le v10, v11, :cond_5

    iget v10, p0, Landroid/webkit/ViewManager;->MAX_SURFACE_AREA:I

    int-to-float v0, v10

    .local v0, area:F
    iget v10, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    if-le v10, v11, :cond_8

    iget v10, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    int-to-float v10, v10

    mul-float/2addr v10, v0

    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v2, v10

    iget v10, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    mul-int/2addr v10, v2

    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    div-int v1, v10, v11

    .end local v0           #area:F
    :cond_5
    :goto_3
    if-ne v2, v7, :cond_6

    if-eq v1, v3, :cond_9

    :cond_6
    invoke-virtual {v6}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    invoke-interface {v10, v2, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_1

    :cond_7
    const/16 v1, 0x800

    iget v10, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    mul-int/lit16 v10, v10, 0x800

    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    div-int v2, v10, v11

    goto :goto_2

    .restart local v0       #area:F
    :cond_8
    iget v10, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    int-to-float v10, v10

    mul-float/2addr v10, v0

    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v1, v10

    iget v10, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    mul-int/2addr v10, v1

    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    div-int v2, v10, v11

    goto :goto_3

    .end local v0           #area:F
    :cond_9
    invoke-virtual {v6}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v10

    if-nez v10, :cond_a

    iget-boolean v10, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    if-eqz v10, :cond_a

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getWidth()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getHeight()I

    move-result v12

    invoke-interface {v10, v11, v12}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v6}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    if-nez v10, :cond_0

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_b

    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Landroid/view/SurfaceView;->setVisibility(I)V

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    iget-object v10, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v10, v10, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v11, Landroid/webkit/ViewManager$1;

    invoke-direct {v11, p0, v6}, Landroid/webkit/ViewManager$1;-><init>(Landroid/webkit/ViewManager;Landroid/view/SurfaceView;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v6}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    goto/16 :goto_1
.end method


# virtual methods
.method createView()Landroid/webkit/ViewManager$ChildView;
    .locals 1

    .prologue
    new-instance v0, Landroid/webkit/ViewManager$ChildView;

    invoke-direct {v0, p0}, Landroid/webkit/ViewManager$ChildView;-><init>(Landroid/webkit/ViewManager;)V

    return-object v0
.end method

.method endZoom()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    invoke-direct {p0, v1}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    goto :goto_0

    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_0
    return-void
.end method

.method hideAll()V
    .locals 4

    .prologue
    iget-boolean v2, p0, Landroid/webkit/ViewManager;->mHidden:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    iget-object v2, v1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/ViewManager;->mHidden:Z

    goto :goto_0
.end method

.method hitTest(II)Landroid/webkit/ViewManager$ChildView;
    .locals 5
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/webkit/ViewManager;->mHidden:Z

    if-eqz v3, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    iget-object v3, v1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, v1, Landroid/webkit/ViewManager$ChildView;->x:I

    if-lt p1, v3, :cond_1

    iget v3, v1, Landroid/webkit/ViewManager$ChildView;->x:I

    iget v4, v1, Landroid/webkit/ViewManager$ChildView;->width:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_1

    iget v3, v1, Landroid/webkit/ViewManager$ChildView;->y:I

    if-lt p2, v3, :cond_1

    iget v3, v1, Landroid/webkit/ViewManager$ChildView;->y:I

    iget v4, v1, Landroid/webkit/ViewManager$ChildView;->height:I

    add-int/2addr v3, v4

    if-ge p2, v3, :cond_1

    goto :goto_0

    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method postReadyToDrawAll()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/ViewManager$3;

    invoke-direct {v1, p0}, Landroid/webkit/ViewManager$3;-><init>(Landroid/webkit/ViewManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method postResetStateAll()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/ViewManager$2;

    invoke-direct {v1, p0}, Landroid/webkit/ViewManager$2;-><init>(Landroid/webkit/ViewManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method scaleAll()V
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    invoke-direct {p0, v1}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    goto :goto_0

    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_0
    return-void
.end method

.method showAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-boolean v2, p0, Landroid/webkit/ViewManager;->mHidden:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    iget-object v2, v1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_1
    iput-boolean v3, p0, Landroid/webkit/ViewManager;->mHidden:Z

    goto :goto_0
.end method

.method startZoom()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    invoke-direct {p0, v1}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    goto :goto_0

    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_0
    return-void
.end method
