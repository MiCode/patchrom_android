.class Landroid/webkit/ZoomControlExternal$2;
.super Ljava/lang/Object;
.source "ZoomControlExternal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/ZoomControlExternal;->createZoomControls()Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/ZoomControlExternal;


# direct methods
.method constructor <init>(Landroid/webkit/ZoomControlExternal;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/ZoomControlExternal$2;->this$0:Landroid/webkit/ZoomControlExternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    iget-object v0, p0, Landroid/webkit/ZoomControlExternal$2;->this$0:Landroid/webkit/ZoomControlExternal;

    #getter for: Landroid/webkit/ZoomControlExternal;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/webkit/ZoomControlExternal;->access$200(Landroid/webkit/ZoomControlExternal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/ZoomControlExternal$2;->this$0:Landroid/webkit/ZoomControlExternal;

    #getter for: Landroid/webkit/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/webkit/ZoomControlExternal;->access$100(Landroid/webkit/ZoomControlExternal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/webkit/ZoomControlExternal$2;->this$0:Landroid/webkit/ZoomControlExternal;

    #getter for: Landroid/webkit/ZoomControlExternal;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/webkit/ZoomControlExternal;->access$200(Landroid/webkit/ZoomControlExternal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/ZoomControlExternal$2;->this$0:Landroid/webkit/ZoomControlExternal;

    #getter for: Landroid/webkit/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/webkit/ZoomControlExternal;->access$100(Landroid/webkit/ZoomControlExternal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Landroid/webkit/ZoomControlExternal;->access$300()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Landroid/webkit/ZoomControlExternal$2;->this$0:Landroid/webkit/ZoomControlExternal;

    #getter for: Landroid/webkit/ZoomControlExternal;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/ZoomControlExternal;->access$400(Landroid/webkit/ZoomControlExternal;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->zoomIn()Z

    return-void
.end method
