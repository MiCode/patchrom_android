.class Landroid/server/BluetoothA2dpService$FMServiceDeathHandler;
.super Ljava/lang/Object;
.source "BluetoothA2dpService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMServiceDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter "cb"

    .prologue
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$FMServiceDeathHandler;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/server/BluetoothA2dpService$FMServiceDeathHandler;->mCb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    const-string v0, "FMServiceDeathHandler::binderDied"

    #calls: Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$1100(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/server/BluetoothA2dpService$FMServiceDeathHandler;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/server/BluetoothA2dpService$FMServiceDeathHandler;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v1, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Z)Z

    iget-object v0, p0, Landroid/server/BluetoothA2dpService$FMServiceDeathHandler;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mFmOverBtMode:Z
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/server/BluetoothA2dpService$FMServiceDeathHandler;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->stopFm()V
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "FM was Power down,ignore."

    #calls: Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$1100(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$FMServiceDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
