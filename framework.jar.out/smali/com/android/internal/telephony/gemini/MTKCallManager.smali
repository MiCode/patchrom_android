.class public Lcom/android/internal/telephony/gemini/MTKCallManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/android/internal/telephony/gemini/MTKCallManager;


# instance fields
.field a:Lcom/android/internal/telephony/CallManager;

.field b:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKCallManager;->c:Lcom/android/internal/telephony/gemini/MTKCallManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/gemini/MTKCallManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKCallManager;->c:Lcom/android/internal/telephony/gemini/MTKCallManager;

    return-object v0
.end method


# virtual methods
.method public dialGemini(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    const-string v0, "MTKCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialGemini receives error simId. simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultPhoneGemini()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public registerForCallWaitingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForCdmaOtaStatusChangeGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForCrssSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCrssSuppServiceNotification2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForDisplayInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForEcmTimerResetGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForEcmTimerReset2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForInCallVoicePrivacyOffGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForInCallVoicePrivacyOnGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForIncomingRingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForMmiCompleteGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForMmiInitiateGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForNewRingingConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForPostDialCharacterGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForResendIncallMuteGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForRingbackToneGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForServiceStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForServiceStateChanged2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForSignalInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForSpeechInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSpeechInfo2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForSubscriptionInfoReadyGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSubscriptionInfoReady2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceNotification2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForUnknownConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForVtReplaceDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtReplaceDisconnect2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForVtRingInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtRingInfo2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForVtStatusInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtStatusInfo2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerPhoneGemini(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/Phone;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public unregisterForCallWaitingGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForCrssSuppServiceNotificationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCrssSuppServiceNotification2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForDisconnectGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForEcmTimerResetGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForEcmTimerReset2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForInCallVoicePrivacyOffGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForInCallVoicePrivacyOnGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForIncomingRingGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForMmiCompleteGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForMmiInitiateGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForPostDialCharacterGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForResendIncallMuteGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForRingbackToneGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForServiceStateChangedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForServiceStateChanged2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForSignalInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForSpeechInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSpeechInfo2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForSubscriptionInfoReadyGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSubscriptionInfoReady2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForSuppServiceFailedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForSuppServiceNotificationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceNotification2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForVtReplaceDisconnectGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtReplaceDisconnect2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForVtRingInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtRingInfo2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForVtStatusInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtStatusInfo2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterPhoneGemini(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter

    .prologue
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public vtDialGemini(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    const-string v0, "MTKCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vtDialGemini receives error simId. simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/telephony/CallManager;->vtDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method
