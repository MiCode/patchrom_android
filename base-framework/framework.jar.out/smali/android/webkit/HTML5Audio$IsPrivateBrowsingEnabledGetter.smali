.class Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;
.super Ljava/lang/Object;
.source "HTML5Audio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsPrivateBrowsingEnabledGetter"
.end annotation


# instance fields
.field private mIsPrivateBrowsingEnabled:Z

.field private mIsReady:Z

.field final synthetic this$0:Landroid/webkit/HTML5Audio;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5Audio;Landroid/os/Looper;Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter
    .parameter "uiThreadLooper"
    .parameter "webView"

    .prologue
    iput-object p1, p0, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;->this$0:Landroid/webkit/HTML5Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter$1;

    invoke-direct {v1, p0, p1, p3}, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter$1;-><init>(Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;Landroid/webkit/HTML5Audio;Landroid/webkit/WebViewClassic;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$002(Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;->mIsPrivateBrowsingEnabled:Z

    return p1
.end method

.method static synthetic access$102(Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;->mIsReady:Z

    return p1
.end method


# virtual methods
.method declared-synchronized get()Z
    .locals 1

    .prologue
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;->mIsReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-boolean v0, p0, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;->mIsPrivateBrowsingEnabled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
