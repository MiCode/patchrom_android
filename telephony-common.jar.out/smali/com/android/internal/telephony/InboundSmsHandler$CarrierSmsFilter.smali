.class final Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
.super Landroid/telephony/CarrierMessagingServiceManager;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarrierSmsFilter"
.end annotation


# instance fields
.field private final mDestPort:I

.field private final mPdus:[[B

.field private final mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

.field private volatile mSmsFilterCallback:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

.field private final mSmsFormat:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    .locals 0
    .param p2, "pdus"    # [[B
    .param p3, "destPort"    # I
    .param p4, "smsFormat"    # Ljava/lang/String;
    .param p5, "smsBroadcastReceiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Landroid/telephony/CarrierMessagingServiceManager;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mPdus:[[B

    iput p3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mDestPort:I

    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsFormat:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)[[B
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mPdus:[[B

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mDestPort:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method filterSms(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;)V
    .locals 2
    .param p1, "carrierPackageName"    # Ljava/lang/String;
    .param p2, "smsFilterCallback"    # Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    .prologue
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsFilterCallback:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->bindToCarrierMessagingService(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "bindService() for carrier messaging service failed"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->onFilterComplete(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "bindService() for carrier messaging service succeeded"

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$900(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V
    .locals 7
    .param p1, "carrierMessagingService"    # Landroid/service/carrier/ICarrierMessagingService;

    .prologue
    :try_start_0
    new-instance v1, Landroid/service/carrier/MessagePdu;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mPdus:[[B

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/service/carrier/MessagePdu;-><init>(Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsFormat:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mDestPort:I

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsFilterCallback:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/service/carrier/ICarrierMessagingService;->filterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception filtering the SMS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsFilterCallback:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->onFilterComplete(Z)V

    goto :goto_0
.end method
