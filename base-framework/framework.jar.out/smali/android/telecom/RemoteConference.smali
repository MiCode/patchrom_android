.class public final Landroid/telecom/RemoteConference;
.super Ljava/lang/Object;
.source "RemoteConference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConference$Callback;
    }
.end annotation


# instance fields
.field private final mCallbackRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/CallbackRecord",
            "<",
            "Landroid/telecom/RemoteConference$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionCapabilities:I

.field private final mConnectionService:Lcom/android/internal/telecom/IConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mExtras:Landroid/os/Bundle;

.field private final mId:Ljava/lang/String;

.field private mState:I

.field private final mUnmodifiableChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableChildConnections:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/RemoteConference;->mState:I

    iput-object p1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    iput-object p2, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    return-void
.end method

.method static synthetic access$000(Landroid/telecom/RemoteConference;)I
    .locals 1
    .param p0, "x0"    # Landroid/telecom/RemoteConference;

    .prologue
    iget v0, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    return v0
.end method

.method static synthetic access$100(Landroid/telecom/RemoteConference;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/RemoteConference;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method addConnection(Landroid/telecom/RemoteConnection;)V
    .locals 6
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    iget-object v4, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$3;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConference$3;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getConferenceableConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectionCapabilities()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    return v0
.end method

.method public final getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableChildConnections:Ljava/util/List;

    return-object v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telecom/RemoteConference;->mState:I

    return v0
.end method

.method public hold()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public merge()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->mergeConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playDtmfTone(C)V
    .locals 2
    .param p1, "digit"    # C

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final registerCallback(Landroid/telecom/RemoteConference$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/RemoteConference$Callback;

    .prologue
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/telecom/RemoteConference;->registerCallback(Landroid/telecom/RemoteConference$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public final registerCallback(Landroid/telecom/RemoteConference$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/telecom/RemoteConference$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConference;->unregisterCallback(Landroid/telecom/RemoteConference$Callback;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    new-instance v1, Landroid/telecom/CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/telecom/CallbackRecord;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method removeConnection(Landroid/telecom/RemoteConnection;)V
    .locals 6
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    iget-object v4, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$4;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConference$4;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_0
    return-void
.end method

.method public separate(Landroid/telecom/RemoteConnection;)V
    .locals 2
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->splitFromConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAudioState(Landroid/telecom/AudioState;)V
    .locals 1
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    new-instance v0, Landroid/telecom/CallAudioState;

    invoke-direct {v0, p1}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/AudioState;)V

    invoke-virtual {p0, v0}, Landroid/telecom/RemoteConference;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method public setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 2
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setConferenceableConnections(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    iget-object v4, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$6;

    invoke-direct {v5, p0, v0, v1}, Landroid/telecom/RemoteConference$6;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_0
    return-void
.end method

.method setConnectionCapabilities(I)V
    .locals 6
    .param p1, "connectionCapabilities"    # I

    .prologue
    iget v4, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    if-eq v4, p1, :cond_0

    iput p1, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$5;

    invoke-direct {v5, p0, v0, v1}, Landroid/telecom/RemoteConference$5;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_0
    return-void
.end method

.method setDestroyed()V
    .locals 7

    .prologue
    iget-object v5, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection;

    .local v2, "connection":Landroid/telecom/RemoteConnection;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    goto :goto_0

    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    :cond_0
    iget-object v5, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/CallbackRecord;

    .local v4, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v4}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v4}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Landroid/telecom/RemoteConference$1;

    invoke-direct {v6, p0, v0, v1}, Landroid/telecom/RemoteConference$1;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v4    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_1
    return-void
.end method

.method setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 6
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const/4 v5, 0x6

    iget v4, p0, Landroid/telecom/RemoteConference;->mState:I

    if-eq v4, v5, :cond_0

    iput-object p1, p0, Landroid/telecom/RemoteConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {p0, v5}, Landroid/telecom/RemoteConference;->setState(I)V

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$7;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConference$7;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/DisconnectCause;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_0
    return-void
.end method

.method setExtras(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    iput-object p1, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$8;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConference$8;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_0
    return-void
.end method

.method setState(I)V
    .locals 9
    .param p1, "newState"    # I

    .prologue
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const-string v0, "Unsupported state transition for Conference call."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v5

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroid/telecom/RemoteConference;->mState:I

    if-eq v0, p1, :cond_0

    iget v4, p0, Landroid/telecom/RemoteConference;->mState:I

    .local v4, "oldState":I
    iput p1, p0, Landroid/telecom/RemoteConference;->mState:I

    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/CallbackRecord;

    .local v7, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v3, p0

    .local v3, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v7}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConference$Callback;

    .local v2, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v7}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Landroid/telecom/RemoteConference$2;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConference$2;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;II)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public stopDtmfTone()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public swap()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->swapConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unhold()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final unregisterCallback(Landroid/telecom/RemoteConference$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/telecom/RemoteConference$Callback;

    .prologue
    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_1
    return-void
.end method
