.class Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$3;
.super Ljava/lang/Object;
.source "KeyguardPINView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->doHapticKeyClick()V

    const/4 v0, 0x1

    return v0
.end method
