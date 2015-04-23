.class Lcom/android/server/pm/PackageManagerService$12;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->removePackageDataLI(Lcom/android/server/pm/PackageSetting;[I[ZLcom/android/server/pm/PackageManagerService$PackageRemovedInfo;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$deletedPs:Lcom/android/server/pm/PackageSetting;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deletedPs:Lcom/android/server/pm/PackageSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deletedPs:Lcom/android/server/pm/PackageSetting;

    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deletedPs:Lcom/android/server/pm/PackageSetting;

    iget v2, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    const-string v3, "permission grant or revoke changed gids"

    # invokes: Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$5100(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
