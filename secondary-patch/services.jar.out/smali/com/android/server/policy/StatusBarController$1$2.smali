.class Lcom/android/server/policy/StatusBarController$1$2;
.super Ljava/lang/Object;
.source "StatusBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/StatusBarController$1;->onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/StatusBarController$1;

.field final synthetic val$closeAnimation:Landroid/view/animation/Animation;

.field final synthetic val$openAnimation:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/android/server/policy/StatusBarController$1;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    iput-object p2, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$openAnimation:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$closeAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    :try_start_0
    iget-object v4, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v4, v4, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v4}, Lcom/android/server/policy/StatusBarController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v4, v4, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    iget-object v5, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$openAnimation:Landroid/view/animation/Animation;

    iget-object v6, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$closeAnimation:Landroid/view/animation/Animation;

    # invokes: Lcom/android/server/policy/StatusBarController;->calculateStatusBarTransitionStartTime(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J
    invoke-static {v4, v5, v6}, Lcom/android/server/policy/StatusBarController;->access$000(Lcom/android/server/policy/StatusBarController;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J

    move-result-wide v2

    .local v2, "startTime":J
    const-wide/16 v4, 0x78

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->appTransitionStarting(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v2    # "startTime":J
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v4, v4, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    iget-object v4, v4, Lcom/android/server/policy/StatusBarController;->mTag:Ljava/lang/String;

    const-string v5, "RemoteException when app transition is starting"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v4, v4, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/policy/StatusBarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method
