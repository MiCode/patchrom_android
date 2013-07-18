.class public final Landroid/telephony/gemini/GeminiSmsMessage;
.super Landroid/telephony/SmsMessage;
.source "GeminiSmsMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMS"


# instance fields
.field private simId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telephony/gemini/GeminiSmsMessage;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "simId"

    .prologue
    invoke-direct {p0}, Landroid/telephony/SmsMessage;-><init>()V

    iput p1, p0, Landroid/telephony/gemini/GeminiSmsMessage;->simId:I

    return-void
.end method

.method public constructor <init>(Landroid/telephony/SmsMessage;I)V
    .locals 1
    .parameter "sms"
    .parameter "simId"

    .prologue
    invoke-direct {p0}, Landroid/telephony/SmsMessage;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iput-object v0, p0, Landroid/telephony/gemini/GeminiSmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    :goto_0
    iput p2, p0, Landroid/telephony/gemini/GeminiSmsMessage;->simId:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/gemini/GeminiSmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    goto :goto_0
.end method

.method public static createFromEfRecord(I[BI)Landroid/telephony/gemini/GeminiSmsMessage;
    .locals 3
    .parameter "index"
    .parameter "data"
    .parameter "simId"

    .prologue
    invoke-static {p2}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsFormat(I)Ljava/lang/String;

    move-result-object v0

    .local v0, format:Ljava/lang/String;
    invoke-static {p0, p1, v0}, Landroid/telephony/gemini/GeminiSmsMessage;->createFromEfRecord(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    .local v1, sms:Landroid/telephony/SmsMessage;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/telephony/gemini/GeminiSmsMessage;

    invoke-direct {v2, v1, p2}, Landroid/telephony/gemini/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    goto :goto_0
.end method

.method public static createFromPdu([BI)Landroid/telephony/gemini/GeminiSmsMessage;
    .locals 5
    .parameter "pdu"
    .parameter "simId"

    .prologue
    invoke-static {p1}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsFormat(I)Ljava/lang/String;

    move-result-object v0

    .local v0, format:Ljava/lang/String;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create SmsMessage from pdu with format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Landroid/telephony/gemini/GeminiSmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    .local v1, sms:Landroid/telephony/SmsMessage;
    if-eqz v1, :cond_0

    new-instance v2, Landroid/telephony/gemini/GeminiSmsMessage;

    invoke-direct {v2, v1, p1}, Landroid/telephony/gemini/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "SMS"

    const-string v3, "fail to create SmsMessage from pdu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createFromPdu([BLjava/lang/String;I)Landroid/telephony/gemini/GeminiSmsMessage;
    .locals 2
    .parameter "pdu"
    .parameter "format"
    .parameter "simId"

    .prologue
    invoke-static {p0, p1}, Landroid/telephony/gemini/GeminiSmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .local v0, sms:Landroid/telephony/SmsMessage;
    new-instance v1, Landroid/telephony/gemini/GeminiSmsMessage;

    invoke-direct {v1, v0, p2}, Landroid/telephony/gemini/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    return-object v1
.end method

.method public static newFromCDS(Ljava/lang/String;I)Landroid/telephony/gemini/GeminiSmsMessage;
    .locals 2
    .parameter "line"
    .parameter "simId"

    .prologue
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsMessage;->newFromCDS(Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .local v0, sms:Landroid/telephony/SmsMessage;
    new-instance v1, Landroid/telephony/gemini/GeminiSmsMessage;

    invoke-direct {v1, v0, p1}, Landroid/telephony/gemini/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    return-object v1
.end method

.method public static newFromCMT([Ljava/lang/String;I)Landroid/telephony/gemini/GeminiSmsMessage;
    .locals 2
    .parameter "lines"
    .parameter "simId"

    .prologue
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .local v0, sms:Landroid/telephony/SmsMessage;
    new-instance v1, Landroid/telephony/gemini/GeminiSmsMessage;

    invoke-direct {v1, v0, p1}, Landroid/telephony/gemini/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    return-object v1
.end method

.method protected static newFromCMTI(Ljava/lang/String;I)Landroid/telephony/gemini/GeminiSmsMessage;
    .locals 2
    .parameter "line"
    .parameter "simId"

    .prologue
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsMessage;->newFromCMTI(Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .local v0, sms:Landroid/telephony/SmsMessage;
    new-instance v1, Landroid/telephony/gemini/GeminiSmsMessage;

    invoke-direct {v1, v0, p1}, Landroid/telephony/gemini/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    return-object v1
.end method

.method public static newFromParcel(Landroid/os/Parcel;I)Landroid/telephony/gemini/GeminiSmsMessage;
    .locals 2
    .parameter "p"
    .parameter "simId"

    .prologue
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsMessage;->newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .local v0, sms:Landroid/telephony/SmsMessage;
    new-instance v1, Landroid/telephony/gemini/GeminiSmsMessage;

    invoke-direct {v1, v0, p1}, Landroid/telephony/gemini/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    return-object v1
.end method


# virtual methods
.method public getMessageSimId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/gemini/GeminiSmsMessage;->simId:I

    return v0
.end method

.method public getSmsc()[B
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/telephony/SmsMessage;->getSmsc()[B

    move-result-object v0

    return-object v0
.end method

.method public getSmsc(Ljava/lang/String;)[B
    .locals 9
    .parameter "format"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call getSmsc with format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/telephony/gemini/GeminiSmsMessage;->getPdu()[B

    move-result-object v1

    .local v1, pdu:[B
    const-string v5, "3gpp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_0

    const-string v5, "SMS"

    const-string v6, "pdu is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    :goto_0
    return-object v2

    :cond_0
    aget-byte v5, v1, v8

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v3, v5, 0x1

    .local v3, smsc_len:I
    new-array v2, v3, [B

    .local v2, smsc:[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    array-length v7, v2

    invoke-static {v1, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v5, "SMS"

    const-string v6, "Out of boudns"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    goto :goto_0

    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2           #smsc:[B
    .end local v3           #smsc_len:I
    :cond_1
    const-string v5, "3gpp2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, v4

    goto :goto_0

    :cond_2
    invoke-super {p0}, Landroid/telephony/SmsMessage;->getSmsc()[B

    move-result-object v2

    goto :goto_0
.end method

.method public getTpdu()[B
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/telephony/SmsMessage;->getTpdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getTpdu(Ljava/lang/String;)[B
    .locals 10
    .parameter "format"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const-string v6, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call getTpdu with format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/telephony/gemini/GeminiSmsMessage;->getPdu()[B

    move-result-object v1

    .local v1, pdu:[B
    const-string v6, "3gpp"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v1, :cond_0

    const-string v6, "SMS"

    const-string v7, "pdu is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    :goto_0
    return-object v3

    :cond_0
    aget-byte v6, v1, v9

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v2, v6, 0x1

    .local v2, smsc_len:I
    array-length v6, v1

    sub-int v4, v6, v2

    .local v4, tpdu_len:I
    new-array v3, v4, [B

    .local v3, tpdu:[B
    const/4 v6, 0x0

    :try_start_0
    array-length v7, v3

    invoke-static {v1, v2, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "SMS"

    const-string v7, "Out of boudns"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    goto :goto_0

    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2           #smsc_len:I
    .end local v3           #tpdu:[B
    .end local v4           #tpdu_len:I
    :cond_1
    const-string v5, "3gpp2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v1

    goto :goto_0

    :cond_2
    invoke-super {p0}, Landroid/telephony/SmsMessage;->getTpdu()[B

    move-result-object v3

    goto :goto_0
.end method
