.class final Landroid/media/tv/TvInputManager$SessionCallbackRecord;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionCallbackRecord"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mSession:Landroid/media/tv/TvInputManager$Session;

.field private final mSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "sessionCallback"    # Landroid/media/tv/TvInputManager$SessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    iput-object p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-object v0
.end method


# virtual methods
.method postChannelRetuned(Landroid/net/Uri;)V
    .locals 2
    .param p1, "channelUri"    # Landroid/net/Uri;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$3;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$3;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method postContentAllowed()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$9;

    invoke-direct {v1, p0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$9;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method postContentBlocked(Landroid/media/tv/TvContentRating;)V
    .locals 2
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/TvContentRating;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method postLayoutSurface(IIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    iget-object v6, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;IIII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method postSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/TvInputManager$Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method postSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventArgs"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$12;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$12;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method postSessionReleased()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$2;

    invoke-direct {v1, p0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$2;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method postTimeShiftCurrentPositionChanged(J)V
    .locals 3
    .param p1, "timeMs"    # J

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$15;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$15;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method postTimeShiftStartPositionChanged(J)V
    .locals 3
    .param p1, "timeMs"    # J

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method postTimeShiftStatusChanged(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$13;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$13;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method postTrackSelected(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method postTracksChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method postVideoAvailable()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$7;

    invoke-direct {v1, p0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$7;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method postVideoSizeChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$6;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$6;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method postVideoUnavailable(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$8;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$8;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
