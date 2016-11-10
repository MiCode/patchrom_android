.class public Lcom/android/server/NetworkScoreService;
.super Landroid/net/INetworkScoreService$Stub;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkScoreService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mReceiverLock"
    .end annotation
.end field

.field private mReceiverLock:Ljava/lang/Object;

.field private final mScoreCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/INetworkScoreCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Landroid/net/INetworkScoreService$Stub;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mReceiverLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NetworkScoreService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkScoreService;

    .prologue
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkScoreService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkScoreService;->setScorerInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private clearInternal()V
    .locals 6

    .prologue
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getScoreCaches()Ljava/util/Set;

    move-result-object v0

    .local v0, "cachesToClear":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/INetworkScoreCache;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkScoreCache;

    .local v3, "scoreCache":Landroid/net/INetworkScoreCache;
    :try_start_0
    invoke-interface {v3}, Landroid/net/INetworkScoreCache;->clearScores()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "NetworkScoreService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "NetworkScoreService"

    const-string v5, "Unable to clear scores"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "scoreCache":Landroid/net/INetworkScoreCache;
    :cond_1
    return-void
.end method

.method private getScoreCaches()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/net/INetworkScoreCache;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerPackageReceiverIfNeeded()V
    .locals 8

    .prologue
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v6

    .local v6, "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    iget-object v7, p0, Lcom/android/server/NetworkScoreService;->mReceiverLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    if-eqz v0, :cond_1

    const-string v0, "NetworkScoreService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering receiver for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    iget-object v2, v2, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;->mRegisteredPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    :cond_1
    if-eqz v6, :cond_2

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    iget-object v1, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;-><init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v0, "NetworkScoreService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "NetworkScoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered receiver for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_2
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setScorerInternal(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V

    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Landroid/net/NetworkScorerAppManager;->setActiveScorer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .local v1, "result":Z
    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->registerPackageReceiverIfNeeded()V

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.net.scoring.SCORER_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "newScorer"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .end local v1    # "result":Z
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public clearScores()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/NetworkScorerAppManager;->isCallerActiveScorer(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BROADCAST_NETWORK_PRIVILEGED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V

    const/4 v0, 0x1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is neither the active scorer nor the scorer manager."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableScoring()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/NetworkScorerAppManager;->isCallerActiveScorer(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BROADCAST_NETWORK_PRIVILEGED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->setScorerInternal(Ljava/lang/String;)Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is neither the active scorer nor the scorer manager."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    const-string v6, "NetworkScoreService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v0

    .local v0, "currentScorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v0, :cond_1

    const-string v4, "Scoring is disabled."

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current scorer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getScoreCaches()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkScoreCache;

    .local v3, "scoreCache":Landroid/net/INetworkScoreCache;
    :try_start_0
    invoke-interface {v3}, Landroid/net/INetworkScoreCache;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "Unable to dump score cache"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "NetworkScoreService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "NetworkScoreService"

    const-string v5, "Unable to dump score cache"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;

    .prologue
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BROADCAST_NETWORK_PRIVILEGED"

    const-string v2, "NetworkScoreService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Score cache already registered for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SCORE_NETWORKS"

    const-string v2, "NetworkScoreService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/NetworkScoreService;->setScorerInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method systemReady()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "network_scoring_provisioned"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "defaultPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/net/NetworkScorerAppManager;->setActiveScorer(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    const-string v2, "network_scoring_provisioned"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v1    # "defaultPackage":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->registerPackageReceiverIfNeeded()V

    return-void
.end method

.method public updateScores([Landroid/net/ScoredNetwork;)Z
    .locals 13
    .param p1, "networks"    # [Landroid/net/ScoredNetwork;

    .prologue
    const/4 v12, 0x2

    iget-object v9, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v10

    invoke-static {v9, v10}, Landroid/net/NetworkScorerAppManager;->isCallerActiveScorer(Landroid/content/Context;I)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Caller with UID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not the active scorer."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .local v7, "networksByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    move-object v0, p1

    .local v0, "arr$":[Landroid/net/ScoredNetwork;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .local v5, "network":Landroid/net/ScoredNetwork;
    iget-object v9, v5, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget v9, v9, Landroid/net/NetworkKey;->type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .local v6, "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    if-nez v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    iget-object v9, v5, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget v9, v9, Landroid/net/NetworkKey;->type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v5    # "network":Landroid/net/ScoredNetwork;
    .end local v6    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    iget-object v9, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/INetworkScoreCache;

    .local v8, "scoreCache":Landroid/net/INetworkScoreCache;
    if-eqz v8, :cond_4

    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v8, v9}, Landroid/net/INetworkScoreCache;->updateScores(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v9, "NetworkScoreService"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "NetworkScoreService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to update scores of type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v9, "NetworkScoreService"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "NetworkScoreService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No scorer registered for type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", discarding"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    .end local v8    # "scoreCache":Landroid/net/INetworkScoreCache;
    :cond_5
    const/4 v9, 0x1

    return v9
.end method
