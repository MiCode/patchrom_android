.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->onSimCheckResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->val$success:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v9, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2102(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Z)Z

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getSIMCardName(I)V
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x2050011

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v8, v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v8, v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPuk(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPukCount(I)I
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I

    move-result v1

    .local v1, retryCount:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPUKRetryCount:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)I

    move-result v5

    if-eq v5, v1, :cond_2

    move v0, v3

    .local v0, countChange:Z
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPuk(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)Ljava/lang/String;

    move-result-object v2

    .local v2, retryInfo:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I
    invoke-static {v5, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1002(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x2050012

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    invoke-static {v3, v5, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/CharSequence;Z)V

    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v9, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2102(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Z)Z

    goto/16 :goto_0

    .end local v0           #countChange:Z
    .end local v2           #retryInfo:Ljava/lang/String;
    :cond_2
    move v0, v4

    goto :goto_1

    .restart local v0       #countChange:Z
    .restart local v2       #retryInfo:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x10402ee

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    invoke-static {v3, v5, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/CharSequence;Z)V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x2050016

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    invoke-static {v5, v6, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/CharSequence;Z)V

    goto :goto_2
.end method
