.class public abstract Landroid/media/tv/TvInputManager$SessionCallback;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SessionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelRetuned(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .prologue
    return-void
.end method

.method public onContentAllowed(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .prologue
    return-void
.end method

.method public onContentBlocked(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvContentRating;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "rating"    # Landroid/media/tv/TvContentRating;

    .prologue
    return-void
.end method

.method public onLayoutSurface(Landroid/media/tv/TvInputManager$Session;IIII)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    return-void
.end method

.method public onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .prologue
    return-void
.end method

.method public onSessionEvent(Landroid/media/tv/TvInputManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "eventArgs"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onSessionReleased(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .prologue
    return-void
.end method

.method public onTimeShiftCurrentPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "timeMs"    # J

    .prologue
    return-void
.end method

.method public onTimeShiftStartPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "timeMs"    # J

    .prologue
    return-void
.end method

.method public onTimeShiftStatusChanged(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "status"    # I

    .prologue
    return-void
.end method

.method public onTrackSelected(Landroid/media/tv/TvInputManager$Session;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onTracksChanged(Landroid/media/tv/TvInputManager$Session;Ljava/util/List;)V
    .locals 0
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
    return-void
.end method

.method public onVideoAvailable(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .prologue
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/tv/TvInputManager$Session;II)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    return-void
.end method

.method public onVideoUnavailable(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "reason"    # I

    .prologue
    return-void
.end method
