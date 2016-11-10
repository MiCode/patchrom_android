.class Landroid/media/tv/TvInputService$Session$13;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->layoutSurface(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;IIII)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$13;->this$0:Landroid/media/tv/TvInputService$Session;

    iput p2, p0, Landroid/media/tv/TvInputService$Session$13;->val$left:I

    iput p3, p0, Landroid/media/tv/TvInputService$Session$13;->val$top:I

    iput p4, p0, Landroid/media/tv/TvInputService$Session$13;->val$right:I

    iput p5, p0, Landroid/media/tv/TvInputService$Session$13;->val$bottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$13;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->access$700(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$13;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->access$700(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputService$Session$13;->val$left:I

    iget v3, p0, Landroid/media/tv/TvInputService$Session$13;->val$top:I

    iget v4, p0, Landroid/media/tv/TvInputService$Session$13;->val$right:I

    iget v5, p0, Landroid/media/tv/TvInputService$Session$13;->val$bottom:I

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/media/tv/ITvInputSessionCallback;->onLayoutSurface(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in layoutSurface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
