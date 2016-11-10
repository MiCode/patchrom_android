.class final Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;
.super Landroid/os/AsyncTask;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayViewCleanUpTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$Session;


# direct methods
.method private constructor <init>(Landroid/media/tv/TvInputService$Session;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvInputService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/tv/TvInputService$Session;
    .param p2, "x1"    # Landroid/media/tv/TvInputService$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;-><init>(Landroid/media/tv/TvInputService$Session;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p1, [Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;->doInBackground([Landroid/view/View;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/view/View;)Ljava/lang/Void;
    .locals 6
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    aget-object v1, p1, v2

    .local v1, "overlayViewParent":Landroid/view/View;
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TvInputService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time out on releasing overlay view. Killing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method
