.class public abstract Landroid/service/media/MediaBrowserService;
.super Landroid/app/Service;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/media/MediaBrowserService$BrowserRoot;,
        Landroid/service/media/MediaBrowserService$ServiceBinder;,
        Landroid/service/media/MediaBrowserService$Result;,
        Landroid/service/media/MediaBrowserService$ConnectionRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final KEY_MEDIA_ITEM:Ljava/lang/String; = "media_item"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.browse.MediaBrowserService"

.field private static final TAG:Ljava/lang/String; = "MediaBrowserService"


# instance fields
.field private mBinder:Landroid/service/media/MediaBrowserService$ServiceBinder;

.field private final mConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/service/media/MediaBrowserService$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field mSession:Landroid/media/session/MediaSession$Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/media/MediaBrowserService;->mConnections:Landroid/util/ArrayMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/service/media/MediaBrowserService;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->isValidPackage(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;

    .prologue
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mConnections:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;

    .prologue
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    .locals 0
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->addSubscription(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    return-void
.end method

.method static synthetic access$500(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/ResultReceiver;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->performLoadItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$700(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    .locals 0
    .param p0, "x0"    # Landroid/service/media/MediaBrowserService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->performLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    return-void
.end method

.method private addSubscription(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .prologue
    iget-object v0, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->performLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    return-void
.end method

.method private isValidPackage(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .local v2, "packages":[Ljava/lang/String;
    array-length v0, v2

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    aget-object v5, v2, v1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private performLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    .locals 4
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .prologue
    new-instance v0, Landroid/service/media/MediaBrowserService$3;

    invoke-direct {v0, p0, p1, p1, p2}, Landroid/service/media/MediaBrowserService$3;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    .local v0, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    invoke-virtual {p0, p1, v0}, Landroid/service/media/MediaBrowserService;->onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$Result;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private performLoadItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    new-instance v0, Landroid/service/media/MediaBrowserService$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/media/MediaBrowserService$4;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;Landroid/os/ResultReceiver;)V

    .local v0, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    invoke-virtual {p0, p1, v0}, Landroid/service/media/MediaBrowserService;->onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$Result;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    return-void
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/media/MediaBrowserService$2;

    invoke-direct {v1, p0, p1}, Landroid/service/media/MediaBrowserService$2;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "android.media.browse.MediaBrowserService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mBinder:Landroid/service/media/MediaBrowserService$ServiceBinder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/service/media/MediaBrowserService$ServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/media/MediaBrowserService$ServiceBinder;-><init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$1;)V

    iput-object v0, p0, Landroid/service/media/MediaBrowserService;->mBinder:Landroid/service/media/MediaBrowserService$ServiceBinder;

    return-void
.end method

.method public abstract onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
.end method

.method public abstract onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method

.method public setSessionToken(Landroid/media/session/MediaSession$Token;)V
    .locals 2
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session token may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The session token has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/media/MediaBrowserService$1;

    invoke-direct {v1, p0, p1}, Landroid/service/media/MediaBrowserService$1;-><init>(Landroid/service/media/MediaBrowserService;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
