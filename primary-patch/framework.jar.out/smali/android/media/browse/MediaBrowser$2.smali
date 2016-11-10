.class Landroid/media/browse/MediaBrowser$2;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$2;->this$0:Landroid/media/browse/MediaBrowser;

    iput-object p2, p0, Landroid/media/browse/MediaBrowser$2;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser$2;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$2;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$2;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/browse/MediaBrowser$ItemCallback;->onError(Ljava/lang/String;)V

    return-void
.end method
