.class Lcom/android/server/policy/StatusBarController$1;
.super Landroid/view/WindowManagerInternal$AppTransitionListener;
.source "StatusBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/StatusBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/StatusBarController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/StatusBarController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    invoke-direct {p0}, Landroid/view/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    iget-object v0, v0, Lcom/android/server/policy/StatusBarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/StatusBarController$1$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/StatusBarController$1$3;-><init>(Lcom/android/server/policy/StatusBarController$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAppTransitionPendingLocked()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    iget-object v0, v0, Lcom/android/server/policy/StatusBarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/StatusBarController$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/StatusBarController$1$1;-><init>(Lcom/android/server/policy/StatusBarController$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "openToken"    # Landroid/os/IBinder;
    .param p2, "closeToken"    # Landroid/os/IBinder;
    .param p3, "openAnimation"    # Landroid/view/animation/Animation;
    .param p4, "closeAnimation"    # Landroid/view/animation/Animation;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    iget-object v0, v0, Lcom/android/server/policy/StatusBarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/StatusBarController$1$2;

    invoke-direct {v1, p0, p3, p4}, Lcom/android/server/policy/StatusBarController$1$2;-><init>(Lcom/android/server/policy/StatusBarController$1;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
