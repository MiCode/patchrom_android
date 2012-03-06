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
    .line 99
    iput-object p1, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private updateSearchables()V
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    #calls: Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;
    invoke-static {v1}, Landroid/server/search/SearchManagerService;->access$200(Landroid/server/search/SearchManagerService;)Landroid/server/search/Searchables;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/search/Searchables;->buildSearchableList()V

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.SEARCHABLES_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    #getter for: Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/server/search/SearchManagerService;->access$100(Landroid/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .locals 0
    .parameter "pkg"

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V

    .line 109
    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V

    .line 104
    return-void
.end method
