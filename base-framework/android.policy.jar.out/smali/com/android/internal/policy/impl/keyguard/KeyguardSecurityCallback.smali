.class public interface abstract Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
.super Ljava/lang/Object;
.source "KeyguardSecurityCallback.java"


# virtual methods
.method public abstract dismiss(Z)V
.end method

.method public abstract getFailedAttempts()I
.end method

.method public abstract isVerifyUnlockOnly()Z
.end method

.method public abstract reportFailedUnlockAttempt()V
.end method

.method public abstract reportSuccessfulUnlockAttempt()V
.end method

.method public abstract setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V
.end method

.method public abstract showBackupSecurity()V
.end method

.method public abstract userActivity(J)V
.end method
