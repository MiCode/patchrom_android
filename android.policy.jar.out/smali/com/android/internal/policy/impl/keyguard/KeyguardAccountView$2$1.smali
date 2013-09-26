.class Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->getProgressDialog()Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    return-void
.end method
