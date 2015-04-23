.class Landroid/view/VolumePanel$WarningDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarningDialogReceiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mVolumePanel:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/VolumePanel;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "volumePanel"    # Landroid/view/VolumePanel;

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Landroid/view/VolumePanel$WarningDialogReceiver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/VolumePanel$WarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    iput-object p3, p0, Landroid/view/VolumePanel$WarningDialogReceiver;->mVolumePanel:Landroid/view/VolumePanel;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    # getter for: Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;
    invoke-static {}, Landroid/view/VolumePanel;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    # setter for: Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Landroid/view/VolumePanel;->access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/view/VolumePanel$WarningDialogReceiver;->mVolumePanel:Landroid/view/VolumePanel;

    # invokes: Landroid/view/VolumePanel;->forceTimeout()V
    invoke-static {v0}, Landroid/view/VolumePanel;->access$200(Landroid/view/VolumePanel;)V

    iget-object v0, p0, Landroid/view/VolumePanel$WarningDialogReceiver;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0}, Landroid/view/VolumePanel;->updateStates()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    iget-object v0, p0, Landroid/view/VolumePanel$WarningDialogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Landroid/view/VolumePanel$WarningDialogReceiver;->cleanUp()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Landroid/view/VolumePanel$WarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    invoke-direct {p0}, Landroid/view/VolumePanel$WarningDialogReceiver;->cleanUp()V

    return-void
.end method
