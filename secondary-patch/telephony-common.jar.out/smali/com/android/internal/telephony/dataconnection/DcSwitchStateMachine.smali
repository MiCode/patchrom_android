.class public Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x43000

.field private static final CMD_RETRY_ATTACH:I = 0x43002

.field private static final DBG:Z = true

.field private static final EVENT_CONNECTED:I = 0x43000

.field private static final EVENT_DATA_ALLOWED:I = 0x43001

.field private static final EVENT_DATA_DISALLOWED:I = 0x43003

.field private static final LOG_TAG:Ljava/lang/String; = "DcSwitchSM"

.field private static final VDBG:Z


# instance fields
.field private mAc:Lcom/android/internal/util/AsyncChannel;

.field private mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

.field private mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

.field private mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

.field private mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

.field private mEmergencyState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

.field private mId:I

.field private mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreEmergencyState:Lcom/android/internal/util/IState;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mEmergencyState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    const-string v0, "DcSwitchState constructor E"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mEmergencyState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    const-string v0, "DcSwitchState constructor X"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPreEmergencyState:Lcom/android/internal/util/IState;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)Lcom/android/internal/util/IState;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPreEmergencyState:Lcom/android/internal/util/IState;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mEmergencyState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I

    return v0
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "DcSwitchSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
