.class Lcom/android/server/pm/UserManagerService$5;
.super Lcom/android/internal/content/PackageMonitor;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .parameter "pkg"
    .parameter "uid"

    .prologue
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$5;->getChangingUserId()I

    move-result v1

    .local v1, userId:I
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$5;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .local v0, uninstalled:Z
    :goto_0
    if-eqz v0, :cond_0

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    #calls: Lcom/android/server/pm/UserManagerService;->isPackageInstalled(Ljava/lang/String;I)Z
    invoke-static {v2, p1, v1}, Lcom/android/server/pm/UserManagerService;->access$500(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    #calls: Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackage(Ljava/lang/String;I)V
    invoke-static {v2, p1, v1}, Lcom/android/server/pm/UserManagerService;->access$600(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;I)V

    :cond_0
    return-void

    .end local v0           #uninstalled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
