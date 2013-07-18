.class Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$5;
.super Ljava/lang/Object;
.source "WtMultiWaveView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #calls: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->refreshPositions()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$900(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)V

    return-void
.end method
