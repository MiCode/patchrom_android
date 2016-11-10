.class public abstract Landroid/telecom/Connection$Listener;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "newAddress"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .prologue
    return-void
.end method

.method public onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "isVoip"    # Z

    .prologue
    return-void
.end method

.method public onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    return-void
.end method

.method public onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "conference"    # Landroid/telecom/Conference;

    .prologue
    return-void
.end method

.method public onConferenceMergeFailed(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .prologue
    return-void
.end method

.method public onConferenceParticipantsChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    return-void
.end method

.method public onConferenceStarted()V
    .locals 0

    .prologue
    return-void
.end method

.method public onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    return-void
.end method

.method public onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "capabilities"    # I

    .prologue
    return-void
.end method

.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .prologue
    return-void
.end method

.method public onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    return-void
.end method

.method public onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onPostDialChar(Landroid/telecom/Connection;C)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "nextChar"    # C

    .prologue
    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onRingbackRequested(Landroid/telecom/Connection;Z)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "ringback"    # Z

    .prologue
    return-void
.end method

.method public onStateChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "state"    # I

    .prologue
    return-void
.end method

.method public onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoState"    # I

    .prologue
    return-void
.end method
