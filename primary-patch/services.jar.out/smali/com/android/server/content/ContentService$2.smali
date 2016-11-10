.class Lcom/android/server/content/ContentService$2;
.super Ljava/lang/Object;
.source "ContentService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/ContentService;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/ContentService;


# direct methods
.method constructor <init>(Lcom/android/server/content/ContentService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/content/ContentService$2;->this$0:Lcom/android/server/content/ContentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackages(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/content/ContentService$2;->this$0:Lcom/android/server/content/ContentService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/content/ContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
