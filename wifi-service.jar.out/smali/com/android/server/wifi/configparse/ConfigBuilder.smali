.class public Lcom/android/server/wifi/configparse/ConfigBuilder;
.super Ljava/lang/Object;
.source "ConfigBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/configparse/ConfigBuilder$1;
    }
.end annotation


# static fields
.field private static final CATag:Ljava/lang/String; = "application/x-x509-ca-cert"

.field private static final KeyTag:Ljava/lang/String; = "application/x-pkcs12"

.field private static final ProfileTag:Ljava/lang/String; = "application/x-passpoint-profile"

.field private static final TAG:Ljava/lang/String; = "WCFG"

.field public static final WifiConfigType:Ljava/lang/String; = "application/x-wifi-config"

.field private static final X509:Ljava/lang/String; = "X.509"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildBaseConfiguration(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .param p0, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v1

    .local v1, "eapMethodID":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getRoamingConsortiums()Ljava/util/HashSet;

    move-result-object v5

    .local v5, "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v8

    new-array v8, v8, [J

    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .local v6, "id":J
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    aput-wide v6, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v6    # "id":J
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFriendlyName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .local v2, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-static {v1}, Lcom/android/server/wifi/configparse/ConfigBuilder;->remapEAPMethod(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    return-object v0
.end method

.method private static buildConfig(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/PrivateKey;Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "caCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "key"    # Ljava/security/PrivateKey;
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/PrivateKey;",
            "Landroid/content/Context;",
            ")",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .local p2, "clientChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v4

    .local v4, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v1

    .local v1, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v2

    .local v2, "eapMethodID":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    sget-object v5, Lcom/android/server/wifi/configparse/ConfigBuilder$1;->$SwitchMap$com$android$server$wifi$anqp$eap$EAP$EAPMethodID:[I

    invoke-virtual {v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported EAP Method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const-string v5, "WCFG"

    const-string v6, "Client cert and/or key included with EAP-TTLS profile"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v4}, Lcom/android/server/wifi/configparse/ConfigBuilder;->buildTTLSConfig(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .local v3, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "anonymous@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    return-object v0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :pswitch_1
    invoke-static {v4, p2, p3}, Lcom/android/server/wifi/configparse/ConfigBuilder;->buildTLSConfig(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Ljava/util/List;Ljava/security/PrivateKey;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_2
    if-nez p3, :cond_2

    if-nez p2, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    const-string v5, "WCFG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client/CA cert and/or key included with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " profile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v4, p4}, Lcom/android/server/wifi/configparse/ConfigBuilder;->buildSIMConfig(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static buildConfig(Ljava/lang/String;[BLandroid/content/Context;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .param p0, "uriString"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v5, "WCFG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_0

    array-length v4, p1

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v4, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .local v0, "b64":[B
    const-string v4, "WCFG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decoded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/server/wifi/configparse/ConfigBuilder;->dropFile(Landroid/net/Uri;Landroid/content/Context;)V

    new-instance v2, Lcom/android/server/wifi/configparse/MIMEContainer;

    new-instance v4, Ljava/io/LineNumberReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v2, v4, v9}, Lcom/android/server/wifi/configparse/MIMEContainer;-><init>(Ljava/io/LineNumberReader;Ljava/lang/String;)V

    .local v2, "mimeContainer":Lcom/android/server/wifi/configparse/MIMEContainer;
    invoke-virtual {v2}, Lcom/android/server/wifi/configparse/MIMEContainer;->isBase64()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encoding for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/wifi/configparse/MIMEContainer;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not base64"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v0    # "b64":[B
    .end local v2    # "mimeContainer":Lcom/android/server/wifi/configparse/MIMEContainer;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0

    .restart local v0    # "b64":[B
    .restart local v2    # "mimeContainer":Lcom/android/server/wifi/configparse/MIMEContainer;
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wifi/configparse/MIMEContainer;->getContentType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/x-wifi-config"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/server/wifi/configparse/MIMEContainer;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .local v3, "wrappedContent":[B
    const-string v4, "WCFG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Building container from \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/wifi/configparse/MIMEContainer;

    new-instance v4, Ljava/io/LineNumberReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v4, v9}, Lcom/android/server/wifi/configparse/MIMEContainer;-><init>(Ljava/io/LineNumberReader;Ljava/lang/String;)V

    .end local v3    # "wrappedContent":[B
    .local v1, "inner":Lcom/android/server/wifi/configparse/MIMEContainer;
    :goto_1
    invoke-static {v1, p2}, Lcom/android/server/wifi/configparse/ConfigBuilder;->parse(Lcom/android/server/wifi/configparse/MIMEContainer;Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    return-object v4

    .end local v1    # "inner":Lcom/android/server/wifi/configparse/MIMEContainer;
    :cond_2
    move-object v1, v2

    .restart local v1    # "inner":Lcom/android/server/wifi/configparse/MIMEContainer;
    goto :goto_1
.end method

.method private static buildSIMConfig(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p0, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v2

    .local v2, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getImsi()Lcom/android/server/wifi/IMSIParameter;

    move-result-object v1

    .local v1, "credImsi":Lcom/android/server/wifi/IMSIParameter;
    invoke-static {p0}, Lcom/android/server/wifi/configparse/ConfigBuilder;->buildBaseConfiguration(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Lcom/android/server/wifi/IMSIParameter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPlmn(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildTLSConfig(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Ljava/util/List;Ljava/security/PrivateKey;)Landroid/net/wifi/WifiConfiguration;
    .locals 13
    .param p0, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .param p2, "clientKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/PrivateKey;",
            ")",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .local p1, "clientChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v4

    .local v4, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    const/4 v2, 0x0

    .local v2, "clientCertificate":Ljava/security/cert/X509Certificate;
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v10, Ljava/io/IOException;

    const-string v11, "No key and/or cert passed for EAP-TLS"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getCertType()Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    move-result-object v10

    sget-object v11, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->x509v3:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    if-eq v10, v11, :cond_2

    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid certificate type for TLS: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getCertType()Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getFingerPrint()[B

    move-result-object v9

    .local v9, "reference":[B
    const-string v10, "SHA-256"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .local v5, "digester":Ljava/security/MessageDigest;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .local v1, "certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .local v7, "fingerprint":[B
    invoke-static {v9, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v2, v1

    .end local v1    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v7    # "fingerprint":[B
    :cond_4
    if-nez v2, :cond_5

    new-instance v10, Ljava/io/IOException;

    const-string v11, "No certificate in chain matches supplied fingerprint"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_5
    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .local v0, "alias":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/wifi/configparse/ConfigBuilder;->buildBaseConfiguration(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .local v6, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    invoke-virtual {v6, p2, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientKeyEntry(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V

    return-object v3
.end method

.method private static buildTTLSConfig(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;
    .locals 9
    .param p0, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v2

    .local v2, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getUserName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getPassword()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    new-instance v6, Ljava/io/IOException;

    const-string v7, "EAP-TTLS provisioned without user name or password"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    move-result-object v3

    .local v3, "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    invoke-virtual {v3}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getAuthParam()Lcom/android/server/wifi/anqp/eap/AuthParam;

    move-result-object v0

    .local v0, "authParam":Lcom/android/server/wifi/anqp/eap/AuthParam;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/wifi/anqp/eap/AuthParam;->getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    move-result-object v6

    sget-object v7, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->NonEAPInnerAuthType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    if-eq v6, v7, :cond_3

    :cond_2
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad auth parameter for EAP-TTLS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    invoke-static {p0}, Lcom/android/server/wifi/configparse/ConfigBuilder;->buildBaseConfiguration(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    move-object v5, v0

    check-cast v5, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    .local v5, "ttlsParam":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .local v4, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v5}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->getType()Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/configparse/ConfigBuilder;->remapInnerMethod(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    return-object v1
.end method

.method private static dropFile(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static parse(Lcom/android/server/wifi/configparse/MIMEContainer;Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;
    .locals 23
    .param p0, "root"    # Lcom/android/server/wifi/configparse/MIMEContainer;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/configparse/MIMEContainer;->getMimeContainers()Ljava/util/List;

    move-result-object v20

    if-nez v20, :cond_0

    new-instance v20, Ljava/io/IOException;

    const-string v21, "Malformed MIME content: not multipart"

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_0
    const/16 v17, 0x0

    .local v17, "moText":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "caCert":Ljava/security/cert/X509Certificate;
    const/4 v10, 0x0

    .local v10, "clientKey":Ljava/security/PrivateKey;
    const/4 v9, 0x0

    .local v9, "clientChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/configparse/MIMEContainer;->getMimeContainers()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wifi/configparse/MIMEContainer;

    .local v19, "subContainer":Lcom/android/server/wifi/configparse/MIMEContainer;
    const-string v20, "WCFG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " + Content Type: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/configparse/MIMEContainer;->getContentType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/configparse/MIMEContainer;->getContentType()Ljava/lang/String;

    move-result-object v21

    const/16 v20, -0x1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->hashCode()I

    move-result v22

    sparse-switch v22, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v20, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/configparse/MIMEContainer;->isBase64()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/configparse/MIMEContainer;->getText()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v18

    .local v18, "octets":[B
    new-instance v17, Ljava/lang/String;

    .end local v17    # "moText":Ljava/lang/String;
    sget-object v20, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .end local v18    # "octets":[B
    .restart local v17    # "moText":Ljava/lang/String;
    :goto_2
    const-string v20, "WCFG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "OMA: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    const-string v22, "application/x-passpoint-profile"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x0

    goto :goto_1

    :sswitch_1
    const-string v22, "application/x-x509-ca-cert"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x1

    goto :goto_1

    :sswitch_2
    const-string v22, "application/x-pkcs12"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v20, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/configparse/MIMEContainer;->getText()Ljava/lang/String;

    move-result-object v17

    goto :goto_2

    :pswitch_1
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/configparse/MIMEContainer;->isBase64()Z

    move-result v20

    if-nez v20, :cond_3

    new-instance v20, Ljava/io/IOException;

    const-string v21, "Can\'t read non base64 encoded cert"

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/configparse/MIMEContainer;->getText()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v18

    .restart local v18    # "octets":[B
    const-string v20, "X.509"

    invoke-static/range {v20 .. v20}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v11

    .local v11, "factory":Ljava/security/cert/CertificateFactory;
    new-instance v20, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    .end local v6    # "caCert":Ljava/security/cert/X509Certificate;
    check-cast v6, Ljava/security/cert/X509Certificate;

    .restart local v6    # "caCert":Ljava/security/cert/X509Certificate;
    const-string v20, "WCFG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cert subject "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v20, "WCFG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Full Cert: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v11    # "factory":Ljava/security/cert/CertificateFactory;
    .end local v18    # "octets":[B
    :pswitch_2
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/configparse/MIMEContainer;->isBase64()Z

    move-result v20

    if-nez v20, :cond_4

    new-instance v20, Ljava/io/IOException;

    const-string v21, "Can\'t read non base64 encoded key"

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_4
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/configparse/MIMEContainer;->getText()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v18

    .restart local v18    # "octets":[B
    const-string v20, "PKCS12"

    invoke-static/range {v20 .. v20}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v15

    .local v15, "ks":Ljava/security/KeyStore;
    new-instance v14, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v14, "in":Ljava/io/ByteArrayInputStream;
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v14, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v14}, Ljava/io/ByteArrayInputStream;->close()V

    const-string v20, "WCFG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "---- Start PKCS12 info "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", size "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v15}, Ljava/security/KeyStore;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "alias":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v15, v3, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v10

    .end local v10    # "clientKey":Ljava/security/PrivateKey;
    check-cast v10, Ljava/security/PrivateKey;

    .restart local v10    # "clientKey":Ljava/security/PrivateKey;
    const-string v20, "WCFG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Key: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v10}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15, v3}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v8

    .local v8, "chain":[Ljava/security/cert/Certificate;
    if-eqz v8, :cond_5

    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "clientChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .restart local v9    # "clientChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object v5, v8

    .local v5, "arr$":[Ljava/security/cert/Certificate;
    array-length v0, v5

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_4
    move/from16 v0, v16

    if-ge v13, v0, :cond_7

    aget-object v7, v5, v13

    .local v7, "certificate":Ljava/security/cert/Certificate;
    instance-of v0, v7, Ljava/security/cert/X509Certificate;

    move/from16 v20, v0

    if-nez v20, :cond_6

    const-string v20, "WCFG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Element in cert chain is not an X509Certificate: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    check-cast v7, Ljava/security/cert/X509Certificate;

    .end local v7    # "certificate":Ljava/security/cert/Certificate;
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_7
    const-string v20, "WCFG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Chain: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v3    # "alias":Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/security/cert/Certificate;
    .end local v8    # "chain":[Ljava/security/cert/Certificate;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    :cond_8
    const-string v20, "WCFG"

    const-string v21, "---- End PKCS12 info."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v14    # "in":Ljava/io/ByteArrayInputStream;
    .end local v15    # "ks":Ljava/security/KeyStore;
    .end local v18    # "octets":[B
    .end local v19    # "subContainer":Lcom/android/server/wifi/configparse/MIMEContainer;
    :cond_9
    if-nez v17, :cond_a

    new-instance v20, Ljava/io/IOException;

    const-string v21, "Missing profile"

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_a
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v6, v9, v10, v1}, Lcom/android/server/wifi/configparse/ConfigBuilder;->buildConfig(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/PrivateKey;Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    return-object v20

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76852540 -> :sswitch_1
        -0x45e72359 -> :sswitch_0
        0x5dcc17e0 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static remapEAPMethod(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)I
    .locals 3
    .param p0, "eapMethodID"    # Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/server/wifi/configparse/ConfigBuilder$1;->$SwitchMap$com$android$server$wifi$anqp$eap$EAP$EAPMethodID:[I

    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad EAP method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private static remapInnerMethod(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)I
    .locals 3
    .param p0, "type"    # Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/server/wifi/configparse/ConfigBuilder$1;->$SwitchMap$com$android$server$wifi$anqp$eap$NonEAPInnerAuth$NonEAPType:[I

    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inner method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
