.class public abstract Lcom/android/internal/policy/impl/keyguard/UnReadObserver;
.super Landroid/database/ContentObserver;
.source "UnReadObserver.java"


# static fields
.field static final TAG:Ljava/lang/String; = "UnReadObserver"


# instance fields
.field mCreateTime:J

.field final mNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V
    .locals 0
    .parameter "handler"
    .parameter "newEventView"
    .parameter "createTime"

    .prologue
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->mNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    iput-wide p3, p0, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->mCreateTime:J

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->refreshUnReadNumber()V

    return-void
.end method

.method public abstract refreshUnReadNumber()V
.end method

.method public final upateNewEventNumber(I)V
    .locals 2
    .parameter "unreadNumber"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->mNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->mNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/UnReadObserver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard/UnReadObserver$1;-><init>(Lcom/android/internal/policy/impl/keyguard/UnReadObserver;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "UnReadObserver"

    const-string v1, "mNewEventView is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateQueryBaseTime(J)V
    .locals 1
    .parameter "newBaseTime"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->mCreateTime:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->upateNewEventNumber(I)V

    return-void
.end method
