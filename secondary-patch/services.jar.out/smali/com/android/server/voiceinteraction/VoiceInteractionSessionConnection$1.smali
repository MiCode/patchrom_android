.class Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;
.super Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;
.source "VoiceInteractionSessionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    # invokes: Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->notifyPendingShowCallbacksFailedLocked()V
    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->access$000(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onShown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    # invokes: Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->notifyPendingShowCallbacksShownLocked()V
    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->access$100(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
