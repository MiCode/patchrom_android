.class Landroid/drm/DrmManagerClient$CustomAlertDialog$1;
.super Ljava/lang/Object;
.source "DrmManagerClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/drm/DrmManagerClient$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient$CustomAlertDialog;


# direct methods
.method constructor <init>(Landroid/drm/DrmManagerClient$CustomAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog$1;->this$0:Landroid/drm/DrmManagerClient$CustomAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    iget-object v0, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog$1;->this$0:Landroid/drm/DrmManagerClient$CustomAlertDialog;

    #getter for: Landroid/drm/DrmManagerClient$CustomAlertDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->access$800(Landroid/drm/DrmManagerClient$CustomAlertDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "DrmManagerClient"

    const-string v1, "CustomerAlertDialog: execute the original dismiss listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog$1;->this$0:Landroid/drm/DrmManagerClient$CustomAlertDialog;

    #getter for: Landroid/drm/DrmManagerClient$CustomAlertDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->access$800(Landroid/drm/DrmManagerClient$CustomAlertDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog$1;->this$0:Landroid/drm/DrmManagerClient$CustomAlertDialog;

    #getter for: Landroid/drm/DrmManagerClient$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->access$900(Landroid/drm/DrmManagerClient$CustomAlertDialog;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog$1;->this$0:Landroid/drm/DrmManagerClient$CustomAlertDialog;

    #getter for: Landroid/drm/DrmManagerClient$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->access$900(Landroid/drm/DrmManagerClient$CustomAlertDialog;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "DrmManagerClient"

    const-string v2, "CustomerAlertDialog: remove this dialog from queue"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog$1;->this$0:Landroid/drm/DrmManagerClient$CustomAlertDialog;

    #getter for: Landroid/drm/DrmManagerClient$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->access$900(Landroid/drm/DrmManagerClient$CustomAlertDialog;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog$1;->this$0:Landroid/drm/DrmManagerClient$CustomAlertDialog;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/drm/DrmManagerClient$CustomAlertDialog$1;->this$0:Landroid/drm/DrmManagerClient$CustomAlertDialog;

    const/4 v1, 0x0

    #setter for: Landroid/drm/DrmManagerClient$CustomAlertDialog;->mQueue:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Landroid/drm/DrmManagerClient$CustomAlertDialog;->access$902(Landroid/drm/DrmManagerClient$CustomAlertDialog;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
