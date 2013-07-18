.class public interface abstract Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewMediatorCallback"
.end annotation


# virtual methods
.method public abstract keyguardDone(Z)V
.end method

.method public abstract keyguardDoneDrawing()V
.end method

.method public abstract keyguardDonePending()V
.end method

.method public abstract onUserActivityTimeoutChanged()V
.end method

.method public abstract setNeedsInput(Z)V
.end method

.method public abstract userActivity()V
.end method

.method public abstract userActivity(J)V
.end method

.method public abstract wakeUp()V
.end method
