.class Landroid/webkit/PluginFullScreenHolder$1;
.super Ljava/lang/Object;
.source "PluginFullScreenHolder.java"

# interfaces
.implements Landroid/webkit/WebChromeClient$CustomViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/PluginFullScreenHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/PluginFullScreenHolder;


# direct methods
.method constructor <init>(Landroid/webkit/PluginFullScreenHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Landroid/webkit/PluginFullScreenHolder$1;->this$0:Landroid/webkit/PluginFullScreenHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Landroid/webkit/PluginFullScreenHolder$1;->this$0:Landroid/webkit/PluginFullScreenHolder;

    #getter for: Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/PluginFullScreenHolder;->access$000(Landroid/webkit/PluginFullScreenHolder;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    iget-object v0, p0, Landroid/webkit/PluginFullScreenHolder$1;->this$0:Landroid/webkit/PluginFullScreenHolder;

    #getter for: Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/PluginFullScreenHolder;->access$000(Landroid/webkit/PluginFullScreenHolder;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0xb6

    iget-object v2, p0, Landroid/webkit/PluginFullScreenHolder$1;->this$0:Landroid/webkit/PluginFullScreenHolder;

    #getter for: Landroid/webkit/PluginFullScreenHolder;->mNpp:I
    invoke-static {v2}, Landroid/webkit/PluginFullScreenHolder;->access$100(Landroid/webkit/PluginFullScreenHolder;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 143
    invoke-static {}, Landroid/webkit/PluginFullScreenHolder;->access$300()Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/PluginFullScreenHolder$1;->this$0:Landroid/webkit/PluginFullScreenHolder;

    #getter for: Landroid/webkit/PluginFullScreenHolder;->mContentView:Landroid/view/View;
    invoke-static {v1}, Landroid/webkit/PluginFullScreenHolder;->access$200(Landroid/webkit/PluginFullScreenHolder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;->removeView(Landroid/view/View;)V

    .line 144
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/webkit/PluginFullScreenHolder;->access$302(Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;)Landroid/webkit/PluginFullScreenHolder$CustomFrameLayout;

    .line 147
    iget-object v0, p0, Landroid/webkit/PluginFullScreenHolder$1;->this$0:Landroid/webkit/PluginFullScreenHolder;

    #getter for: Landroid/webkit/PluginFullScreenHolder;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/PluginFullScreenHolder;->access$000(Landroid/webkit/PluginFullScreenHolder;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->showAll()V

    .line 148
    return-void
.end method
