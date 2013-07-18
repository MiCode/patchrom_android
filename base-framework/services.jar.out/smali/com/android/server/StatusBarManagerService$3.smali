.class Lcom/android/server/StatusBarManagerService$3;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StatusBarManagerService;->setImeWindowStatus(Landroid/os/IBinder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$backDisposition:I

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$vis:I


# direct methods
.method constructor <init>(Lcom/android/server/StatusBarManagerService;Landroid/os/IBinder;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService$3;->this$0:Lcom/android/server/StatusBarManagerService;

    iput-object p2, p0, Lcom/android/server/StatusBarManagerService$3;->val$token:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/StatusBarManagerService$3;->val$vis:I

    iput p4, p0, Lcom/android/server/StatusBarManagerService$3;->val$backDisposition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$3;->this$0:Lcom/android/server/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$3;->this$0:Lcom/android/server/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    iget-object v1, p0, Lcom/android/server/StatusBarManagerService$3;->val$token:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/StatusBarManagerService$3;->val$vis:I

    iget v3, p0, Lcom/android/server/StatusBarManagerService$3;->val$backDisposition:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar;->setImeWindowStatus(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
