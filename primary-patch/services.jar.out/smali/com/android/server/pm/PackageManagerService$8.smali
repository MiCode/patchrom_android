.class Lcom/android/server/pm/PackageManagerService$8;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$finishedReceiver:Landroid/content/IIntentReceiver;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$targetPkg:Ljava/lang/String;

.field final synthetic val$userIds:[I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;[ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$8;->val$userIds:[I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$8;->val$pkg:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$8;->val$extras:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$8;->val$targetPkg:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$8;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .local v2, "am":Landroid/app/IActivityManager;
    if-nez v2, :cond_1

    .end local v2    # "am":Landroid/app/IActivityManager;
    :cond_0
    :goto_0
    return-void

    .restart local v2    # "am":Landroid/app/IActivityManager;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$userIds:[I

    if-nez v3, :cond_5

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v19

    .local v19, "resolvedUserIds":[I
    :goto_1
    move-object/from16 v16, v19

    .local v16, "arr$":[I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    aget v15, v16, v17

    .local v15, "id":I
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$8;->val$action:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$pkg:Ljava/lang/String;

    if-eqz v3, :cond_6

    const-string v3, "package"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$8;->val$pkg:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_3
    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$extras:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$targetPkg:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$8;->val$targetPkg:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string v3, "android.intent.extra.UID"

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .local v20, "uid":I
    if-lez v20, :cond_4

    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v3, v15, :cond_4

    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v15, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v20

    const-string v3, "android.intent.extra.UID"

    move/from16 v0, v20

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v4, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$8;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$8;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    :goto_4
    const/4 v14, 0x0

    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v15    # "id":I
    .end local v16    # "arr$":[I
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "resolvedUserIds":[I
    .end local v20    # "uid":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$8;->val$userIds:[I

    move-object/from16 v19, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v19    # "resolvedUserIds":[I
    goto/16 :goto_1

    .restart local v15    # "id":I
    .restart local v16    # "arr$":[I
    .restart local v17    # "i$":I
    .restart local v18    # "len$":I
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v20    # "uid":I
    :cond_7
    const/4 v13, 0x0

    goto :goto_4

    .end local v2    # "am":Landroid/app/IActivityManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v15    # "id":I
    .end local v16    # "arr$":[I
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "resolvedUserIds":[I
    .end local v20    # "uid":I
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method
