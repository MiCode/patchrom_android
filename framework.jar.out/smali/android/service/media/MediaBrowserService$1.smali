.class Landroid/service/media/MediaBrowserService$1;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/MediaBrowserService;

.field final synthetic val$token:Landroid/media/session/MediaSession$Token;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService;Landroid/media/session/MediaSession$Token;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$1;->this$0:Landroid/service/media/MediaBrowserService;

    iput-object p2, p0, Landroid/service/media/MediaBrowserService$1;->val$token:Landroid/media/session/MediaSession$Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$1;->this$0:Landroid/service/media/MediaBrowserService;

    # getter for: Landroid/service/media/MediaBrowserService;->mConnections:Landroid/util/ArrayMap;
    invoke-static {v4}, Landroid/service/media/MediaBrowserService;->access$100(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .local v3, "key":Landroid/os/IBinder;
    iget-object v4, p0, Landroid/service/media/MediaBrowserService$1;->this$0:Landroid/service/media/MediaBrowserService;

    # getter for: Landroid/service/media/MediaBrowserService;->mConnections:Landroid/util/ArrayMap;
    invoke-static {v4}, Landroid/service/media/MediaBrowserService;->access$100(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .local v0, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    :try_start_0
    iget-object v4, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iget-object v5, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-virtual {v5}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/service/media/MediaBrowserService$1;->val$token:Landroid/media/session/MediaSession$Token;

    iget-object v7, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-virtual {v7}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "MediaBrowserService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is no longer valid."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$1;->this$0:Landroid/service/media/MediaBrowserService;

    # getter for: Landroid/service/media/MediaBrowserService;->mConnections:Landroid/util/ArrayMap;
    invoke-static {v4}, Landroid/service/media/MediaBrowserService;->access$100(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "key":Landroid/os/IBinder;
    :cond_0
    return-void
.end method
