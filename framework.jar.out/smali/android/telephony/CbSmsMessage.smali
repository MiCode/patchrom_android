.class public Landroid/telephony/CbSmsMessage;
.super Ljava/lang/Object;
.source "CbSmsMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMS"


# instance fields
.field public mWrappedMessage:Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .local v0, activePhone:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v1, "SMS"

    const-string v2, "We didn\'t support CB for CDMA phone"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;-><init>()V

    iput-object v1, p0, Landroid/telephony/CbSmsMessage;->mWrappedMessage:Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;

    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;)V
    .locals 0
    .parameter "cbSms"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/CbSmsMessage;->mWrappedMessage:Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;

    return-void
.end method

.method public static createFromPdu([B)Landroid/telephony/CbSmsMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    const/4 v1, 0x0

    .local v1, wrappedMessage:Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    const-string v2, "SMS"

    const-string v3, "We didn\'t support CB for CDMA phone"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v2, Landroid/telephony/CbSmsMessage;

    invoke-direct {v2, v1}, Landroid/telephony/CbSmsMessage;-><init>(Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;)V

    return-object v2

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;

    move-result-object v1

    goto :goto_0
.end method

.method public static isDuplicateMessage(IIIIIIII)Z
    .locals 1
    .parameter "oldSn"
    .parameter "oldMsgId"
    .parameter "oldLac"
    .parameter "oldCid"
    .parameter "newSn"
    .parameter "newMsgId"
    .parameter "newLac"
    .parameter "newCid"

    .prologue
    invoke-static/range {p0 .. p7}, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->isDuplicateMessage(IIIIIIII)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDisplayMode()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telephony/CbSmsMessage;->mWrappedMessage:Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->getDisplayMode()I

    move-result v0

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telephony/CbSmsMessage;->mWrappedMessage:Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageID()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telephony/CbSmsMessage;->mWrappedMessage:Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->getMessageID()I

    move-result v0

    return v0
.end method

.method public getMessageSimId()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telephony/CbSmsMessage;->mWrappedMessage:Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->getPdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telephony/CbSmsMessage;->mWrappedMessage:Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->getSerialNumber()I

    move-result v0

    return v0
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telephony/CbSmsMessage;->mWrappedMessage:Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telephony/CbSmsMessage;->mWrappedMessage:Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
