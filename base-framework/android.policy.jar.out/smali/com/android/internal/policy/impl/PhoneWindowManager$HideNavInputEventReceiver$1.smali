.class Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
