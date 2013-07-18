.class Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UnReadHintAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->completeAnimationImmediately()V

    return-void
.end method
