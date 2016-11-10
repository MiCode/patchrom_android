.class Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ManagedServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingRestoredReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ManagedServices;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ManagedServices;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v3, "android.os.action.SETTING_RESTORED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "setting_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "element":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;->this$0:Lcom/android/server/notification/ManagedServices;

    # getter for: Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;
    invoke-static {v3}, Lcom/android/server/notification/ManagedServices;->access$100(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "previous_value"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "prevValue":Ljava/lang/String;
    const-string v3, "new_value"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "newValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;->getSendingUserId()I

    move-result v4

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/android/server/notification/ManagedServices;->settingRestored(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "newValue":Ljava/lang/String;
    .end local v2    # "prevValue":Ljava/lang/String;
    :cond_0
    return-void
.end method
