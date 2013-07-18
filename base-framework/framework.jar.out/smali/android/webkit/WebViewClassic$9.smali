.class Landroid/webkit/WebViewClassic$9;
.super Landroid/content/BroadcastReceiver;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mPageVisibile:Z
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$2300(Landroid/webkit/WebViewClassic;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mUserPresent:Z
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$2400(Landroid/webkit/WebViewClassic;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getVisibility()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewClassic;->updatePageVisibilityState(II)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v2, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mUserPresent:Z
    invoke-static {v1, v2}, Landroid/webkit/WebViewClassic;->access$2402(Landroid/webkit/WebViewClassic;Z)Z

    :cond_0
    return-void
.end method
