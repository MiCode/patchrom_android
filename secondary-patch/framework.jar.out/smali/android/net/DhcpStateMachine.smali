.class public Landroid/net/DhcpStateMachine;
.super Landroid/net/BaseDhcpStateMachine;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;,
        Landroid/net/DhcpStateMachine$RunningState;,
        Landroid/net/DhcpStateMachine$PollingState;,
        Landroid/net/DhcpStateMachine$WaitBeforeStartState;,
        Landroid/net/DhcpStateMachine$StoppedState;,
        Landroid/net/DhcpStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final ACTION_DHCP_RENEW:Ljava/lang/String; = "android.net.wifi.DHCP_RENEW"

.field private static final BASE:I = 0x30000

.field private static final CMD_GET_DHCP_RESULTS:I = 0x30008

.field public static final CMD_ON_QUIT:I = 0x30006

.field public static final CMD_POST_DHCP_ACTION:I = 0x30005

.field public static final CMD_PRE_DHCP_ACTION:I = 0x30004

.field public static final CMD_PRE_DHCP_ACTION_COMPLETE:I = 0x30007

.field public static final CMD_RENEW_DHCP:I = 0x30003

.field public static final CMD_START_DHCP:I = 0x30001

.field public static final CMD_STOP_DHCP:I = 0x30002

.field private static final DBG:Z = false

.field public static final DHCP_FAILURE:I = 0x2

.field private static final DHCP_RENEW:I = 0x0

.field public static final DHCP_SUCCESS:I = 0x1

.field private static final MIN_RENEWAL_TIME_SECS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "DhcpStateMachine"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "DHCP"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/internal/util/StateMachine;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mDhcpRenewalIntent:Landroid/app/PendingIntent;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private final mInterfaceName:Ljava/lang/String;

.field private mPollingState:Lcom/android/internal/util/State;

.field private mRegisteredForPreDhcpNotification:Z

.field private mRunningState:Lcom/android/internal/util/State;

.field private mStoppedState:Lcom/android/internal/util/State;

.field private mWaitBeforeRenewalState:Lcom/android/internal/util/State;

.field private mWaitBeforeStartState:Lcom/android/internal/util/State;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p3, "intf"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const-string v2, "DhcpStateMachine"

    invoke-direct {p0, v2}, Landroid/net/BaseDhcpStateMachine;-><init>(Ljava/lang/String;)V

    iput-boolean v4, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    new-instance v2, Landroid/net/DhcpStateMachine$DefaultState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$DefaultState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/DhcpStateMachine$StoppedState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$StoppedState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/DhcpStateMachine$WaitBeforeStartState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$WaitBeforeStartState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/DhcpStateMachine$RunningState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$RunningState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    new-instance v2, Landroid/net/DhcpStateMachine$PollingState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$PollingState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mPollingState:Lcom/android/internal/util/State;

    iput-object p1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    iput-object p3, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.DHCP_RENEW"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, "dhcpRenewalIntent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .local v1, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "DHCP"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v2, Landroid/net/DhcpStateMachine$1;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$1;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.DHCP_RENEW"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mPollingState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/DhcpStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$000(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/DhcpStateMachine;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mPollingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/DhcpStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->dhcpSucceeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/DhcpStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/DhcpStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/DhcpStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/net/DhcpStateMachine;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/DhcpStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->runDhcpRenew()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/DhcpStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$402(Landroid/net/DhcpStateMachine;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Landroid/net/DhcpResults;

    .prologue
    iput-object p1, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    return-object p1
.end method

.method static synthetic access$500(Landroid/net/DhcpStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    return v0
.end method

.method static synthetic access$600(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/DhcpStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->runDhcpStart()Z

    move-result v0

    return v0
.end method

.method private dhcpSucceeded()Z
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v0, Landroid/net/DhcpResults;

    invoke-direct {v0}, Landroid/net/DhcpResults;-><init>()V

    .local v0, "dhcpResults":Landroid/net/DhcpResults;
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/net/NetworkUtils;->getDhcpResults(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v5, v0, Landroid/net/DhcpResults;->leaseDuration:I

    int-to-long v2, v5

    .local v2, "leaseDuration":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-ltz v5, :cond_2

    const-wide/16 v6, 0x12c

    cmp-long v5, v2, v6

    if-gez v5, :cond_1

    const-wide/16 v2, 0x12c

    :cond_1
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x1e0

    mul-long/2addr v10, v2

    add-long/2addr v8, v10

    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v8, v9, v7}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_2
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v0, v5}, Landroid/net/DhcpResults;->updateFromDhcpRequest(Landroid/net/DhcpResults;)V

    iput-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    const v6, 0x30005

    invoke-virtual {v5, v6, v4, v1, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    move v1, v4

    goto :goto_0
.end method

.method public static makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p2, "intf"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/net/DhcpStateMachine;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/DhcpStateMachine;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V

    .local v0, "dsm":Landroid/net/DhcpStateMachine;
    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->start()V

    return-object v0
.end method

.method private runDhcpRenew()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->startDhcpRenew(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->dhcpSucceeded()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "DhcpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHCP renew failed on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    const v2, 0x30005

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private runDhcpStart()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->startDhcp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->dhcpSucceeded()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "DhcpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHCP request failed on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    const v2, 0x30005

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doQuit()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/net/DhcpStateMachine;->quit()V

    return-void
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    const v1, 0x30006

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public registerForPreDhcpNotification()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    return-void
.end method
