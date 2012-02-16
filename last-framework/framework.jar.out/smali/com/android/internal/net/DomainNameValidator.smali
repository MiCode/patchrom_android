.class public Lcom/android/internal/net/DomainNameValidator;
.super Ljava/lang/Object;
.source "DomainNameValidator.java"


# static fields
.field private static final ALT_DNS_NAME:I = 0x2

.field private static final ALT_IPA_NAME:I = 0x7

.field private static final DEBUG:Z = false

.field private static final LOG_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "DomainNameValidator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static domainTokenMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "thisDomainToken"
    .parameter "thatDomainToken"

    .prologue
    const/4 v3, 0x0

    .line 246
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 247
    const/16 v4, 0x2a

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 248
    .local v1, starIndex:I
    if-ltz v1, :cond_0

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 250
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, prefix:Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, suffix:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 258
    .end local v0           #prefix:Ljava/lang/String;
    .end local v1           #starIndex:I
    .end local v2           #suffix:Ljava/lang/String;
    :cond_0
    return v3
.end method

.method private static isIpAddress(Ljava/lang/String;)Z
    .locals 3
    .parameter "domain"

    .prologue
    .line 65
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 66
    .local v1, rval:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 69
    :try_start_0
    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 80
    :cond_0
    :goto_1
    return v1

    .line 65
    .end local v1           #rval:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 71
    .restart local v1       #rval:Z
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static match(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 1
    .parameter "certificate"
    .parameter "thisDomain"

    .prologue
    .line 49
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    .line 53
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/android/internal/net/DomainNameValidator;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    invoke-static {p0, p1}, Lcom/android/internal/net/DomainNameValidator;->matchDns(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 57
    :cond_2
    invoke-static {p0, p1}, Lcom/android/internal/net/DomainNameValidator;->matchIpAddress(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static matchDns(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "thisDomain"
    .parameter "thatDomain"

    .prologue
    const/4 v6, 0x0

    .line 192
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v1, v6

    .line 235
    :cond_1
    :goto_0
    return v1

    .line 197
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 201
    .local v1, rval:Z
    if-nez v1, :cond_1

    .line 202
    const-string v7, "\\."

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, thisDomainTokens:[Ljava/lang/String;
    const-string v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, thatDomainTokens:[Ljava/lang/String;
    array-length v5, v4

    .line 206
    .local v5, thisDomainTokensNum:I
    array-length v3, v2

    .line 209
    .local v3, thatDomainTokensNum:I
    if-lt v5, v3, :cond_5

    .line 210
    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 211
    aget-object v7, v4, v0

    aget-object v8, v2, v0

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 212
    if-nez v1, :cond_4

    .line 215
    if-nez v0, :cond_3

    if-ne v5, v3, :cond_3

    const/4 v1, 0x1

    .line 216
    :goto_2
    if-eqz v1, :cond_1

    .line 217
    aget-object v7, v2, v6

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 218
    if-nez v1, :cond_1

    .line 221
    aget-object v7, v4, v6

    aget-object v6, v2, v6

    invoke-static {v7, v6}, Lcom/android/internal/net/DomainNameValidator;->domainTokenMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v6

    .line 215
    goto :goto_2

    .line 210
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 231
    .end local v0           #i:I
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private static matchDns(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 14
    .parameter "certificate"
    .parameter "thisDomain"

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 130
    const/4 v7, 0x0

    .line 132
    .local v7, hasDns:Z
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v9

    .line 133
    .local v9, subjectAltNames:Ljava/util/Collection;
    if-eqz v9, :cond_2

    .line 134
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 135
    .local v8, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 136
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    move-object v0, v10

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 137
    .local v2, altNameEntry:Ljava/util/List;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-gt v13, v10, :cond_0

    .line 138
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    move-object v0, v10

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 139
    .local v3, altNameType:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v13, :cond_0

    .line 141
    const/4 v7, 0x1

    .line 142
    const/4 v10, 0x1

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 143
    .local v1, altName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 144
    invoke-static {p1, v1}, Lcom/android/internal/net/DomainNameValidator;->matchDns(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    move v10, v11

    .line 176
    .end local v1           #altName:Ljava/lang/String;
    .end local v2           #altNameEntry:Ljava/util/List;
    .end local v3           #altNameType:Ljava/lang/Integer;
    .end local v8           #i:Ljava/util/Iterator;
    .end local v9           #subjectAltNames:Ljava/util/Collection;
    :goto_0
    return v10

    .line 153
    :catch_0
    move-exception v5

    .line 154
    .local v5, e:Ljava/security/cert/CertificateParsingException;
    invoke-virtual {v5}, Ljava/security/cert/CertificateParsingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, errorMessage:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 156
    const-string v6, "failed to parse certificate"

    .line 159
    :cond_1
    const-string v10, "DomainNameValidator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DomainNameValidator.matchDns(): "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v12

    .line 160
    goto :goto_0

    .line 163
    .end local v5           #e:Ljava/security/cert/CertificateParsingException;
    .end local v6           #errorMessage:Ljava/lang/String;
    .restart local v9       #subjectAltNames:Ljava/util/Collection;
    :cond_2
    if-nez v7, :cond_3

    .line 164
    new-instance v10, Lcom/android/internal/net/DNParser;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/net/DNParser;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string v11, "cn"

    invoke-virtual {v10, v11}, Lcom/android/internal/net/DNParser;->find(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, cn:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 172
    invoke-static {p1, v4}, Lcom/android/internal/net/DomainNameValidator;->matchDns(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto :goto_0

    .end local v4           #cn:Ljava/lang/String;
    :cond_3
    move v10, v12

    .line 176
    goto :goto_0
.end method

.method private static matchIpAddress(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 10
    .parameter "certificate"
    .parameter "thisDomain"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 95
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v5

    .line 96
    .local v5, subjectAltNames:Ljava/util/Collection;
    if-eqz v5, :cond_1

    .line 97
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 98
    .local v4, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 99
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v0, v6

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 100
    .local v2, altNameEntry:Ljava/util/List;
    if-eqz v2, :cond_0

    const/4 v6, 0x2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-gt v6, v9, :cond_0

    .line 101
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    move-object v0, v6

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 102
    .local v3, altNameType:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v9, 0x7

    if-ne v6, v9, :cond_0

    .line 104
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 105
    .local v1, altName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    .line 120
    .end local v1           #altName:Ljava/lang/String;
    .end local v2           #altNameEntry:Ljava/util/List;
    .end local v3           #altNameType:Ljava/lang/Integer;
    .end local v4           #i:Ljava/util/Iterator;
    .end local v5           #subjectAltNames:Ljava/util/Collection;
    :goto_0
    return v6

    .line 118
    :catch_0
    move-exception v6

    :cond_1
    move v6, v8

    .line 120
    goto :goto_0
.end method
