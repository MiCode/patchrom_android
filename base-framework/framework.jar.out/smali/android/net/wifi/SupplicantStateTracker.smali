.class Landroid/net/wifi/SupplicantStateTracker;
.super Lcom/android/internal/util/StateMachine;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/SupplicantStateTracker$1;,
        Landroid/net/wifi/SupplicantStateTracker$DormantState;,
        Landroid/net/wifi/SupplicantStateTracker$CompletedState;,
        Landroid/net/wifi/SupplicantStateTracker$HandshakeState;,
        Landroid/net/wifi/SupplicantStateTracker$ScanState;,
        Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;,
        Landroid/net/wifi/SupplicantStateTracker$InactiveState;,
        Landroid/net/wifi/SupplicantStateTracker$UninitializedState;,
        Landroid/net/wifi/SupplicantStateTracker$DefaultState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SupplicantStateTracker"


# instance fields
.field private mAuthFailureInSupplicantBroadcast:Z

.field private mAuthenticationFailuresCount:I

.field private mCompletedState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDisconnectState:Lcom/android/internal/util/State;

.field private mDormantState:Lcom/android/internal/util/State;

.field private mHandshakeState:Lcom/android/internal/util/State;

.field private mInactiveState:Lcom/android/internal/util/State;

.field private mNetworksDisabledDuringConnect:Z

.field private mScanState:Lcom/android/internal/util/State;

.field private mUninitializedState:Lcom/android/internal/util/State;

.field private mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

.field private mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfigStore;Landroid/os/Handler;)V
    .locals 3
    .parameter "c"
    .parameter "wsm"
    .parameter "wcs"
    .parameter "t"

    .prologue
    const/4 v2, 0x0

    const-string v0, "SupplicantStateTracker"

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    iput v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    iput-boolean v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    iput-boolean v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$UninitializedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$UninitializedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$DefaultState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$InactiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$InactiveState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$ScanState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$ScanState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$CompletedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$DormantState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$DormantState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iput-object p3, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/SupplicantStateTracker;->setInitialState(Lcom/android/internal/util/State;)V

    invoke-virtual {p0}, Landroid/net/wifi/SupplicantStateTracker;->start()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/SupplicantStateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return v0
.end method

.method static synthetic access$002(Landroid/net/wifi/SupplicantStateTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return p1
.end method

.method static synthetic access$008(Landroid/net/wifi/SupplicantStateTracker;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return v0
.end method

.method static synthetic access$100(Landroid/net/wifi/SupplicantStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$102(Landroid/net/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return p1
.end method

.method static synthetic access$200(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/StateChangeResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Landroid/net/wifi/StateChangeResult;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/SupplicantStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return v0
.end method

.method static synthetic access$602(Landroid/net/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return p1
.end method

.method static synthetic access$700(Landroid/net/wifi/SupplicantStateTracker;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantStateTracker;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/wifi/SupplicantStateTracker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/wifi/SupplicantStateTracker;)Landroid/net/wifi/WifiConfigStore;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    return-object v0
.end method

.method private handleNetworkConnectionFailure(I)V
    .locals 2
    .parameter "netId"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    return-void
.end method

.method private sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    .locals 3
    .parameter "state"
    .parameter "failedAuth"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "newState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "supplicantError"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private transitionOnSupplicantStateChange(Landroid/net/wifi/StateChangeResult;)V
    .locals 4
    .parameter "stateChangeResult"

    .prologue
    iget-object v0, p1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .local v0, supState:Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantStateTracker$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string v1, "SupplicantStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown supplicant state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
