.class public Lcom/android/server/wifi/anqp/eap/Credential;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Lcom/android/server/wifi/anqp/eap/AuthParam;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/eap/Credential$CredType;
    }
.end annotation


# instance fields
.field private final mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field private final mCredType:Lcom/android/server/wifi/anqp/eap/Credential$CredType;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;ILjava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .param p2, "length"    # I
    .param p3, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/anqp/eap/Credential;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .local v0, "typeID":I
    invoke-static {}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->values()[Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->values()[Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    move-result-object v1

    aget-object v1, v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/server/wifi/anqp/eap/Credential;->mCredType:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    return-void

    :cond_1
    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Reserved:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "thatObject"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    .end local p1    # "thatObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "thatObject":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/server/wifi/anqp/eap/Credential;

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/android/server/wifi/anqp/eap/Credential;

    .end local p1    # "thatObject":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/server/wifi/anqp/eap/Credential;->getCredType()Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/Credential;->getCredType()Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    move-result-object v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/Credential;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    return-object v0
.end method

.method public getCredType()Lcom/android/server/wifi/anqp/eap/Credential$CredType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/Credential;->mCredType:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/Credential;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/Credential;->mCredType:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auth method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/Credential;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/Credential;->mCredType:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
