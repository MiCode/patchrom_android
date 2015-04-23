.class Landroid/telecom/RemoteConnectionService$1;
.super Ljava/lang/Object;
.source "RemoteConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnectionService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "parcel"    # Landroid/telecom/ParcelableConference;

    .prologue
    new-instance v1, Landroid/telecom/RemoteConference;

    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->access$600(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v4

    invoke-direct {v1, p1, v4}, Landroid/telecom/RemoteConference;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V

    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "id":Ljava/lang/String;
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection;

    .local v0, "c":Landroid/telecom/RemoteConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    goto :goto_0

    .end local v0    # "c":Landroid/telecom/RemoteConnection;
    .end local v3    # "id":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/telecom/RemoteConference;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getState()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telecom/RemoteConference;->setState(I)V

    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionCapabilities()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->access$700(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/telecom/RemoteConnectionService$1$1;

    invoke-direct {v4, p0, p1}, Landroid/telecom/RemoteConnectionService$1$1;-><init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/telecom/RemoteConference;->registerCallback(Landroid/telecom/RemoteConference$Callback;)V

    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->access$900(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/telecom/ConnectionService;->addRemoteConference(Landroid/telecom/RemoteConference;)V

    goto :goto_1
.end method

.method public addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/ParcelableConnection;

    .prologue
    new-instance v0, Landroid/telecom/RemoteConnection;

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;
    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->access$600(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;)V

    .local v0, "remoteConnction":Landroid/telecom/RemoteConnection;
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;
    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->access$900(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionService;->addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "parcel"    # Landroid/telecom/ParcelableConnection;

    .prologue
    const/4 v6, 0x6

    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v5, "handleCreateConnectionSuccessful"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v4, p1, v5}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v2

    .local v2, "connection":Landroid/telecom/RemoteConnection;
    # getter for: Landroid/telecom/RemoteConnectionService;->NULL_CONNECTION:Landroid/telecom/RemoteConnection;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->access$100()Landroid/telecom/RemoteConnection;

    move-result-object v4

    if-eq v2, v4, :cond_7

    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mPendingConnections:Ljava/util/Set;
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->access$200(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mPendingConnections:Ljava/util/Set;
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->access$200(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v4

    if-eq v4, v6, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    :cond_1
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v4

    if-eq v4, v6, :cond_3

    :cond_2
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    :cond_3
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v4

    if-ne v4, v6, :cond_5

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConferenceableConnectionIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "confId":Ljava/lang/String;
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "confId":Ljava/lang/String;
    .end local v1    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/telecom/RemoteConnection;->setState(I)V

    goto :goto_0

    .restart local v1    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v2, v1}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection;->getState()I

    move-result v4

    if-ne v4, v6, :cond_7

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    .end local v1    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    return-void
.end method

.method public onPostDialChar(Ljava/lang/String;C)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "nextChar"    # C

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "onPostDialChar"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->onPostDialChar(C)V

    return-void
.end method

.method public onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "onPostDialWait"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setPostDialWait(Ljava/lang/String;)V

    return-void
.end method

.method public queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/telecom/RemoteServiceCallback;

    .prologue
    return-void
.end method

.method public removeCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "removeCall"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "removeCall"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/RemoteConference;->setDestroyed()V

    goto :goto_0
.end method

.method public setActive(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setActive"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->setState(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setActive"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConference;->setState(I)V

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setAddress"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    return-void
.end method

.method public setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setCallerDisplayName"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    return-void
.end method

.method public setConferenceMergeFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public final setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # invokes: Landroid/telecom/RemoteConnectionService;->hasConnection(Ljava/lang/String;)Z
    invoke-static {v3, p1}, Landroid/telecom/RemoteConnectionService;->access$1000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v4, "setConferenceableConnections"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v3, p1, v4}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v4, "setConferenceableConnections"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    invoke-static {v3, p1, v4}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telecom/RemoteConference;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_1
.end method

.method public setConnectionCapabilities(Ljava/lang/String;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionCapabilities"    # I

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setConnectionCapabilities"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setConnectionCapabilities"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    goto :goto_0
.end method

.method public setDialing(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setDialing"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    return-void
.end method

.method public setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setDisconnected"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setDisconnected"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_0
.end method

.method public setExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setExtras"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setExtras(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setExtras"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setExtras(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conferenceCallId"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v3, "setIsConferenced"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v2, p1, v3}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v1

    .local v1, "connection":Landroid/telecom/RemoteConnection;
    # getter for: Landroid/telecom/RemoteConnectionService;->NULL_CONNECTION:Landroid/telecom/RemoteConnection;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->access$100()Landroid/telecom/RemoteConnection;

    move-result-object v2

    if-eq v1, v2, :cond_0

    if-nez p2, :cond_1

    invoke-virtual {v1}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/RemoteConference;->removeConnection(Landroid/telecom/RemoteConnection;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v3, "setIsConferenced"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    invoke-static {v2, p2, v3}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    .local v0, "conference":Landroid/telecom/RemoteConference;
    # getter for: Landroid/telecom/RemoteConnectionService;->NULL_CONFERENCE:Landroid/telecom/RemoteConference;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->access$500()Landroid/telecom/RemoteConference;

    move-result-object v2

    if-eq v0, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    goto :goto_0
.end method

.method public setIsVoipAudioMode(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isVoip"    # Z

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setIsVoipAudioMode"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setIsVoipAudioMode(Z)V

    return-void
.end method

.method public setOnHold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x5

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setOnHold"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->setState(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setOnHold"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConference;->setState(I)V

    goto :goto_0
.end method

.method public setRingbackRequested(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "ringing"    # Z

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setRingbackRequested"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setRingbackRequested(Z)V

    return-void
.end method

.method public setRinging(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setRinging"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    return-void
.end method

.method public setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setStatusHints"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setStatusHints(Landroid/telecom/StatusHints;)V

    return-void
.end method

.method public setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;

    .prologue
    const/4 v0, 0x0

    .local v0, "remoteVideoProvider":Landroid/telecom/RemoteConnection$VideoProvider;
    if-eqz p2, :cond_0

    new-instance v0, Landroid/telecom/RemoteConnection$VideoProvider;

    .end local v0    # "remoteVideoProvider":Landroid/telecom/RemoteConnection$VideoProvider;
    invoke-direct {v0, p2}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;)V

    .restart local v0    # "remoteVideoProvider":Landroid/telecom/RemoteConnection$VideoProvider;
    :cond_0
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v2, "setVideoProvider"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v1, p1, v2}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConnection;->setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V

    return-void
.end method

.method public setVideoState(Ljava/lang/String;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v1, "setVideoState"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    return-void
.end method
