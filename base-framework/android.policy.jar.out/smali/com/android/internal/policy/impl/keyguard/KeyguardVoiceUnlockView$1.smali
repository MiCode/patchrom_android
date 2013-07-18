.class Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardVoiceUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 5
    .parameter "showing"

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyguardVisibilityChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, wasShowing:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mIsShowingLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mIsShowing:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mIsShowing:Z
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$302(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;Z)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, powerManager:Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    :cond_0
    :goto_0
    return-void

    .end local v0           #powerManager:Landroid/os/PowerManager;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v0       #powerManager:Landroid/os/PowerManager;
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)V

    goto :goto_0
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .parameter "phoneState"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    :cond_0
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 3
    .parameter "userId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitched("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    :cond_0
    return-void
.end method
