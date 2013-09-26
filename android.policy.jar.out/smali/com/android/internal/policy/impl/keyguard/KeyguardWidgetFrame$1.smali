.class Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardWidgetFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->performAppWidgetSizeCallbacksIfNecessary()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;Z)Z

    :cond_0
    return-void
.end method
