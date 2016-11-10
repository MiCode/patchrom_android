.class Landroid/media/browse/MediaBrowser$3;
.super Landroid/os/ResultReceiver;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->getItem(Ljava/lang/String;Landroid/media/browse/MediaBrowser$ItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/media/browse/MediaBrowser;Landroid/os/Handler;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$3;->this$0:Landroid/media/browse/MediaBrowser;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser$3;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iput-object p4, p0, Landroid/media/browse/MediaBrowser$3;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "media_item"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$3;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$3;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/browse/MediaBrowser$ItemCallback;->onError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "media_item"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .local v0, "item":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/media/browse/MediaBrowser$MediaItem;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$3;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$3;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/browse/MediaBrowser$ItemCallback;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$3;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    check-cast v0, Landroid/media/browse/MediaBrowser$MediaItem;

    .end local v0    # "item":Landroid/os/Parcelable;
    invoke-virtual {v1, v0}, Landroid/media/browse/MediaBrowser$ItemCallback;->onItemLoaded(Landroid/media/browse/MediaBrowser$MediaItem;)V

    goto :goto_0
.end method
