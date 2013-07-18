.class Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "CameraWidgetFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mShowing:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onKeyguardVisibilityChanged(Z)V
    .locals 2
    .parameter "showing"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;->mShowing:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;->mShowing:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;->mShowing:Z

    #calls: Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->onKeyguardVisibilityChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$1200(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;Z)V

    goto :goto_0
.end method
