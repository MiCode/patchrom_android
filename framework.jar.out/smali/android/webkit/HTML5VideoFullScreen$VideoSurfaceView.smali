.class Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "HTML5VideoFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoSurfaceView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen;


# direct methods
.method public constructor <init>(Landroid/webkit/HTML5VideoFullScreen;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 28
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    .line 29
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 34
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$000(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v2

    invoke-static {v2, p1}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 35
    .local v1, width:I
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$100(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v2

    invoke-static {v2, p2}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 36
    .local v0, height:I
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$000(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$100(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v2

    if-lez v2, :cond_0

    .line 37
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$000(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v3}, Landroid/webkit/HTML5VideoFullScreen;->access$100(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v3

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 38
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$100(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v1

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v3}, Landroid/webkit/HTML5VideoFullScreen;->access$000(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v3

    div-int v0, v2, v3

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setMeasuredDimension(II)V

    .line 44
    return-void

    .line 39
    :cond_1
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$000(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v3}, Landroid/webkit/HTML5VideoFullScreen;->access$100(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v3

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 40
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$000(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v3}, Landroid/webkit/HTML5VideoFullScreen;->access$100(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v3

    div-int v1, v2, v3

    goto :goto_0
.end method
