.class Lcom/android/server/LockSettingsService$4;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/LockSettingsService$CredentialUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
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
    iput-object p1, p0, Lcom/android/server/LockSettingsService$4;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    return-object p1
.end method

.method public setCredential(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService$4;->this$0:Lcom/android/server/LockSettingsService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public toHash(Ljava/lang/String;I)[B
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService$4;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->access$300(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method
