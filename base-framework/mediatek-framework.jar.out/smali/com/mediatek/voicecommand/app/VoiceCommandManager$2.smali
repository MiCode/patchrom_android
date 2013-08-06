.class Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;
.super Ljava/lang/Object;
.source "VoiceCommandManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voicecommand/app/VoiceCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;


# direct methods
.method constructor <init>(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .parameter "classname"
    .parameter "service"

    .prologue
    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    #getter for: Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mLock:[B
    invoke-static {v3}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->access$100(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)[B

    move-result-object v4

    monitor-enter v4

    :try_start_0
    const-string v3, "VoiceCommandManager"

    const-string v5, "ServiceConnection onServiceConnected"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    invoke-static {p2}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    move-result-object v5

    #setter for: Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v3, v5}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->access$202(Lcom/mediatek/voicecommand/app/VoiceCommandManager;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isServiceConnecting:Z

    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    #getter for: Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->access$300(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    :try_start_1
    iget-object v5, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    #getter for: Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->access$300(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    #getter for: Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->access$300(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/voicecommand/VoiceCommandListener;

    invoke-virtual {v5, v3}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->registerListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    iget-boolean v3, v3, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isRegistered:Z

    if-eqz v3, :cond_1

    const-string v3, "VoiceCommandManager"

    const-string v5, "Send CacheCommand"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    #getter for: Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mCommandCaches:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->access$500(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v0, command:Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;
    :try_start_3
    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    iget-object v5, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    #getter for: Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mAppContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->access$600(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)Landroid/content/Context;

    move-result-object v5

    iget v6, v0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;->mMainAction:I

    iget v7, v0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;->mSubAction:I

    iget-object v8, v0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->sendCommand(Landroid/content/Context;IILandroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    :try_start_4
    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    const/4 v5, 0x1

    #calls: Lcom/mediatek/voicecommand/app/VoiceCommandManager;->handleServiceDisconnected(Z)V
    invoke-static {v3, v5}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->access$400(Lcom/mediatek/voicecommand/app/VoiceCommandManager;Z)V

    goto :goto_1

    .end local v0           #command:Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :catch_1
    move-exception v1

    .restart local v1       #e:Landroid/os/RemoteException;
    :try_start_5
    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    const/4 v5, 0x1

    #calls: Lcom/mediatek/voicecommand/app/VoiceCommandManager;->handleServiceDisconnected(Z)V
    invoke-static {v3, v5}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->access$400(Lcom/mediatek/voicecommand/app/VoiceCommandManager;Z)V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v3, "VoiceCommandManager"

    const-string v5, "registerListener Error in onServiceConnected"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #command:Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;
    .restart local v2       #i$:Ljava/util/Iterator;
    :catch_3
    move-exception v1

    .restart local v1       #e:Ljava/lang/IllegalAccessException;
    const-string v3, "VoiceCommandManager"

    const-string v5, "sendCommand Error in onServiceConnected"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #command:Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    #getter for: Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mCommandCaches:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->access$500(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    iget-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/voicecommand/app/VoiceCommandManager;->handleServiceDisconnected(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->access$400(Lcom/mediatek/voicecommand/app/VoiceCommandManager;Z)V

    return-void
.end method
