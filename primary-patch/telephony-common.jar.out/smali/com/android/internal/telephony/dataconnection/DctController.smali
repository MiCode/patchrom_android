.class public Lcom/android/internal/telephony/dataconnection/DctController;
.super Landroid/os/Handler;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_DATA_ATTACHED:I = 0x1f4

.field private static final EVENT_DATA_DETACHED:I = 0x258

.field private static final EVENT_EMERGENCY_CALL_TOGGLED:I = 0x2bc

.field private static final EVENT_EXECUTE_ALL_REQUESTS:I = 0x66

.field private static final EVENT_EXECUTE_REQUEST:I = 0x65

.field private static final EVENT_PROCESS_REQUESTS:I = 0x64

.field private static final EVENT_RELEASE_ALL_REQUESTS:I = 0x68

.field private static final EVENT_RELEASE_REQUEST:I = 0x67

.field private static final EVENT_RETRY_ATTACH:I = 0x69

.field private static final EVENT_SETTINGS_CHANGED:I = 0x6a

.field private static final EVENT_SUBSCRIPTIONS_CHANGED:I = 0x6b

.field private static final LOG_TAG:Ljava/lang/String; = "DctController"

.field private static sDctController:Lcom/android/internal/telephony/dataconnection/DctController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

.field private mDcSwitchStateHandler:[Landroid/os/Handler;

.field private mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

.field private mNetworkFactory:[Landroid/net/NetworkFactory;

.field private mNetworkFactoryMessenger:[Landroid/os/Messenger;

.field private mNetworkFilter:[Landroid/net/NetworkCapabilities;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneNum:I

.field private mPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private mRequestInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRspHandler:Landroid/os/Handler;

.field private mSubController:Lcom/android/internal/telephony/SubscriptionController;

.field private mSubMgr:Landroid/telephony/SubscriptionManager;


# direct methods
.method private constructor <init>([Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 10
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    const/4 v9, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v4, Lcom/android/internal/telephony/dataconnection/DctController$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/dataconnection/DctController$1;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v4, Lcom/android/internal/telephony/dataconnection/DctController$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/dataconnection/DctController$2;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mObserver:Landroid/database/ContentObserver;

    new-instance v4, Lcom/android/internal/telephony/dataconnection/DctController$3;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/dataconnection/DctController$3;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DctController(): phones.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_2

    :cond_0
    if-nez p1, :cond_1

    const-string v4, "DctController(phones): UNEXPECTED phones=null, ignore"

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v4, "DctController(phones): UNEXPECTED phones.length=0, ignore"

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    array-length v4, p1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Landroid/os/Handler;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Landroid/os/Messenger;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Landroid/net/NetworkFactory;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Landroid/net/NetworkCapabilities;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v4, :cond_4

    move v2, v0

    .local v2, "phoneId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v5, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v6, v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DcSwitchStateMachine-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V

    aput-object v5, v4, v0

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->start()V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    new-instance v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    aget-object v6, v6, v0

    invoke-direct {v5, v6, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;I)V

    aput-object v5, v4, v0

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    aput-object v5, v4, v0

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v3

    .local v3, "status":I
    if-nez v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DctController(phones): Connect success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->updatePhoneBaseForIndex(ILcom/android/internal/telephony/PhoneBase;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .end local v1    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DctController(phones): Could not connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_2

    .end local v2    # "phoneId":I
    .end local v3    # "status":I
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_sim_data_call"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v9, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;ILandroid/util/LocalLog;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/util/LocalLog;
    .param p4, "x4"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/dataconnection/DctController;->requestNetwork(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseNetwork(Landroid/net/NetworkRequest;)I

    move-result v0

    return v0
.end method

.method private apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;
    .locals 7
    .param p1, "nr"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .local v2, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_1

    invoke-virtual {v2, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v1, v4

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v3, -0x1

    .local v3, "type":I
    const/4 v1, 0x0

    .local v1, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "error":Z
    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    const-string v1, "default"

    const/4 v3, 0x0

    :cond_3
    invoke-virtual {v2, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    const-string v1, "mms"

    const/4 v3, 0x2

    :cond_5
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    const-string v1, "supl"

    const/4 v3, 0x3

    :cond_7
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    const-string v1, "dun"

    const/4 v3, 0x4

    :cond_9
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    const-string v1, "fota"

    const/16 v3, 0xa

    :cond_b
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_d

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    const-string v1, "ims"

    const/16 v3, 0xb

    :cond_d
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_f

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    const-string v1, "cbs"

    const/16 v3, 0xc

    :cond_f
    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_11

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    const-string v1, "ia"

    const/16 v3, 0xe

    :cond_11
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_13

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    const/4 v1, 0x0

    const-string v5, "RCS APN type not yet supported"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    :cond_13
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_15

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    const/4 v1, 0x0

    const-string v5, "XCAP APN type not yet supported"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    :cond_15
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_17

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    const-string v1, "emergency"

    const/16 v3, 0xf

    :cond_17
    if-eqz v0, :cond_18

    const-string v5, "Multiple apn types specified in request - result is unspecified!"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    :cond_18
    const/4 v5, -0x1

    if-eq v3, v5, :cond_19

    if-nez v1, :cond_0

    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported NetworkRequest in Telephony: nr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    move-object v1, v4

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DctController.getInstance can\'t be called before makeDCTController()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method

.method private getRequestPhoneId(Landroid/net/NetworkRequest;)I
    .locals 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    iget-object v3, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v1

    .local v1, "specifier":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .local v2, "subId":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Should not happen, no valid phoneId"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "phoneId":I
    .end local v2    # "subId":I
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "subId":I
    goto :goto_0

    .restart local v0    # "phoneId":I
    :cond_2
    return v0
.end method

.method private getTopPriorityRequestPhoneId()I
    .locals 9

    .prologue
    const/4 v6, 0x0

    .local v6, "retRequestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    const/4 v3, 0x0

    .local v3, "phoneId":I
    const/4 v4, -0x1

    .local v4, "priority":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v1, v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .local v5, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectExecPhone requestInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->phoneId:I

    if-ne v7, v1, :cond_0

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->priority:I

    if-ge v4, v7, :cond_0

    iget v4, v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->priority:I

    move-object v6, v5

    goto :goto_1

    .end local v5    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    if-eqz v6, :cond_3

    iget-object v7, v6, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v3

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTopPriorityRequestPhoneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", priority = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    return v3

    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .local v0, "defaultDds":I
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v3

    const-string v7, "getTopPriorityRequestPhoneId: RequestInfo list is empty, use Dds sub phone id"

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "DctController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "DctController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 2
    .param p0, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDctController: new DctController phones.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DctController;-><init>([Lcom/android/internal/telephony/PhoneProxy;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDctController: X sDctController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method

.method private onExecuteAllRequests(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExecuteAllRequests phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .local v1, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget v2, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->phoneId:I

    if-ne v2, p1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_0

    .end local v1    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    return-void
.end method

.method private onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 6
    .param p1, "requestInfo"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    iget-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onExecuteRequest request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DctController.onExecuteRequest - executed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .local v0, "apn":Ljava/lang/String;
    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->phoneId:I

    .local v3, "phoneId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .local v2, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->getLog()Landroid/util/LocalLog;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->incApnRefCount(Ljava/lang/String;Landroid/util/LocalLog;)V

    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "phoneId":I
    :cond_0
    return-void
.end method

.method private onProcessRequest()V
    .locals 7

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getTopPriorityRequestPhoneId()I

    move-result v3

    .local v3, "phoneId":I
    const/4 v0, -0x1

    .local v0, "activePhoneId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProcessRequest phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", activePhoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    if-ne v0, v3, :cond_4

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .local v4, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget v5, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->phoneId:I

    if-ne v5, v3, :cond_2

    iget-boolean v5, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v5, v5, v3

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connect(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)I

    goto :goto_1

    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->disconnectAll()I

    :cond_5
    return-void
.end method

.method private onReleaseAllRequests(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReleaseAllRequests phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .local v1, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget v2, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->phoneId:I

    if-ne v2, p1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_0

    .end local v1    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    return-void
.end method

.method private onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 6
    .param p1, "requestInfo"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReleaseRequest request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v4, "DctController.onReleaseRequest"

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    iget-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .local v0, "apn":Ljava/lang/String;
    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->phoneId:I

    .local v3, "phoneId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .local v2, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->getLog()Landroid/util/LocalLog;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->decApnRefCount(Ljava/lang/String;Landroid/util/LocalLog;)V

    const/4 v4, 0x0

    iput-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "phoneId":I
    :cond_0
    return-void
.end method

.method private onRetryAttach(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getTopPriorityRequestPhoneId()I

    move-result v0

    .local v0, "topPriPhone":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRetryAttach phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " topPri phone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->retryConnect()V

    :cond_0
    return-void
.end method

.method private onSettingsChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v11}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v11

    int-to-long v2, v11

    .local v2, "dataSubId":J
    const/4 v0, -0x1

    .local v0, "activePhoneId":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    array-length v11, v11

    if-ge v5, v11, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    move-result v11

    if-nez v11, :cond_2

    move v0, v5

    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    .local v10, "subIds":[I
    if-eqz v10, :cond_1

    array-length v11, v10

    if-nez v11, :cond_3

    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onSettingsChange, subIds null or length 0 for activePhoneId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    :goto_1
    return-void

    .end local v10    # "subIds":[I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .restart local v10    # "subIds":[I
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onSettingsChange, data sub: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", active data sub: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v10, v14

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    aget v11, v10, v14

    int-to-long v12, v11

    cmp-long v11, v12, v2

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .local v8, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v11, v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v11, v11, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v11}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v9

    .local v9, "specifier":Ljava/lang/String;
    if-eqz v9, :cond_5

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_5
    iget-boolean v11, v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    if-eqz v11, :cond_4

    iget-object v11, v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v1

    .local v1, "apn":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[setDataSubId] activePhoneId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", subId ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    const-string v11, "DctController.onSettingsChange releasing request"

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v11, v11, v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    .local v7, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v4, v7, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .local v4, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->getLog()Landroid/util/LocalLog;

    move-result-object v11

    invoke-virtual {v4, v1, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->decApnRefCount(Ljava/lang/String;Landroid/util/LocalLog;)V

    iput-boolean v14, v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    goto :goto_2

    .end local v1    # "apn":Ljava/lang/String;
    .end local v4    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v7    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v8    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v9    # "specifier":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    :goto_3
    iget v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v5, v11, :cond_7

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v11, v11, v5

    check-cast v11, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->evalPendingRequest()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    goto/16 :goto_1
.end method

.method private onSubInfoReady()V
    .locals 4

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubInfoReady mPhoneNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getSubId()I

    move-result v1

    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubInfoReady handle pending requests subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->evalPendingRequest()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "subId":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    return-void
.end method

.method private releaseNetwork(Landroid/net/NetworkRequest;)I
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .local v0, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseNetwork request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, "DctController.releaseNetwork"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    const/4 v1, 0x1

    return v1
.end method

.method private requestNetwork(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;I)I
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "priority"    # I
    .param p3, "l"    # Landroid/util/LocalLog;
    .param p4, "phoneId"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNetwork request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dctc.requestNetwork, priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;-><init>(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;I)V

    .local v0, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    const/4 v1, 0x1

    return v1
.end method

.method private updatePhoneBaseForIndex(ILcom/android/internal/telephony/PhoneBase;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneBaseForIndex for phone index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    add-int/lit16 v2, p1, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    add-int/lit16 v2, p1, 0x258

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    add-int/lit16 v1, p1, 0x2bc

    invoke-virtual {p2, v0, v1, v3}, Lcom/android/internal/telephony/PhoneBase;->registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .local v7, "cm":Landroid/net/ConnectivityManager;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister TelephonyNetworkFactory for phone index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aget-object v0, v0, p1

    invoke-virtual {v7, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aput-object v3, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aput-object v3, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aput-object v3, v0, p1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "TelephonyNetworkFactory"

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v6, v1, p1

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkCapabilities;)V

    aput-object v0, v8, p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v0, v0, p1

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/net/NetworkFactory;->setScoreFilter(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v2, v2, p1

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aget-object v0, v0, p1

    const-string v1, "Telephony"

    invoke-virtual {v7, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const-string v2, "DctController.dispose"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-string v7, "DctController:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .local v0, "arr$":[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .local v1, "dssm":Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .end local v1    # "dssm":Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v7, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRequestInfos["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v7, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v7, "TelephonyNetworkFactories:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    .local v0, "arr$":[Landroid/net/NetworkFactory;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v6, v0, v4

    .local v6, "tnf":Landroid/net/NetworkFactory;
    invoke-virtual {v6, p1, p2, p3}, Landroid/net/NetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v6    # "tnf":Landroid/net/NetworkFactory;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v7, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method executeAllRequests(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeAllRequests, phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method executeRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 2
    .param p1, "request"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeRequest, request= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Un-handled message ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onProcessRequest()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_0

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteAllRequests(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_0

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseAllRequests(I)V

    goto :goto_0

    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onRetryAttach(I)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSettingsChanged()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSubInfoReady()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method processRequests()V
    .locals 1

    .prologue
    const-string v0, "processRequests"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method releaseAllRequests(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseAllRequests, phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    const/16 v0, 0x68

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method releaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 2
    .param p1, "request"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseRequest, request= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retryAttach(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retryAttach, phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    const/16 v0, 0x69

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    if-nez p1, :cond_1

    const-string v2, "updatePhoneObject phone = null"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    if-nez v1, :cond_2

    const-string v2, "updatePhoneObject phoneBase = null"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->updatePhoneBaseForIndex(ILcom/android/internal/telephony/PhoneBase;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
