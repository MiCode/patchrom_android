.class Landroid/webkit/WebSettingsClassic$EventHandler;
.super Ljava/lang/Object;
.source "WebSettingsClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettingsClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field static final PRIORITY:I = 0x1

.field static final SET_DOUBLE_TAP_TOAST_COUNT:I = 0x2

.field static final SYNC:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/webkit/WebSettingsClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebSettingsClassic;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic$EventHandler;->this$0:Landroid/webkit/WebSettingsClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebSettingsClassic;Landroid/webkit/WebSettingsClassic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebSettingsClassic$EventHandler;-><init>(Landroid/webkit/WebSettingsClassic;)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebSettingsClassic$EventHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic$EventHandler;->setRenderPriority()V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/WebSettingsClassic$EventHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic$EventHandler;->createHandler()V

    return-void
.end method

.method private declared-synchronized createHandler()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic$EventHandler;->setRenderPriority()V

    new-instance v0, Landroid/webkit/WebSettingsClassic$EventHandler$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebSettingsClassic$EventHandler$1;-><init>(Landroid/webkit/WebSettingsClassic$EventHandler;)V

    iput-object v0, p0, Landroid/webkit/WebSettingsClassic$EventHandler;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sendMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic$EventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebSettingsClassic$EventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setRenderPriority()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic$EventHandler;->this$0:Landroid/webkit/WebSettingsClassic;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic$EventHandler;->this$0:Landroid/webkit/WebSettingsClassic;

    #getter for: Landroid/webkit/WebSettingsClassic;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;
    invoke-static {v0}, Landroid/webkit/WebSettingsClassic;->access$600(Landroid/webkit/WebSettingsClassic;)Landroid/webkit/WebSettings$RenderPriority;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic$EventHandler;->this$0:Landroid/webkit/WebSettingsClassic;

    #getter for: Landroid/webkit/WebSettingsClassic;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;
    invoke-static {v0}, Landroid/webkit/WebSettingsClassic;->access$600(Landroid/webkit/WebSettingsClassic;)Landroid/webkit/WebSettings$RenderPriority;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    if-ne v0, v2, :cond_2

    const/4 v0, -0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic$EventHandler;->this$0:Landroid/webkit/WebSettingsClassic;

    #getter for: Landroid/webkit/WebSettingsClassic;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;
    invoke-static {v0}, Landroid/webkit/WebSettingsClassic;->access$600(Landroid/webkit/WebSettingsClassic;)Landroid/webkit/WebSettings$RenderPriority;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    if-ne v0, v2, :cond_0

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
