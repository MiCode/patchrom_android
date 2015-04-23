.class Lcom/android/server/audio/AudioService$SetModeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetModeDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mMode:I

.field private mPid:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V
    .locals 1
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I

    .prologue
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    iput-object p2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .prologue
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .local v3, "newModeOwnerPid":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$1600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    const-string v4, "AudioService"

    const-string v6, "setMode() client died"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$1600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .local v2, "index":I
    if-gez v2, :cond_1

    const-string v4, "AudioService"

    const-string v6, "unregistered setMode() client died"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V
    invoke-static {v4, v3}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;I)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "ident":J
    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    iget v8, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    const-string v9, "AudioService"

    # invokes: Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    invoke-static {v4, v6, v7, v8, v9}, Lcom/android/server/audio/AudioService;->access$1700(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v3

    goto :goto_0

    .end local v2    # "index":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    return v0
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    iput p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    return-void
.end method
