.class Lcom/android/server/LockSettingsService$2;
.super Landroid/content/BroadcastReceiver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/LockSettingsService$2;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const-string v5, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .local v4, "userHandle":I
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .local v0, "ks":Landroid/security/KeyStore;
    iget-object v5, p0, Lcom/android/server/LockSettingsService$2;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/LockSettingsService;->access$100(Lcom/android/server/LockSettingsService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .local v2, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    .local v1, "parentHandle":I
    :goto_0
    invoke-virtual {v0, v4, v1}, Landroid/security/KeyStore;->onUserAdded(II)V

    .end local v0    # "ks":Landroid/security/KeyStore;
    .end local v1    # "parentHandle":I
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userHandle":I
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "ks":Landroid/security/KeyStore;
    .restart local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "um":Landroid/os/UserManager;
    .restart local v4    # "userHandle":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .end local v0    # "ks":Landroid/security/KeyStore;
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userHandle":I
    :cond_2
    const-string v5, "android.intent.action.USER_STARTING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .restart local v4    # "userHandle":I
    iget-object v5, p0, Lcom/android/server/LockSettingsService$2;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;
    invoke-static {v5}, Lcom/android/server/LockSettingsService;->access$000(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    goto :goto_1

    .end local v4    # "userHandle":I
    :cond_3
    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .restart local v4    # "userHandle":I
    if-lez v4, :cond_0

    iget-object v5, p0, Lcom/android/server/LockSettingsService$2;->this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->removeUser(I)V
    invoke-static {v5, v4}, Lcom/android/server/LockSettingsService;->access$200(Lcom/android/server/LockSettingsService;I)V

    goto :goto_1
.end method
