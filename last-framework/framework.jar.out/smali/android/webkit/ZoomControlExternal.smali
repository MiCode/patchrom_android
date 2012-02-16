.class Landroid/webkit/ZoomControlExternal;
.super Ljava/lang/Object;
.source "ZoomControlExternal.java"

# interfaces
.implements Landroid/webkit/ZoomControlBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ZOOM_CONTROLS_TIMEOUT:J


# instance fields
.field private final mPrivateHandler:Landroid/os/Handler;

.field private final mWebView:Landroid/webkit/WebView;

.field private mZoomControlRunnable:Ljava/lang/Runnable;

.field private mZoomControls:Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    sput-wide v0, Landroid/webkit/ZoomControlExternal;->ZOOM_CONTROLS_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/webkit/ZoomControlExternal;->mPrivateHandler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Landroid/webkit/ZoomControlExternal;->mWebView:Landroid/webkit/WebView;

    .line 42
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/ZoomControlExternal;)Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/webkit/ZoomControlExternal;->mZoomControls:Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/ZoomControlExternal;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/webkit/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/ZoomControlExternal;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/webkit/ZoomControlExternal;->mPrivateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 28
    sget-wide v0, Landroid/webkit/ZoomControlExternal;->ZOOM_CONTROLS_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/webkit/ZoomControlExternal;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/webkit/ZoomControlExternal;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private createZoomControls()Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    iget-object v1, p0, Landroid/webkit/ZoomControlExternal;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, zoomControls:Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;
    new-instance v1, Landroid/webkit/ZoomControlExternal$2;

    invoke-direct {v1, p0}, Landroid/webkit/ZoomControlExternal$2;-><init>(Landroid/webkit/ZoomControlExternal;)V

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v1, Landroid/webkit/ZoomControlExternal$3;

    invoke-direct {v1, p0}, Landroid/webkit/ZoomControlExternal$3;-><init>(Landroid/webkit/ZoomControlExternal;)V

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-object v0
.end method


# virtual methods
.method public getControls()Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Landroid/webkit/ZoomControlExternal;->mZoomControls:Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0}, Landroid/webkit/ZoomControlExternal;->createZoomControls()Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/ZoomControlExternal;->mZoomControls:Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    .line 76
    iget-object v0, p0, Landroid/webkit/ZoomControlExternal;->mZoomControls:Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;->setVisibility(I)V

    .line 77
    new-instance v0, Landroid/webkit/ZoomControlExternal$1;

    invoke-direct {v0, p0}, Landroid/webkit/ZoomControlExternal$1;-><init>(Landroid/webkit/ZoomControlExternal;)V

    iput-object v0, p0, Landroid/webkit/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;

    .line 92
    :cond_0
    iget-object v0, p0, Landroid/webkit/ZoomControlExternal;->mZoomControls:Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Landroid/webkit/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Landroid/webkit/ZoomControlExternal;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    :cond_0
    iget-object v0, p0, Landroid/webkit/ZoomControlExternal;->mZoomControls:Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Landroid/webkit/ZoomControlExternal;->mZoomControls:Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    invoke-virtual {v0}, Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;->hide()V

    .line 59
    :cond_1
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/webkit/ZoomControlExternal;->mZoomControls:Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/ZoomControlExternal;->mZoomControls:Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    invoke-virtual {v0}, Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Landroid/webkit/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Landroid/webkit/ZoomControlExternal;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/ZoomControlExternal;->getControls()Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;->show(Z)V

    .line 49
    iget-object v0, p0, Landroid/webkit/ZoomControlExternal;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v2, Landroid/webkit/ZoomControlExternal;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
