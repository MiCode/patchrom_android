.class Landroid/media/RemoteControlClient$1;
.super Landroid/media/session/MediaSession$Callback;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method constructor <init>(Landroid/media/RemoteControlClient;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mCurrentClientGenId:I
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$600(Landroid/media/RemoteControlClient;)I

    move-result v1

    # invokes: Landroid/media/RemoteControlClient;->onSeekTo(IJ)V
    invoke-static {v0, v1, p1, p2}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;IJ)V

    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 3
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mTransportControlFlags:I
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$800(Landroid/media/RemoteControlClient;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mCurrentClientGenId:I
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$600(Landroid/media/RemoteControlClient;)I

    move-result v1

    const v2, 0x10000001

    # invokes: Landroid/media/RemoteControlClient;->onUpdateMetadata(IILjava/lang/Object;)V
    invoke-static {v0, v1, v2, p1}, Landroid/media/RemoteControlClient;->access$900(Landroid/media/RemoteControlClient;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method
