.class Landroid/accounts/AccountManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/accounts/IAccountAuthenticatorCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManagerService;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/accounts/AccountManagerService$2;->this$0:Landroid/accounts/AccountManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v0, p0, Landroid/accounts/AccountManagerService$2;->this$0:Landroid/accounts/AccountManagerService;

    #calls: Landroid/accounts/AccountManagerService;->onUserRemoved(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Landroid/accounts/AccountManagerService;->access$100(Landroid/accounts/AccountManagerService;Landroid/content/Intent;)V

    return-void
.end method
