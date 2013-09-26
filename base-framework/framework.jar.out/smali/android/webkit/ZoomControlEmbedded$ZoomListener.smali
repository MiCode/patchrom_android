.class Landroid/webkit/ZoomControlEmbedded$ZoomListener;
.super Ljava/lang/Object;
.source "ZoomControlEmbedded.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomControlEmbedded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/ZoomControlEmbedded;


# direct methods
.method private constructor <init>(Landroid/webkit/ZoomControlEmbedded;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkit/ZoomControlEmbedded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/ZoomControlEmbedded;Landroid/webkit/ZoomControlEmbedded$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/ZoomControlEmbedded$ZoomListener;-><init>(Landroid/webkit/ZoomControlEmbedded;)V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkit/ZoomControlEmbedded;

    #getter for: Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/ZoomControlEmbedded;->access$100(Landroid/webkit/ZoomControlEmbedded;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkit/ZoomControlEmbedded;

    #getter for: Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;
    invoke-static {v0}, Landroid/webkit/ZoomControlEmbedded;->access$200(Landroid/webkit/ZoomControlEmbedded;)Landroid/widget/ZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkit/ZoomControlEmbedded;

    invoke-virtual {v0}, Landroid/webkit/ZoomControlEmbedded;->update()V

    :cond_0
    return-void
.end method

.method public onZoom(Z)V
    .locals 1
    .parameter "zoomIn"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkit/ZoomControlEmbedded;

    #getter for: Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/ZoomControlEmbedded;->access$100(Landroid/webkit/ZoomControlEmbedded;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->zoomIn()Z

    :goto_0
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkit/ZoomControlEmbedded;

    invoke-virtual {v0}, Landroid/webkit/ZoomControlEmbedded;->update()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkit/ZoomControlEmbedded;

    #getter for: Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/ZoomControlEmbedded;->access$100(Landroid/webkit/ZoomControlEmbedded;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->zoomOut()Z

    goto :goto_0
.end method
