.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;
.super Landroid/os/AsyncTask;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendPrivateKeyAliasResponse(Ljava/lang/String;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$keyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/security/IKeyChainAliasCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$keyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$alias:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$keyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$alias:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/security/IKeyChainAliasCallback;->alias(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "error while responding to callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
