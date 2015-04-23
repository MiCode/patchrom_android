.class Landroid/media/MediaPlayer$2;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSubtitleDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "data"    # Landroid/media/SubtitleData;

    .prologue
    invoke-virtual {p2}, Landroid/media/SubtitleData;->getTrackIndex()I

    move-result v1

    .local v1, "index":I
    iget-object v4, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;
    invoke-static {v4}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;
    invoke-static {v4}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_0

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/media/SubtitleTrack;

    .local v3, "track":Landroid/media/SubtitleTrack;
    invoke-virtual {v3, p2}, Landroid/media/SubtitleTrack;->onData(Landroid/media/SubtitleData;)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v3    # "track":Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
