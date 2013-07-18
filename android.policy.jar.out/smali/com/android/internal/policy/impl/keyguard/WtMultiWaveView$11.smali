.class Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WtMultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v0, "WtMultiWaveView"

    const-string v1, "mIntersectAnimResetListener onAnimationEnd"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    const/4 v1, 0x6

    move v3, v2

    move v5, v4

    #calls: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->switchDragViewToState(IIIFF)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$1700(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;IIIFF)V

    return-void
.end method
