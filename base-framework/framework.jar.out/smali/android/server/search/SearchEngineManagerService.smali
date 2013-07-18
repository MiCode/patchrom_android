.class public Landroid/server/search/SearchEngineManagerService;
.super Landroid/app/ISearchEngineManager$Stub;
.source "SearchEngineManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/search/SearchEngineManagerService$1;,
        Landroid/server/search/SearchEngineManagerService$LocaleChangeReceiver;,
        Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchEngineManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultSearchEngine:Landroid/app/SearchEngineInfo;

.field private mSearchEngineInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchEngineInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    invoke-direct {p0}, Landroid/app/ISearchEngineManager$Stub;-><init>()V

    iput-object p1, p0, Landroid/server/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/server/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/server/search/SearchEngineManagerService$BootCompletedReceiver;-><init>(Landroid/server/search/SearchEngineManagerService;Landroid/server/search/SearchEngineManagerService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Landroid/server/search/SearchEngineManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/server/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/server/search/SearchEngineManagerService;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/server/search/SearchEngineManagerService;->initSearchEngineInfos()V

    return-void
.end method

.method private broadcastSearchEngineChangedInternal(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.search.SEARCH_ENGINE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private getSearchEngineByFavicon(Ljava/lang/String;)Landroid/app/SearchEngineInfo;
    .locals 4
    .parameter "favicon"

    .prologue
    invoke-virtual {p0}, Landroid/server/search/SearchEngineManagerService;->getAvailableSearchEngines()Ljava/util/List;

    move-result-object v1

    .local v1, engines:Ljava/util/List;,"Ljava/util/List<Landroid/app/SearchEngineInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchEngineInfo;

    .local v0, engine:Landroid/app/SearchEngineInfo;
    invoke-virtual {v0}, Landroid/app/SearchEngineInfo;->faviconUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0           #engine:Landroid/app/SearchEngineInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSearchEngineByName(Ljava/lang/String;)Landroid/app/SearchEngineInfo;
    .locals 4
    .parameter "name"

    .prologue
    invoke-virtual {p0}, Landroid/server/search/SearchEngineManagerService;->getAvailableSearchEngines()Ljava/util/List;

    move-result-object v1

    .local v1, engines:Ljava/util/List;,"Ljava/util/List<Landroid/app/SearchEngineInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchEngineInfo;

    .local v0, engine:Landroid/app/SearchEngineInfo;
    invoke-virtual {v0}, Landroid/app/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0           #engine:Landroid/app/SearchEngineInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initSearchEngineInfos()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/server/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    iget-object v6, p0, Landroid/server/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, res:Landroid/content/res/Resources;
    const v6, 0x204000a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .local v4, searchEngines:[Ljava/lang/String;
    if-eqz v4, :cond_0

    const/4 v6, 0x1

    array-length v7, v4

    if-lt v6, v7, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "No data found for "

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    aget-object v5, v4, v8

    .local v5, sp:Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_2

    aget-object v0, v4, v1

    .local v0, configInfo:Ljava/lang/String;
    invoke-static {v0, v5}, Landroid/app/SearchEngineInfo;->parseFrom(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SearchEngineInfo;

    move-result-object v2

    .local v2, info:Landroid/app/SearchEngineInfo;
    iget-object v6, p0, Landroid/server/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #configInfo:Ljava/lang/String;
    .end local v2           #info:Landroid/app/SearchEngineInfo;
    :cond_2
    iget-object v6, p0, Landroid/server/search/SearchEngineManagerService;->mDefaultSearchEngine:Landroid/app/SearchEngineInfo;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/server/search/SearchEngineManagerService;->mDefaultSearchEngine:Landroid/app/SearchEngineInfo;

    invoke-virtual {v6}, Landroid/app/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/server/search/SearchEngineManagerService;->mDefaultSearchEngine:Landroid/app/SearchEngineInfo;

    invoke-virtual {v7}, Landroid/app/SearchEngineInfo;->faviconUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/server/search/SearchEngineManagerService;->getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SearchEngineInfo;

    move-result-object v6

    iput-object v6, p0, Landroid/server/search/SearchEngineManagerService;->mDefaultSearchEngine:Landroid/app/SearchEngineInfo;

    :cond_3
    iget-object v6, p0, Landroid/server/search/SearchEngineManagerService;->mDefaultSearchEngine:Landroid/app/SearchEngineInfo;

    if-nez v6, :cond_4

    iget-object v6, p0, Landroid/server/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SearchEngineInfo;

    iput-object v6, p0, Landroid/server/search/SearchEngineManagerService;->mDefaultSearchEngine:Landroid/app/SearchEngineInfo;

    :cond_4
    iget-object v6, p0, Landroid/server/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Landroid/server/search/SearchEngineManagerService;->broadcastSearchEngineChangedInternal(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAvailableSearchEngines()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchEngineInfo;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "SearchEngineManagerService"

    const-string v1, "get avilable search engines"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/server/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/server/search/SearchEngineManagerService;->initSearchEngineInfos()V

    :cond_0
    iget-object v0, p0, Landroid/server/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SearchEngineInfo;
    .locals 1
    .parameter "name"
    .parameter "favicon"

    .prologue
    invoke-direct {p0, p1}, Landroid/server/search/SearchEngineManagerService;->getSearchEngineByName(Ljava/lang/String;)Landroid/app/SearchEngineInfo;

    move-result-object v0

    .local v0, engine:Landroid/app/SearchEngineInfo;
    if-eqz v0, :cond_0

    .end local v0           #engine:Landroid/app/SearchEngineInfo;
    :goto_0
    return-object v0

    .restart local v0       #engine:Landroid/app/SearchEngineInfo;
    :cond_0
    invoke-direct {p0, p2}, Landroid/server/search/SearchEngineManagerService;->getSearchEngineByFavicon(Ljava/lang/String;)Landroid/app/SearchEngineInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultSearchEngine()Landroid/app/SearchEngineInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/server/search/SearchEngineManagerService;->mDefaultSearchEngine:Landroid/app/SearchEngineInfo;

    return-object v0
.end method

.method public getSearchEngineBy(ILjava/lang/String;)Landroid/app/SearchEngineInfo;
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p2}, Landroid/server/search/SearchEngineManagerService;->getSearchEngineByName(Ljava/lang/String;)Landroid/app/SearchEngineInfo;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Landroid/server/search/SearchEngineManagerService;->getSearchEngineByFavicon(Ljava/lang/String;)Landroid/app/SearchEngineInfo;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDefaultSearchEngine(Landroid/app/SearchEngineInfo;)Z
    .locals 5
    .parameter "engine"

    .prologue
    invoke-virtual {p0}, Landroid/server/search/SearchEngineManagerService;->getAvailableSearchEngines()Ljava/util/List;

    move-result-object v1

    .local v1, engines:Ljava/util/List;,"Ljava/util/List<Landroid/app/SearchEngineInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchEngineInfo;

    .local v0, eng:Landroid/app/SearchEngineInfo;
    invoke-virtual {v0}, Landroid/app/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object p1, p0, Landroid/server/search/SearchEngineManagerService;->mDefaultSearchEngine:Landroid/app/SearchEngineInfo;

    const/4 v3, 0x1

    .end local v0           #eng:Landroid/app/SearchEngineInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
