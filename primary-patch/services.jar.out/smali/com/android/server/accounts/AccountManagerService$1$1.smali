.class Lcom/android/server/accounts/AccountManagerService$1$1;
.super Ljava/lang/Object;
.source "AccountManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accounts/AccountManagerService$1;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService$1;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->this$1:Lcom/android/server/accounts/AccountManagerService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->this$1:Lcom/android/server/accounts/AccountManagerService$1;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$1;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # invokes: Lcom/android/server/accounts/AccountManagerService;->purgeOldGrantsAll()V
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$000(Lcom/android/server/accounts/AccountManagerService;)V

    return-void
.end method
