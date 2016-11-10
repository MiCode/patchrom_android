.class Lcom/android/server/wifi/WifiServiceImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->registerForPackageOrUserRemoval()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$4;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    move v4, v6

    :goto_0
    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :sswitch_1
    const-string v7, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :pswitch_0
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android.intent.extra.UID"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .local v2, "uri":Landroid/net/Uri;
    if-eq v1, v6, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .local v0, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$4;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->removeAppConfigs(Ljava/lang/String;I)V

    goto :goto_1

    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "uid":I
    .end local v2    # "uri":Landroid/net/Uri;
    :pswitch_1
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "userHandle":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$4;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiStateMachine;->removeUserConfigs(I)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7ad942ef -> :sswitch_1
        0x1f50b9c2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
