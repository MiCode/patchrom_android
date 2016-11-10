.class public Landroid/net/dhcp/DhcpClient;
.super Landroid/net/BaseDhcpStateMachine;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/DhcpClient$DhcpRebootingState;,
        Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;,
        Landroid/net/dhcp/DhcpClient$DhcpRebindingState;,
        Landroid/net/dhcp/DhcpClient$DhcpRenewingState;,
        Landroid/net/dhcp/DhcpClient$DhcpBoundState;,
        Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;,
        Landroid/net/dhcp/DhcpClient$DhcpRequestingState;,
        Landroid/net/dhcp/DhcpClient$DhcpSelectingState;,
        Landroid/net/dhcp/DhcpClient$DhcpInitState;,
        Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;,
        Landroid/net/dhcp/DhcpClient$DhcpState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;,
        Landroid/net/dhcp/DhcpClient$StoppedState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;,
        Landroid/net/dhcp/DhcpClient$LoggingState;,
        Landroid/net/dhcp/DhcpClient$ReceiveThread;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x30064

.field private static final CMD_KICK:I = 0x30065

.field private static final CMD_ONESHOT_TIMEOUT:I = 0x30068

.field private static final CMD_RECEIVED_PACKET:I = 0x30066

.field private static final CMD_TIMEOUT:I = 0x30067

.field private static final DBG:Z = true

.field private static final DHCP_TIMEOUT_MS:I = 0x8ca0

.field private static final DO_UNICAST:Z = false

.field private static final FIRST_TIMEOUT_MS:I = 0x7d0

.field private static final MAX_TIMEOUT_MS:I = 0x1f400

.field private static final MSG_DBG:Z = false

.field private static final PACKET_DBG:Z = true

