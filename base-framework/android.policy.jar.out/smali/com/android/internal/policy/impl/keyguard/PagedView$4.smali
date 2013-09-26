.class Lcom/android/internal/policy/impl/keyguard/PagedView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/PagedView;->animateDragViewToOriginalPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    #calls: Lcom/android/internal/policy/impl/keyguard/PagedView;->onPostReorderingAnimationCompleted()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->access$400(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    return-void
.end method
