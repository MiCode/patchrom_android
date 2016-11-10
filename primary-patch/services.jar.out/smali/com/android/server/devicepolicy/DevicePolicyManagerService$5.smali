.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDeviceOrUserLocked(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v1

    .local v1, "isManagedProfile":Z
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->removeUser(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t remove user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "isManagedProfile":Z
    :cond_1
    :goto_0
    return-void

    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "isManagedProfile":Z
    :cond_2
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendWipeProfileNotification()V
    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1100(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "isManagedProfile":Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method
