.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->val$success:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mCheckInProgress:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$802(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Z)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x1040533

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method
