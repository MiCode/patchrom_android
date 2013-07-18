.class Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MediatekGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->startWaveAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->access$1100(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Lcom/android/internal/policy/impl/keyguard/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PointCloud;->waveManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->setRadius(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->access$1100(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Lcom/android/internal/policy/impl/keyguard/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PointCloud;->waveManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->setAlpha(F)V

    return-void
.end method
