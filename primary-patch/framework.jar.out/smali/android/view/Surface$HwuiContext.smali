.class final Landroid/view/Surface$HwuiContext;
.super Ljava/lang/Object;
.source "Surface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HwuiContext"
.end annotation


# instance fields
.field private mCanvas:Landroid/view/DisplayListCanvas;

.field private mHwuiRenderer:J

.field private final mRenderNode:Landroid/view/RenderNode;

.field final synthetic this$0:Landroid/view/Surface;


# direct methods
.method constructor <init>(Landroid/view/Surface;)V
    .locals 4

    .prologue
    iput-object p1, p0, Landroid/view/Surface$HwuiContext;->this$0:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HwuiCanvas"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/view/RenderNode;

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/view/RenderNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/view/RenderNode;

    iget-wide v0, v0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/view/Surface;->mNativeObject:J

    # invokes: Landroid/view/Surface;->nHwuiCreate(JJ)J
    invoke-static {v0, v1, v2, v3}, Landroid/view/Surface;->access$200(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/Surface$HwuiContext;->mHwuiRenderer:J

    return-void
.end method


# virtual methods
.method destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/view/Surface$HwuiContext;->mHwuiRenderer:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/Surface$HwuiContext;->mHwuiRenderer:J

    # invokes: Landroid/view/Surface;->nHwuiDestroy(J)V
    invoke-static {v0, v1}, Landroid/view/Surface;->access$500(J)V

    iput-wide v2, p0, Landroid/view/Surface$HwuiContext;->mHwuiRenderer:J

    :cond_0
    return-void
.end method

.method lockCanvas(II)Landroid/graphics/Canvas;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/view/DisplayListCanvas;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface was already locked!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1, p2}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/view/DisplayListCanvas;

    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/view/DisplayListCanvas;

    return-object v0
.end method

.method unlockAndPost(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/view/DisplayListCanvas;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "canvas object must be the same instance that was previously returned by lockCanvas"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/view/RenderNode;

    iget-object v1, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/view/DisplayListCanvas;

    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/view/DisplayListCanvas;

    iget-wide v0, p0, Landroid/view/Surface$HwuiContext;->mHwuiRenderer:J

    # invokes: Landroid/view/Surface;->nHwuiDraw(J)V
    invoke-static {v0, v1}, Landroid/view/Surface;->access$300(J)V

    return-void
.end method

.method updateSurface()V
    .locals 4

    .prologue
    iget-wide v0, p0, Landroid/view/Surface$HwuiContext;->mHwuiRenderer:J

    iget-object v2, p0, Landroid/view/Surface$HwuiContext;->this$0:Landroid/view/Surface;

    iget-wide v2, v2, Landroid/view/Surface;->mNativeObject:J

    # invokes: Landroid/view/Surface;->nHwuiSetSurface(JJ)V
    invoke-static {v0, v1, v2, v3}, Landroid/view/Surface;->access$400(JJ)V

    return-void
.end method
