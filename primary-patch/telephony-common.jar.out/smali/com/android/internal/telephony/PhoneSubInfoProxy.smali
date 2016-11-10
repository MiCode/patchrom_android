.class public Lcom/android/internal/telephony/PhoneSubInfoProxy;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "PhoneSubInfoProxy.java"


# instance fields
.field private mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 0
    .param p1, "phoneSubInfo"    # Lcom/android/internal/telephony/PhoneSubInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdForPhone(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceSvn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getImei(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimImpu()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimIst()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNai(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getNai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNaiForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 0
    .param p1, "phoneSubInfo"    # Lcom/android/internal/telephony/PhoneSubInfo;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-void
.end method
