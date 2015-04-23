.class Landroid/media/ClosedCaptionTrack;
.super Landroid/media/SubtitleTrack;
.source "ClosedCaptionRenderer.java"


# instance fields
.field private final mCCParser:Landroid/media/CCParser;

.field private final mRenderingWidget:Landroid/media/ClosedCaptionWidget;


# direct methods
.method constructor <init>(Landroid/media/ClosedCaptionWidget;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "renderingWidget"    # Landroid/media/ClosedCaptionWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    iput-object p1, p0, Landroid/media/ClosedCaptionTrack;->mRenderingWidget:Landroid/media/ClosedCaptionWidget;

    new-instance v0, Landroid/media/CCParser;

    invoke-direct {v0, p1}, Landroid/media/CCParser;-><init>(Landroid/media/CCParser$DisplayListener;)V

    iput-object v0, p0, Landroid/media/ClosedCaptionTrack;->mCCParser:Landroid/media/CCParser;

    return-void
.end method


# virtual methods
.method public getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/ClosedCaptionTrack;->mRenderingWidget:Landroid/media/ClosedCaptionWidget;

    return-object v0
.end method

.method public onData([BZJ)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .prologue
    iget-object v0, p0, Landroid/media/ClosedCaptionTrack;->mCCParser:Landroid/media/CCParser;

    invoke-virtual {v0, p1}, Landroid/media/CCParser;->parse([B)V

    return-void
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    return-void
.end method
