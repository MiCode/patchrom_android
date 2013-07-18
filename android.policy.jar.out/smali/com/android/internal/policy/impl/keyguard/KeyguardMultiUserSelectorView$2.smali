.class Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$2;
.super Ljava/lang/Object;
.source "KeyguardMultiUserSelectorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

.field final synthetic val$avatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$2;->val$avatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$2;->val$avatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$2$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$2;)V

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    return-void
.end method
