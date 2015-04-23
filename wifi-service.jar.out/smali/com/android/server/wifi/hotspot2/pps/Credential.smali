.class public Lcom/android/server/wifi/hotspot2/pps/Credential;
.super Ljava/lang/Object;
.source "Credential.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;
    }
.end annotation


# static fields
.field public static final CertTypeIEEE:Ljava/lang/String; = "802.1ar"

.field public static final CertTypeX509:Ljava/lang/String; = "x509v3"


# instance fields
.field private final mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

.field private final mCheckAAACert:Z

.field private final mCtime:J

.field private final mDisregardPassword:Z

.field private final mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

.field private final mExpTime:J

.field private final mFingerPrint:[B

.field private final mImsi:Lcom/android/server/wifi/IMSIParameter;

.field private final mMachineManaged:Z

.field private final mPassword:Ljava/lang/String;

.field private final mRealm:Ljava/lang/String;

.field private final mSTokenApp:Ljava/lang/String;

.field private final mShare:Z

.field private final mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Lcom/android/server/wifi/IMSIParameter;)V
    .locals 3
    .param p1, "ctime"    # J
    .param p3, "expTime"    # J
    .param p5, "realm"    # Ljava/lang/String;
    .param p6, "checkAAACert"    # Z
    .param p7, "eapMethod"    # Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .param p8, "imsi"    # Lcom/android/server/wifi/IMSIParameter;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    iput-wide p3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    iput-object p7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    iput-object p8, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;[B)V
    .locals 3
    .param p1, "ctime"    # J
    .param p3, "expTime"    # J
    .param p5, "realm"    # Ljava/lang/String;
    .param p6, "checkAAACert"    # Z
    .param p7, "eapMethod"    # Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .param p8, "certType"    # Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;
    .param p9, "fingerPrint"    # [B

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    iput-wide p3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    iput-object p7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    iput-object p8, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    iput-object p9, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 3
    .param p1, "ctime"    # J
    .param p3, "expTime"    # J
    .param p5, "realm"    # Ljava/lang/String;
    .param p6, "checkAAACert"    # Z
    .param p7, "eapMethod"    # Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .param p8, "userName"    # Ljava/lang/String;
    .param p9, "password"    # Ljava/lang/String;
    .param p10, "machineManaged"    # Z
    .param p11, "stApp"    # Ljava/lang/String;
    .param p12, "share"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    iput-wide p3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    iput-object p7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    iput-object p8, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p9, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .local v0, "pwOctets":[B
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    .end local v0    # "pwOctets":[B
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    iput-boolean p10, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    iput-object p11, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    iput-boolean p12, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/security/KeyStore;Z)V
    .locals 12
    .param p1, "enterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v10, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    iput-wide v10, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getRealm()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    iput-boolean v9, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v7

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v10

    invoke-static {v7, v10}, Lcom/android/server/wifi/hotspot2/pps/Credential;->mapEapMethod(II)Lcom/android/server/wifi/anqp/eap/EAPMethod;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    invoke-virtual {v7}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v7

    sget-object v10, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    if-ne v7, v10, :cond_1

    sget-object v7, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->x509v3:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    :goto_0
    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v7

    if-eqz v7, :cond_2

    :try_start_0
    const-string v7, "SHA-256"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .local v1, "digester":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1    # "digester":Ljava/security/MessageDigest;
    .local v2, "fingerPrint":[B
    :goto_1
    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPlmn()Ljava/lang/String;

    move-result-object v5

    .local v5, "imsi":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    :cond_0
    move-object v7, v8

    :goto_2
    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    if-eqz p3, :cond_6

    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x2

    if-ge v7, v10, :cond_6

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    iput-boolean v9, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    iput-object v8, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    iput-boolean v9, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    return-void

    .end local v2    # "fingerPrint":[B
    .end local v5    # "imsi":Ljava/lang/String;
    :cond_1
    move-object v7, v8

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "gse":Ljava/security/GeneralSecurityException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to generate certificate fingerprint: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .restart local v2    # "fingerPrint":[B
    goto :goto_1

    .end local v2    # "fingerPrint":[B
    .end local v3    # "gse":Ljava/security/GeneralSecurityException;
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .local v0, "alias":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USRCERT_"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v6

    .local v6, "octets":[B
    if-eqz v6, :cond_3

    :try_start_1
    const-string v7, "SHA-256"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .restart local v1    # "digester":Ljava/security/MessageDigest;
    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .restart local v2    # "fingerPrint":[B
    goto/16 :goto_1

    .end local v1    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "fingerPrint":[B
    :catch_1
    move-exception v3

    .restart local v3    # "gse":Ljava/security/GeneralSecurityException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to construct digest: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .restart local v2    # "fingerPrint":[B
    goto/16 :goto_1

    .end local v2    # "fingerPrint":[B
    .end local v3    # "gse":Ljava/security/GeneralSecurityException;
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v7, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .restart local v2    # "fingerPrint":[B
    goto/16 :goto_1

    .end local v2    # "fingerPrint":[B
    :catch_2
    move-exception v4

    .local v4, "ie":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "Bad base 64 alias"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .restart local v2    # "fingerPrint":[B
    goto/16 :goto_1

    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "fingerPrint":[B
    .end local v4    # "ie":Ljava/lang/IllegalArgumentException;
    .end local v6    # "octets":[B
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "fingerPrint":[B
    goto/16 :goto_1

    .restart local v5    # "imsi":Ljava/lang/String;
    :cond_5
    new-instance v7, Lcom/android/server/wifi/IMSIParameter;

    invoke-direct {v7, v5}, Lcom/android/server/wifi/IMSIParameter;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    move v7, v9

    goto/16 :goto_3
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/pps/Credential;Ljava/lang/String;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/wifi/hotspot2/pps/Credential;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    return-void
.end method

.method public static mapCertType(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;
    .locals 3
    .param p0, "certType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    const-string v0, "x509v3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->x509v3:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "802.1ar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->IEEE:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid cert type: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static mapEapMethod(II)Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .locals 5
    .param p0, "eapMethod"    # I
    .param p1, "phase2Method"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    if-ltz p0, :cond_0

    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v2, v2

    if-ge p0, v2, :cond_0

    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    aget-object v1, v2, p0

    .local v1, "methodName":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EAP method id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid for Passpoint"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1    # "methodName":Ljava/lang/String;
    :pswitch_1
    new-instance v2, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    sget-object v3, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    :goto_1
    return-object v2

    :pswitch_2
    packed-switch p1, :pswitch_data_1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TTLS phase2 method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not valid for Passpoint"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_3
    new-instance v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->PAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    invoke-direct {v0, v2}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;-><init>(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)V

    .local v0, "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    :goto_2
    new-instance v2, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    sget-object v3, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-direct {v2, v3, v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    goto :goto_1

    .end local v0    # "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    :pswitch_4
    new-instance v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    invoke-direct {v0, v2}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;-><init>(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)V

    .restart local v0    # "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    goto :goto_2

    .end local v0    # "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    :pswitch_5
    new-instance v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAPv2:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    invoke-direct {v0, v2}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;-><init>(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)V

    .restart local v0    # "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    goto :goto_2

    .end local v0    # "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    :pswitch_6
    new-instance v2, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    sget-object v3, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    goto :goto_1

    :pswitch_7
    new-instance v2, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    sget-object v3, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    goto :goto_1

    :pswitch_8
    new-instance v2, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    sget-object v3, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    goto :goto_1

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "methodName":Ljava/lang/String;
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "s1"    # Ljava/lang/Object;
    .param p1, "s2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/Credential;

    .local v0, "that":Lcom/android/server/wifi/hotspot2/pps/Credential;
    iget-boolean v3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    iget-boolean v4, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    iget-wide v6, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    iget-wide v6, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    iget-boolean v3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    iget-boolean v4, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    :cond_7
    iget-boolean v3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    iget-boolean v4, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    iget-object v4, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    if-eq v3, v4, :cond_9

    move v1, v2

    goto :goto_0

    :cond_9
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    iget-object v4, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    goto :goto_0

    :cond_a
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    iget-object v4, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    iget-object v4, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    invoke-static {v3, v4}, Lcom/android/server/wifi/hotspot2/pps/Credential;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    goto :goto_0

    :cond_c
    iget-boolean v3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/wifi/hotspot2/pps/Credential;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    goto :goto_0

    :cond_d
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    move v1, v2

    goto/16 :goto_0

    :cond_e
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/wifi/hotspot2/pps/Credential;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move v1, v2

    goto/16 :goto_0

    :cond_f
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/wifi/hotspot2/pps/Credential;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto/16 :goto_0
.end method

.method public getCertType()Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    return-object v0
.end method

.method public getCtime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    return-wide v0
.end method

.method public getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    return-object v0
.end method

.method public getExpTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    return-wide v0
.end method

.method public getFingerPrint()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    return-object v0
.end method

.method public getImsi()Lcom/android/server/wifi/IMSIParameter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public hasDisregardPassword()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    return v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v1, v4

    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v4, v1

    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v4, v1

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    add-int v0, v4, v1

    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int v0, v4, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    if-eqz v4, :cond_6

    :goto_5
    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    invoke-virtual {v2}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->hashCode()I

    move-result v1

    :goto_6
    add-int v0, v2, v1

    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_7
    add-int v0, v2, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    invoke-virtual {v2}, Lcom/android/server/wifi/IMSIParameter;->hashCode()I

    move-result v3

    :cond_0
    add-int v0, v1, v3

    return v0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    move v2, v3

    goto :goto_5

    :cond_7
    move v1, v3

    goto :goto_6

    :cond_8
    move v1, v3

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Credential{mCtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/Utils;->toUTCString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/Utils;->toUTCString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRealm=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCheckAAACert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisregardPassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMachineManaged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSTokenApp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEAPMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCertType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFingerPrint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImsi=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
