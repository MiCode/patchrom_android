.class Landroid/media/tv/TvView$MySessionCallback;
.super Landroid/media/tv/TvInputManager$SessionCallback;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySessionCallback"
.end annotation


# instance fields
.field mChannelUri:Landroid/net/Uri;

.field final mInputId:Ljava/lang/String;

.field mTuneParams:Landroid/os/Bundle;

.field final synthetic this$0:Landroid/media/tv/TvView;


# direct methods
.method constructor <init>(Landroid/media/tv/TvView;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "channelUri"    # Landroid/net/Uri;
    .param p4, "tuneParams"    # Landroid/os/Bundle;

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$SessionCallback;-><init>()V

    iput-object p2, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    iput-object p4, p0, Landroid/media/tv/TvView$MySessionCallback;->mTuneParams:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onChannelRetuned(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_1

    const-string v0, "TvView"

    const-string v1, "onChannelRetuned - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/media/tv/TvView$TvInputCallback;->onChannelRetuned(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onContentAllowed(Landroid/media/tv/TvInputManager$Session;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_1

    const-string v0, "TvView"

    const-string v1, "onContentAllowed - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvView$TvInputCallback;->onContentAllowed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onContentBlocked(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvContentRating;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "rating"    # Landroid/media/tv/TvContentRating;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_1

    const-string v0, "TvView"

    const-string v1, "onContentBlocked - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/media/tv/TvView$TvInputCallback;->onContentBlocked(Ljava/lang/String;Landroid/media/tv/TvContentRating;)V

    goto :goto_0
.end method

.method public onLayoutSurface(Landroid/media/tv/TvInputManager$Session;IIII)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "TvView"

    const-string v1, "onLayoutSurface - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSurfaceViewLeft:I
    invoke-static {v0, p2}, Landroid/media/tv/TvView;->access$2002(Landroid/media/tv/TvView;I)I

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSurfaceViewTop:I
    invoke-static {v0, p3}, Landroid/media/tv/TvView;->access$2102(Landroid/media/tv/TvView;I)I

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSurfaceViewRight:I
    invoke-static {v0, p4}, Landroid/media/tv/TvView;->access$2202(Landroid/media/tv/TvView;I)I

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSurfaceViewBottom:I
    invoke-static {v0, p5}, Landroid/media/tv/TvView;->access$2302(Landroid/media/tv/TvView;I)I

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    const/4 v1, 0x1

    # setter for: Landroid/media/tv/TvView;->mUseRequestedSurfaceLayout:Z
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->access$2402(Landroid/media/tv/TvView;Z)Z

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-virtual {v0}, Landroid/media/tv/TvView;->requestLayout()V

    goto :goto_0
.end method

.method public onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .locals 6
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .prologue
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v2}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v2

    if-eq p0, v2, :cond_1

    const-string v2, "TvView"

    const-string v3, "onSessionCreated - session already created"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session;->release()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v2, p1}, Landroid/media/tv/TvView;->access$902(Landroid/media/tv/TvView;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;

    if-eqz p1, :cond_7

    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;
    invoke-static {v2}, Landroid/media/tv/TvView;->access$1000(Landroid/media/tv/TvView;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .local v0, "command":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v2}, Landroid/media/tv/TvView;->access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v4

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v4, v2, v3}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .end local v0    # "command":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    :cond_2
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;
    invoke-static {v2}, Landroid/media/tv/TvView;->access$1000(Landroid/media/tv/TvView;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    # getter for: Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/tv/TvView;->access$1100()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-virtual {v2}, Landroid/media/tv/TvView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;
    invoke-static {}, Landroid/media/tv/TvView;->access$1200()Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v2}, Landroid/media/tv/TvView;->access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/TvInputManager$Session;->setMain()V

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;
    invoke-static {v2}, Landroid/media/tv/TvView;->access$500(Landroid/media/tv/TvView;)Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    iget-object v3, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;
    invoke-static {v3}, Landroid/media/tv/TvView;->access$500(Landroid/media/tv/TvView;)Landroid/view/Surface;

    move-result-object v3

    # invokes: Landroid/media/tv/TvView;->setSessionSurface(Landroid/view/Surface;)V
    invoke-static {v2, v3}, Landroid/media/tv/TvView;->access$600(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSurfaceChanged:Z
    invoke-static {v2}, Landroid/media/tv/TvView;->access$300(Landroid/media/tv/TvView;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    iget-object v3, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSurfaceFormat:I
    invoke-static {v3}, Landroid/media/tv/TvView;->access$000(Landroid/media/tv/TvView;)I

    move-result v3

    iget-object v4, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSurfaceWidth:I
    invoke-static {v4}, Landroid/media/tv/TvView;->access$100(Landroid/media/tv/TvView;)I

    move-result v4

    iget-object v5, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSurfaceHeight:I
    invoke-static {v5}, Landroid/media/tv/TvView;->access$200(Landroid/media/tv/TvView;)I

    move-result v5

    # invokes: Landroid/media/tv/TvView;->dispatchSurfaceChanged(III)V
    invoke-static {v2, v3, v4, v5}, Landroid/media/tv/TvView;->access$400(Landroid/media/tv/TvView;III)V

    :cond_4
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # invokes: Landroid/media/tv/TvView;->createSessionOverlayView()V
    invoke-static {v2}, Landroid/media/tv/TvView;->access$1300(Landroid/media/tv/TvView;)V

    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mStreamVolume:Ljava/lang/Float;
    invoke-static {v2}, Landroid/media/tv/TvView;->access$1400(Landroid/media/tv/TvView;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v2}, Landroid/media/tv/TvView;->access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mStreamVolume:Ljava/lang/Float;
    invoke-static {v3}, Landroid/media/tv/TvView;->access$1400(Landroid/media/tv/TvView;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/tv/TvInputManager$Session;->setStreamVolume(F)V

    :cond_5
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCaptionEnabled:Ljava/lang/Boolean;
    invoke-static {v2}, Landroid/media/tv/TvView;->access$1500(Landroid/media/tv/TvView;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v2}, Landroid/media/tv/TvView;->access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCaptionEnabled:Ljava/lang/Boolean;
    invoke-static {v3}, Landroid/media/tv/TvView;->access$1500(Landroid/media/tv/TvView;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/tv/TvInputManager$Session;->setCaptionEnabled(Z)V

    :cond_6
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v2}, Landroid/media/tv/TvView;->access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/media/tv/TvView$MySessionCallback;->mTuneParams:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # invokes: Landroid/media/tv/TvView;->ensurePositionTracking()V
    invoke-static {v2}, Landroid/media/tv/TvView;->access$1600(Landroid/media/tv/TvView;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_7
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    const/4 v3, 0x0

    # setter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v2, v3}, Landroid/media/tv/TvView;->access$802(Landroid/media/tv/TvView;Landroid/media/tv/TvView$MySessionCallback;)Landroid/media/tv/TvView$MySessionCallback;

    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v2}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v2}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/tv/TvView$TvInputCallback;->onConnectionFailed(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onSessionEvent(Landroid/media/tv/TvInputManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "eventArgs"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_1

    const-string v0, "TvView"

    const-string v1, "onSessionEvent - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/TvView$TvInputCallback;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSessionReleased(Landroid/media/tv/TvInputManager$Session;)V
    .locals 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_1

    const-string v0, "TvView"

    const-string v1, "onSessionReleased - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    const/4 v1, 0x0

    # setter for: Landroid/media/tv/TvView;->mOverlayViewCreated:Z
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->access$1802(Landroid/media/tv/TvView;Z)Z

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;
    invoke-static {v0, v2}, Landroid/media/tv/TvView;->access$1902(Landroid/media/tv/TvView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0, v2}, Landroid/media/tv/TvView;->access$802(Landroid/media/tv/TvView;Landroid/media/tv/TvView$MySessionCallback;)Landroid/media/tv/TvView$MySessionCallback;

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # setter for: Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v0, v2}, Landroid/media/tv/TvView;->access$902(Landroid/media/tv/TvView;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvView$TvInputCallback;->onDisconnected(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTimeShiftCurrentPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "timeMs"    # J

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_1

    const-string v0, "TvView"

    const-string v1, "onTimeShiftCurrentPositionChanged - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$2500(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$2500(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/TvView$TimeShiftPositionCallback;->onTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onTimeShiftStartPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "timeMs"    # J

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_1

    const-string v0, "TvView"

    const-string v1, "onTimeShiftStartPositionChanged - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$2500(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$2500(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/TvView$TimeShiftPositionCallback;->onTimeShiftStartPositionChanged(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onTimeShiftStatusChanged(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "status"    # I

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_1

    const-string v0, "TvView"

    const-string v1, "onTimeShiftStatusChanged - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/media/tv/TvView$TvInputCallback;->onTimeShiftStatusChanged(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onTrackSelected(Landroid/media/tv/TvInputManager$Session;ILjava/lang/String;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_1

    const-string v0, "TvView"

    const-string v1, "onTrackSelected - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/TvView$TvInputCallback;->onTrackSelected(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onTracksChanged(Landroid/media/tv/TvInputManager$Session;Ljava/util/List;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/tv/TvInputManager$Session;",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_1

    const-string v0, "TvView"

    const-string v1, "onTracksChanged - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/media/tv/TvView$TvInputCallback;->onTracksChanged(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onVideoAvailable(Landroid/media/tv/TvInputManager$Session;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_1

    const-string v0, "TvView"

    const-string v1, "onVideoAvailable - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvView$TvInputCallback;->onVideoAvailable(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onVideoSizeChanged(Landroid/media/tv/TvInputManager$Session;II)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_1

    const-string v0, "TvView"

    const-string v1, "onVideoSizeChanged - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/TvView$TvInputCallback;->onVideoSizeChanged(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public onVideoUnavailable(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "reason"    # I

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_1

    const-string v0, "TvView"

    const-string v1, "onVideoUnavailable - session not created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    # getter for: Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvView;->access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/media/tv/TvView$TvInputCallback;->onVideoUnavailable(Ljava/lang/String;I)V

    goto :goto_0
.end method
