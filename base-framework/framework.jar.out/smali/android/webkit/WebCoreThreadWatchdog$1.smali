.class Landroid/webkit/WebCoreThreadWatchdog$1;
.super Landroid/os/Handler;
.source "WebCoreThreadWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebCoreThreadWatchdog;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebCoreThreadWatchdog;


# direct methods
.method constructor <init>(Landroid/webkit/WebCoreThreadWatchdog;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebCoreThreadWatchdog$1;->this$0:Landroid/webkit/WebCoreThreadWatchdog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-class v4, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebCoreThreadWatchdog$1;->this$0:Landroid/webkit/WebCoreThreadWatchdog;

    #getter for: Landroid/webkit/WebCoreThreadWatchdog;->mPaused:Z
    invoke-static {v3}, Landroid/webkit/WebCoreThreadWatchdog;->access$000(Landroid/webkit/WebCoreThreadWatchdog;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    const/16 v3, 0x65

    :try_start_1
    invoke-virtual {p0, v3}, Landroid/webkit/WebCoreThreadWatchdog$1;->removeMessages(I)V

    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Landroid/webkit/WebCoreThreadWatchdog$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v5, 0x7530

    invoke-virtual {p0, v3, v5, v6}, Landroid/webkit/WebCoreThreadWatchdog$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v3, p0, Landroid/webkit/WebCoreThreadWatchdog$1;->this$0:Landroid/webkit/WebCoreThreadWatchdog;

    #getter for: Landroid/webkit/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/webkit/WebCoreThreadWatchdog;->access$200(Landroid/webkit/WebCoreThreadWatchdog;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Landroid/webkit/WebCoreThreadWatchdog$1;->this$0:Landroid/webkit/WebCoreThreadWatchdog;

    #getter for: Landroid/webkit/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/webkit/WebCoreThreadWatchdog;->access$200(Landroid/webkit/WebCoreThreadWatchdog;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xc5

    iget-object v7, p0, Landroid/webkit/WebCoreThreadWatchdog$1;->this$0:Landroid/webkit/WebCoreThreadWatchdog;

    #getter for: Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/webkit/WebCoreThreadWatchdog;->access$100(Landroid/webkit/WebCoreThreadWatchdog;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    .local v2, postedDialog:Z
    const-class v4, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v4

    :try_start_2
    iget-object v3, p0, Landroid/webkit/WebCoreThreadWatchdog$1;->this$0:Landroid/webkit/WebCoreThreadWatchdog;

    #getter for: Landroid/webkit/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;
    invoke-static {v3}, Landroid/webkit/WebCoreThreadWatchdog;->access$300(Landroid/webkit/WebCoreThreadWatchdog;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/WebViewClassic;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .local v0, activeView:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;

    iget-object v5, p0, Landroid/webkit/WebCoreThreadWatchdog$1;->this$0:Landroid/webkit/WebCoreThreadWatchdog;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v5, v6, p0}, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;-><init>(Landroid/webkit/WebCoreThreadWatchdog;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .end local v0           #activeView:Landroid/webkit/WebView;
    :cond_2
    if-nez v2, :cond_3

    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Landroid/webkit/WebCoreThreadWatchdog$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v5, 0x3a98

    invoke-virtual {p0, v3, v5, v6}, Landroid/webkit/WebCoreThreadWatchdog$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    monitor-exit v4

    goto/16 :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/WebViewClassic;>;"
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
