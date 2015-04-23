.class public final Lcom/android/internal/telephony/cdma/CdmaCall;
.super Lcom/android/internal/telephony/Call;
.source "CdmaCall.java"


# instance fields
.field mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V
    .locals 0
    .param p1, "owner"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    return-void
.end method


# virtual methods
.method attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method clearDisconnected()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    :cond_2
    return-void
.end method

.method connectionDisconnected(Lcom/android/internal/telephony/cdma/CdmaConnection;)Z
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/cdma/CdmaConnection;

    .prologue
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    const/4 v0, 0x1

    .local v0, "hasOnlyDisconnectedConnections":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    const/4 v3, 0x1

    .end local v0    # "hasOnlyDisconnectedConnections":Z
    .end local v1    # "i":I
    .end local v2    # "s":I
    :goto_1
    return v3

    .restart local v0    # "hasOnlyDisconnectedConnections":Z
    .restart local v1    # "i":I
    .restart local v2    # "s":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "hasOnlyDisconnectedConnections":Z
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/cdma/CdmaConnection;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    return-void
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    return-object v0
.end method

.method public hangup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaCall;)V

    return-void
.end method

.method isFull()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onHangupLocal()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Lcom/android/internal/telephony/cdma/CdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/cdma/CdmaConnection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v0, 0x0

    .local v0, "changed":Z
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .local v1, "newState":Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
