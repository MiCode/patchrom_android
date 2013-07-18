.class Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$PendingEvent;
.super Ljava/lang/Object;
.source "WtMultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingEvent"
.end annotation


# instance fields
.field eventX:I

.field eventY:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

.field velocityX:F

.field velocityY:F


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$PendingEvent;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$PendingEvent;-><init>(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)V

    return-void
.end method
