.class Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$2;
.super Ljava/lang/Object;
.source "VoiceUnlock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$200(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    const-string v2, "sendCommand RECOGNIZE_INTENSITY"

    #calls: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$000(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$200(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$300(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;->sendCommand(Landroid/content/Context;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$400(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x5a

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
