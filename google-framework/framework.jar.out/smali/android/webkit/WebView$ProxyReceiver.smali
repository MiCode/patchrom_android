.class Landroid/webkit/WebView$ProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1109
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1109
    invoke-direct {p0}, Landroid/webkit/WebView$ProxyReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    #calls: Landroid/webkit/WebView;->handleProxyBroadcast(Landroid/content/Intent;)V
    invoke-static {p2}, Landroid/webkit/WebView;->access$200(Landroid/content/Intent;)V

    .line 1115
    :cond_0
    return-void
.end method
