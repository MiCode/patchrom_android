.class public Lcom/android/internal/telephony/EtwsNotification;
.super Ljava/lang/Object;
.source "EtwsNotification.java"


# instance fields
.field public messageId:I

.field public plmnId:Ljava/lang/String;

.field public securityInfo:Ljava/lang/String;

.field public serialNumber:I

.field public warningType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEtwsPdu()[B
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x2

    const/16 v4, 0x38

    new-array v0, v4, [B

    .local v0, etwsPdu:[B
    iget v4, p0, Lcom/android/internal/telephony/EtwsNotification;->serialNumber:I

    invoke-static {v4}, Lcom/android/internal/telephony/EtwsUtils;->intToBytes(I)[B

    move-result-object v2

    .local v2, serialNumberBytes:[B
    invoke-static {v2, v5, v0, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lcom/android/internal/telephony/EtwsNotification;->messageId:I

    invoke-static {v4}, Lcom/android/internal/telephony/EtwsUtils;->intToBytes(I)[B

    move-result-object v1

    .local v1, messageIdBytes:[B
    invoke-static {v1, v5, v0, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lcom/android/internal/telephony/EtwsNotification;->warningType:I

    invoke-static {v4}, Lcom/android/internal/telephony/EtwsUtils;->intToBytes(I)[B

    move-result-object v3

    .local v3, warningTypeBytes:[B
    const/4 v4, 0x4

    invoke-static {v3, v5, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/internal/telephony/EtwsNotification;->securityInfo:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/EtwsNotification;->securityInfo:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x6

    const/16 v6, 0x32

    invoke-static {v4, v7, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public isDuplicatedEtws(Lcom/android/internal/telephony/EtwsNotification;)Z
    .locals 2
    .parameter "other"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/EtwsNotification;->warningType:I

    iget v1, p1, Lcom/android/internal/telephony/EtwsNotification;->warningType:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/EtwsNotification;->messageId:I

    iget v1, p1, Lcom/android/internal/telephony/EtwsNotification;->messageId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/EtwsNotification;->serialNumber:I

    iget v1, p1, Lcom/android/internal/telephony/EtwsNotification;->serialNumber:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/EtwsNotification;->plmnId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/EtwsNotification;->plmnId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EtwsNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/EtwsNotification;->warningType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/EtwsNotification;->messageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/EtwsNotification;->serialNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/EtwsNotification;->plmnId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/EtwsNotification;->securityInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
