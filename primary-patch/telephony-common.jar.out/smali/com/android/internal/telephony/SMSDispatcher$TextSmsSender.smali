.class public final Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
.super Lcom/android/internal/telephony/SMSDispatcher$SmsSender;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "TextSmsSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method


# virtual methods
.method protected onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V
    .locals 10
    .param p1, "carrierMessagingService"    # Landroid/service/carrier/ICarrierMessagingService;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v7, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "text"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v2

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    # invokes: Lcom/android/internal/telephony/SMSDispatcher;->getSendSmsFlag(Landroid/app/PendingIntent;)I
    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher;->access$000(Landroid/app/PendingIntent;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/service/carrier/ICarrierMessagingService;->sendTextSms(Ljava/lang/String;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception sending the SMS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    invoke-virtual {v0, v9, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->onSendSmsComplete(II)V

    goto :goto_0

    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    invoke-virtual {v0, v9, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->onSendSmsComplete(II)V

    goto :goto_0
.end method