.field private static final REQUESTED_PARAMS:[B

.field private static final SECONDS:I = 0x3e8

.field private static final STATE_DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "DhcpClient"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/internal/util/StateMachine;

.field private mDhcpBoundState:Lcom/android/internal/util/State;

.field private mDhcpHaveAddressState:Lcom/android/internal/util/State;

.field private mDhcpInitRebootState:Lcom/android/internal/util/State;

.field private mDhcpInitState:Lcom/android/internal/util/State;

.field private mDhcpLease:Landroid/net/DhcpResults;

.field private mDhcpLeaseExpiry:J

.field private mDhcpRebindingState:Lcom/android/internal/util/State;

.field private mDhcpRebootingState:Lcom/android/internal/util/State;

.field private mDhcpRenewingState:Lcom/android/internal/util/State;

.field private mDhcpRequestingState:Lcom/android/internal/util/State;

.field private mDhcpSelectingState:Lcom/android/internal/util/State;

.field private mDhcpState:Lcom/android/internal/util/State;

.field private mHwAddr:[B

.field private mIface:Ljava/net/NetworkInterface;

.field private final mIfaceName:Ljava/lang/String;

.field private mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

.field private final mKickIntent:Landroid/app/PendingIntent;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mOffer:Landroid/net/DhcpResults;

.field private final mOneshotTimeoutIntent:Landroid/app/PendingIntent;

.field private mPacketSock:Ljava/io/FileDescriptor;

.field private final mRandom:Ljava/util/Random;

.field private mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

.field private mRegisteredForPreDhcpNotification:Z

.field private final mRenewIntent:Landroid/app/PendingIntent;

.field private mStoppedState:Lcom/android/internal/util/State;

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private mTransactionId:I

.field private mTransactionStartMillis:J

.field private mUdpSock:Ljava/io/FileDescriptor;

.field private mWaitBeforeRenewalState:Lcom/android/internal/util/State;

.field private mWaitBeforeStartState:Lcom/android/internal/util/State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x3t
        0x6t
        0xft
        0x1at
        0x1ct
        0x33t
        0x3at
        0x3bt
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    const-string v1, "DhcpClient"

    invoke-direct {p0, v1}, Landroid/net/BaseDhcpStateMachine;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/dhcp/DhcpClient$StoppedState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$StoppedState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpInitState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpInitState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpSelectingState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpSelectingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpSelectingState:Lcom/android/internal/util/State;

    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpBoundState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpBoundState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;

    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/internal/util/State;

    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitRebootState:Lcom/android/internal/util/State;

    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpRebootingState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpRebootingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebootingState:Lcom/android/internal/util/State;

    new-instance v1, Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    invoke-direct {v1, p0, v2}, Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;-><init>(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/State;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    new-instance v1, Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    invoke-direct {v1, p0, v2}, Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;-><init>(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/State;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    iput-object p3, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpSelectingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitRebootState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebootingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/dhcp/DhcpClient;->setInitialState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mNMService:Landroid/os/INetworkManagementService;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    const-string v1, "KICK"

    const v2, 0x30065

    invoke-direct {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->createStateMachineCommandIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mKickIntent:Landroid/app/PendingIntent;

    const-string v1, "TIMEOUT"

    const v2, 0x30067

    invoke-direct {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->createStateMachineCommandIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mTimeoutIntent:Landroid/app/PendingIntent;

    const-string v1, "RENEW"

    const v2, 0x30003

    invoke-direct {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->createStateMachineCommandIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mRenewIntent:Landroid/app/PendingIntent;

    const-string v1, "ONESHOT_TIMEOUT"

    const v2, 0x30068

    invoke-direct {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->createStateMachineCommandIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mOneshotTimeoutIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic access$000(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->closeSockets()V

    return-void
.end method

.method static synthetic access$100(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->clearDhcpState()V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initInterface()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initSockets()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Landroid/net/dhcp/DhcpClient$ReceiveThread;

    .prologue
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->notifyFailure()V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->cancelOneshotTimeout()V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mKickIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mTimeoutIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/net/dhcp/DhcpClient;)Ljava/util/Random;
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->startNewTransaction()V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->sendDiscoverPacket()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Landroid/net/DhcpResults;

    .prologue
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Ljava/net/Inet4Address;
    .param p2, "x2"    # Ljava/net/Inet4Address;
    .param p3, "x3"    # Ljava/net/Inet4Address;
    .param p4, "x4"    # Ljava/net/Inet4Address;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/dhcp/DhcpClient;->sendRequestPacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    return-object v0
.end method

.method static synthetic access$3002(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Landroid/net/DhcpResults;

    .prologue
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    return-object p1
.end method

.method static synthetic access$3100(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/net/dhcp/DhcpClient;Landroid/net/LinkAddress;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Landroid/net/LinkAddress;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient;->setIpAddress(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->notifySuccess()V

    return-void
.end method

.method static synthetic access$3800(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->scheduleRenew()V

    return-void
.end method

.method static synthetic access$3900(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->scheduleOneshotTimeout()V

    return-void
.end method

.method static synthetic access$600(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z

    return v0
.end method

.method static synthetic access$700(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private cancelOneshotTimeout()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mOneshotTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private clearDhcpState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    return-void
.end method

.method private static closeQuietly(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private closeSockets()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->closeQuietly(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method private createStateMachineCommandIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 8
    .param p1, "cmdName"    # Ljava/lang/String;
    .param p2, "cmd"    # I

    .prologue
    const/4 v7, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, p2, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/net/dhcp/DhcpClient$1;

    invoke-direct {v4, p0, p2}, Landroid/net/dhcp/DhcpClient$1;-><init>(Landroid/net/dhcp/DhcpClient;I)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-object v2
.end method

.method private getSecs()S
    .locals 4

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/dhcp/DhcpClient;->mTransactionStartMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method private initInterface()Z
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIface:Ljava/net/NetworkInterface;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    new-instance v1, Landroid/system/PacketSocketAddress;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    sget-object v3, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    invoke-direct {v1, v2, v3}, Landroid/system/PacketSocketAddress;-><init>(I[B)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/SocketException;
    const-string v1, "DhcpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t determine ifindex or MAC address for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initSockets()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    :try_start_0
    sget v4, Landroid/system/OsConstants;->AF_PACKET:I

    sget v5, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v6, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-static {v4, v5, v6}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v4

    iput-object v4, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    new-instance v0, Landroid/system/PacketSocketAddress;

    sget v4, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v4, v4

    iget-object v5, p0, Landroid/net/dhcp/DhcpClient;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    .local v0, "addr":Landroid/system/PacketSocketAddress;
    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-static {v4, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-static {v4}, Landroid/net/NetworkUtils;->attachDhcpFilter(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget v4, Landroid/system/OsConstants;->AF_INET:I

    sget v5, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v6, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v4, v5, v6}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v4

    iput-object v4, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget v5, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v6, Landroid/system/OsConstants;->SO_REUSEADDR:I

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget v5, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v6, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    iget-object v7, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Landroid/system/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget v5, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v6, Landroid/system/OsConstants;->SO_BROADCAST:I

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget-object v5, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/16 v6, 0x44

    invoke-static {v4, v5, v6}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    invoke-static {v4}, Landroid/net/NetworkUtils;->protectFromVpn(Ljava/io/FileDescriptor;)Z
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "addr":Landroid/system/PacketSocketAddress;
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, "DhcpClient"

    const-string v4, "Error creating packet socket"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "addr":Landroid/system/PacketSocketAddress;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v2, "DhcpClient"

    const-string v4, "Error creating UDP socket"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_2

    .end local v0    # "addr":Landroid/system/PacketSocketAddress;
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/BaseDhcpStateMachine;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p2, "intf"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/net/dhcp/DhcpClient;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/dhcp/DhcpClient;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V

    .local v0, "client":Landroid/net/dhcp/DhcpClient;
    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->start()V

    return-object v0
.end method

.method private maybeLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "DhcpClient"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyFailure()V
    .locals 5

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    const v1, 0x30005

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private notifySuccess()V
    .locals 6

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    const v1, 0x30005

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Landroid/net/DhcpResults;

    iget-object v5, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    invoke-direct {v4, v5}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private scheduleOneshotTimeout()V
    .locals 6

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x8ca0

    add-long v0, v2, v4

    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mOneshotTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private scheduleRenew()V
    .locals 10

    .prologue
    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Landroid/net/dhcp/DhcpClient;->mRenewIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-wide v4, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .local v2, "now":J
    iget-wide v4, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    add-long/2addr v4, v2

    const-wide/16 v6, 0x2

    div-long v0, v4, v6

    .local v0, "alarmTime":J
    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-object v6, p0, Landroid/net/dhcp/DhcpClient;->mRenewIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const-string v4, "DhcpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheduling renewal in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v0, v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "alarmTime":J
    .end local v2    # "now":J
    :goto_0
    return-void

    :cond_0
    const-string v4, "DhcpClient"

    const-string v5, "Infinite lease, no renewal needed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendDiscoverPacket()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->getSecs()S

    move-result v2

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    sget-object v5, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    move v4, v0

    invoke-static/range {v0 .. v5}, Landroid/net/dhcp/DhcpPacket;->buildDiscoverPacket(IIS[BZ[B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .local v6, "packet":Ljava/nio/ByteBuffer;
    const-string v0, "DHCPDISCOVER"

    sget-object v1, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    invoke-direct {p0, v6, v0, v1}, Landroid/net/dhcp/DhcpClient;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method

.method private sendRequestPacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    .locals 13
    .param p1, "clientAddress"    # Ljava/net/Inet4Address;
    .param p2, "requestedAddress"    # Ljava/net/Inet4Address;
    .param p3, "serverAddress"    # Ljava/net/Inet4Address;
    .param p4, "to"    # Ljava/net/Inet4Address;

    .prologue
    sget-object v2, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .local v1, "encap":I
    :goto_0
    iget v2, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->getSecs()S

    move-result v3

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    sget-object v9, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    const/4 v10, 0x0

    move-object v4, p1

    move-object v7, p2

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v10}, Landroid/net/dhcp/DhcpPacket;->buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v12

    .local v12, "packet":Ljava/nio/ByteBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHCPREQUEST ciaddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "description":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-direct {p0, v12, v11, v0}, Landroid/net/dhcp/DhcpClient;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/net/Inet4Address;)Z

    move-result v2

    return v2

    .end local v1    # "encap":I
    .end local v11    # "description":Ljava/lang/String;
    .end local v12    # "packet":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private setIpAddress(Landroid/net/LinkAddress;)Z
    .locals 5
    .param p1, "address"    # Landroid/net/LinkAddress;

    .prologue
    new-instance v1, Landroid/net/InterfaceConfiguration;

    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v1, p1}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    :try_start_0
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, "DhcpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error configuring IP address : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private startNewTransaction()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mTransactionStartMillis:J

    return-void
.end method

.method private transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/net/Inet4Address;)Z
    .locals 8
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/net/Inet4Address;

    .prologue
    const/4 v7, 0x0

    :try_start_0
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    invoke-virtual {p3, v0}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcasting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/net/dhcp/DhcpClient;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

    invoke-static/range {v0 .. v5}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unicasting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    const/16 v2, 0x43

    invoke-static {v0, p1, v1, p3, v2}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    const-string v0, "DhcpClient"

    const-string v1, "Can\'t send packet: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v7

    goto :goto_1

    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto :goto_2
.end method


# virtual methods
.method public doQuit()V
    .locals 2

    .prologue
    const-string v0, "DhcpClient"

    const-string v1, "doQuit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient;->quit()V

    return-void
.end method

.method public isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z
    .locals 5
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getTransactionId()I

    move-result v0

    .local v0, "xid":I
    iget v2, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    if-eq v0, v2, :cond_0

    const-string v2, "DhcpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected transaction ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getClientMac()[B

    move-result-object v2

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "DhcpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAC addr mismatch: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getClientMac()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getClientMac()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    const-string v0, "DhcpClient"

    const-string v1, "onQuitting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    const v1, 0x30006

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public registerForPreDhcpNotification()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z

    return-void
.end method

.method public setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V
    .locals 5
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    .prologue
    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getLeaseTimeMillis()J

    move-result-wide v0

    .local v0, "leaseTimeMillis":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    :cond_0
    iput-wide v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    return-void
.end method
