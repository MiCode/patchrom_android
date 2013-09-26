.class Lcom/android/internal/policy/impl/keyguard/PagedView$9$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/PagedView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/PagedView$9;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PagedView$9;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/PagedView$9;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9$1$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$9$1$1;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView$9$1;)V

    .local v0, onCompleteRunnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/PagedView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->zoomIn(Ljava/lang/Runnable;)Z

    return-void
.end method
