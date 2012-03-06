.class public Landroid/server/search/SearchManagerService;
.super Landroid/app/ISearchManager$Stub;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/search/SearchManagerService$1;,
        Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;,
        Landroid/server/search/SearchManagerService$MyPackageMonitor;,
        Landroid/server/search/SearchManagerService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGlobalSearchObserver:Landroid/database/ContentObserver;

.field private mSearchables:Landroid/server/search/Searchables;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/ISearchManager$Stub;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/server/search/SearchManagerService$BootCompletedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/server/search/SearchManagerService$BootCompletedReceiver;-><init>(Landroid/server/search/SearchManagerService;Landroid/server/search/SearchManagerService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    new-instance v0, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;

    iget-object v1, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;-><init>(Landroid/server/search/SearchManagerService;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Landroid/server/search/SearchManagerService;->mGlobalSearchObserver:Landroid/database/ContentObserver;

    .line 67
    return-void
.end method

.method static synthetic access$100(Landroid/server/search/SearchManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/server/search/SearchManagerService;)Landroid/server/search/Searchables;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getSearchables()Landroid/server/search/Searchables;
    .locals 3

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/server/search/Searchables;

    if-nez v0, :cond_0

    .line 71
    const-string v0, "SearchManagerService"

    const-string v1, "Building list of searchable activities"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Landroid/server/search/SearchManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Landroid/server/search/SearchManagerService$MyPackageMonitor;-><init>(Landroid/server/search/SearchManagerService;)V

    iget-object v1, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/server/search/SearchManagerService$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 73
    new-instance v0, Landroid/server/search/Searchables;

    iget-object v1, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/server/search/Searchables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/server/search/Searchables;

    .line 74
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/server/search/Searchables;

    invoke-virtual {v0}, Landroid/server/search/Searchables;->buildSearchableList()V

    .line 76
    :cond_0
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/server/search/Searchables;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getGlobalSearchActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/Searchables;->getGlobalSearchActivities()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/Searchables;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 2
    .parameter "launchActivity"

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    const-string v0, "SearchManagerService"

    const-string v1, "getSearchableInfo(), activity == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/search/Searchables;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getSearchablesInGlobalSearch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/Searchables;->getSearchablesInGlobalSearchList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWebSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/Searchables;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
