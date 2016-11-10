.class public Landroid/app/admin/DeviceAdminReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceAdminReceiver.java"


# static fields
.field public static final ACTION_CHOOSE_PRIVATE_KEY_ALIAS:Ljava/lang/String; = "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS"

.field public static final ACTION_DEVICE_ADMIN_DISABLED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_DISABLED"

.field public static final ACTION_DEVICE_ADMIN_DISABLE_REQUESTED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

.field public static final ACTION_DEVICE_ADMIN_ENABLED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_ENABLED"

.field public static final ACTION_LOCK_TASK_ENTERING:Ljava/lang/String; = "android.app.action.LOCK_TASK_ENTERING"

.field public static final ACTION_LOCK_TASK_EXITING:Ljava/lang/String; = "android.app.action.LOCK_TASK_EXITING"

.field public static final ACTION_NOTIFY_PENDING_SYSTEM_UPDATE:Ljava/lang/String; = "android.app.action.NOTIFY_PENDING_SYSTEM_UPDATE"

.field public static final ACTION_PASSWORD_CHANGED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_CHANGED"

.field public static final ACTION_PASSWORD_EXPIRING:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_EXPIRING"

.field public static final ACTION_PASSWORD_FAILED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_FAILED"

.field public static final ACTION_PASSWORD_SUCCEEDED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_SUCCEEDED"

.field public static final ACTION_PROFILE_PROVISIONING_COMPLETE:Ljava/lang/String; = "android.app.action.PROFILE_PROVISIONING_COMPLETE"

.field public static final ACTION_READY_FOR_USER_INITIALIZATION:Ljava/lang/String; = "android.app.action.READY_FOR_USER_INITIALIZATION"

.field public static final DEVICE_ADMIN_META_DATA:Ljava/lang/String; = "android.app.device_admin"

.field public static final EXTRA_CHOOSE_PRIVATE_KEY_ALIAS:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS"

.field public static final EXTRA_CHOOSE_PRIVATE_KEY_RESPONSE:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_RESPONSE"

.field public static final EXTRA_CHOOSE_PRIVATE_KEY_SENDER_UID:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID"

.field public static final EXTRA_CHOOSE_PRIVATE_KEY_URI:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_URI"

.field public static final EXTRA_DISABLE_WARNING:Ljava/lang/String; = "android.app.extra.DISABLE_WARNING"

.field public static final EXTRA_LOCK_TASK_PACKAGE:Ljava/lang/String; = "android.app.extra.LOCK_TASK_PACKAGE"

.field public static final EXTRA_SYSTEM_UPDATE_RECEIVED_TIME:Ljava/lang/String; = "android.app.extra.SYSTEM_UPDATE_RECEIVED_TIME"

.field private static TAG:Ljava/lang/String;

.field private static localLOGV:Z


# instance fields
.field private mManager:Landroid/app/admin/DevicePolicyManager;

.field private mWho:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "DevicePolicy"

    sput-object v0, Landroid/app/admin/DeviceAdminReceiver;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/admin/DeviceAdminReceiver;->localLOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    goto :goto_0
.end method

.method public getWho(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uid"    # I
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    return-void
.end method

.method public onLockTaskModeEntering(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onLockTaskModeExiting(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    return-void
.end method

.method public onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    return-void
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    return-void
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    return-void
.end method

.method public onProfileProvisioningComplete(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    return-void
.end method

.method public onReadyForUserInitialization(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .local v10, "action":Ljava/lang/String;
    const-string v4, "android.app.action.ACTION_PASSWORD_CHANGED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "android.app.action.ACTION_PASSWORD_FAILED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v4, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v4, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onEnabled(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v4, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v16

    .local v16, "res":Ljava/lang/CharSequence;
    if-eqz v16, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/DeviceAdminReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v12

    .local v12, "extras":Landroid/os/Bundle;
    const-string v4, "android.app.extra.DISABLE_WARNING"

    move-object/from16 v0, v16

    invoke-virtual {v12, v4, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v12    # "extras":Landroid/os/Bundle;
    .end local v16    # "res":Ljava/lang/CharSequence;
    :cond_5
    const-string v4, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisabled(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v4, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    const-string v4, "android.app.action.PROFILE_PROVISIONING_COMPLETE"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onProfileProvisioningComplete(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_8
    const-string v4, "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .local v7, "uid":I
    const-string v4, "android.app.extra.CHOOSE_PRIVATE_KEY_URI"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .local v8, "uri":Landroid/net/Uri;
    const-string v4, "android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "alias":Ljava/lang/String;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Landroid/app/admin/DeviceAdminReceiver;->onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "chosenAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/admin/DeviceAdminReceiver;->setResultData(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "uid":I
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "alias":Ljava/lang/String;
    .end local v11    # "chosenAlias":Ljava/lang/String;
    :cond_9
    const-string v4, "android.app.action.LOCK_TASK_ENTERING"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "android.app.extra.LOCK_TASK_PACKAGE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v13}, Landroid/app/admin/DeviceAdminReceiver;->onLockTaskModeEntering(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v13    # "pkg":Ljava/lang/String;
    :cond_a
    const-string v4, "android.app.action.LOCK_TASK_EXITING"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onLockTaskModeExiting(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    const-string v4, "android.app.action.READY_FOR_USER_INITIALIZATION"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onReadyForUserInitialization(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    const-string v4, "android.app.action.NOTIFY_PENDING_SYSTEM_UPDATE"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "android.app.extra.SYSTEM_UPDATE_RECEIVED_TIME"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .local v14, "receivedTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v14, v15}, Landroid/app/admin/DeviceAdminReceiver;->onSystemUpdatePending(Landroid/content/Context;Landroid/content/Intent;J)V

    goto/16 :goto_0
.end method

.method public onSystemUpdatePending(Landroid/content/Context;Landroid/content/Intent;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "receivedTime"    # J

    .prologue
    return-void
.end method
