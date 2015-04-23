.class Landroid/media/MediaPlayer$1$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/SubtitleController$Anchor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaPlayer$1;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer$1;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/MediaPlayer$1$1;->this$1:Landroid/media/MediaPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubtitleLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .locals 0
    .param p1, "subtitleWidget"    # Landroid/media/SubtitleTrack$RenderingWidget;

    .prologue
    return-void
.end method
