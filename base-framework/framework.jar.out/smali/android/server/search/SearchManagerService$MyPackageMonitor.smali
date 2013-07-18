.class Landroid/server/search/SearchManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/search/SearchManagerService;


# direct methods
.method constructor <init>(Landroid/server/search/SearchManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private updateSearchables()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Landroid/server/search/SearchManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v0

    .local v0, changingUserId:I
    iget-object v3, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    #getter for: Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/server/search/SearchManagerService;->access$500(Landroid/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    #getter for: Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/server/search/SearchManagerService;->access$500(Landroid/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    #getter for: Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/server/search/SearchManagerService;->access$500(Landroid/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    iget-object v5, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    #getter for: Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v5}, Landroid/server/search/SearchManagerService;->access$500(Landroid/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    #calls: Landroid/server/search/SearchManagerService;->getSearchables(I)Landroid/server/search/Searchables;
    invoke-static {v3, v5}, Landroid/server/search/SearchManagerService;->access$300(Landroid/server/search/SearchManagerService;I)Landroid/server/search/Searchables;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/search/Searchables;->buildSearchableList()V

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.search.action.SEARCHABLES_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x2800

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    #getter for: Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/server/search/SearchManagerService;->access$200(Landroid/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .locals 0
    .parameter "pkg"

    .prologue
    invoke-direct {p0}, Landroid/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V

    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V

    return-void
.end method
