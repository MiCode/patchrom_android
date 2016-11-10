.class public Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "AndroidKeyStoreSecretKeyFactorySpi.java"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

.method static getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Landroid/security/keystore/KeyInfo;
    .locals 38
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "entryAlias"    # Ljava/lang/String;
    .param p2, "keyAliasInKeystore"    # Ljava/lang/String;

    .prologue
    new-instance v26, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct/range {v26 .. v26}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v26, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v23

    .local v23, "errorCode":I
    const/4 v4, 0x1

    move/from16 v0, v23

    if-eq v0, v4, :cond_0

    new-instance v4, Ljava/security/ProviderException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed to obtain information about key. Keystore error: "

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    :try_start_0
    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v5, 0x100002be

    invoke-virtual {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v6, 0x1

    .local v6, "insideSecureHardware":Z
    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v5, 0x100002be

    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    move-result v7

    .local v7, "origin":I
    :goto_0
    const v4, 0x30000003

    const-wide/16 v36, -0x1

    move-object/from16 v0, v26

    move-wide/from16 v1, v36

    invoke-virtual {v0, v4, v1, v2}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v28

    .local v28, "keySizeUnsigned":J
    const-wide/16 v4, -0x1

    cmp-long v4, v28, v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/security/ProviderException;

    const-string v5, "Key size not available"

    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "insideSecureHardware":Z
    .end local v7    # "origin":I
    .end local v28    # "keySizeUnsigned":J
    :catch_0
    move-exception v20

    .local v20, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/security/ProviderException;

    const-string v5, "Unsupported key characteristic"

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .end local v20    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_1
    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v5, 0x100002be

    invoke-virtual {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v6, 0x0

    .restart local v6    # "insideSecureHardware":Z
    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v5, 0x100002be

    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    move-result v7

    .restart local v7    # "origin":I
    goto :goto_0

    .end local v6    # "insideSecureHardware":Z
    .end local v7    # "origin":I
    :cond_2
    new-instance v4, Ljava/security/ProviderException;

    const-string v5, "Key origin not available"

    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    .restart local v6    # "insideSecureHardware":Z
    .restart local v7    # "origin":I
    .restart local v28    # "keySizeUnsigned":J
    :cond_3
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v28, v4

    if-lez v4, :cond_4

    new-instance v4, Ljava/security/ProviderException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Key too large: "

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v18, " bits"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    move-wide/from16 v0, v28

    long-to-int v8, v0

    .local v8, "keySize":I
    const v4, 0x20000001

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Purpose;->allFromKeymaster(Ljava/util/Collection;)I

    move-result v12

    .local v12, "purposes":I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .local v22, "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .local v33, "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v4, 0x20000006

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v30

    .local v30, "keymasterPadding":I
    :try_start_2
    invoke-static/range {v30 .. v30}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v25

    .local v25, "jcaPadding":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v25    # "jcaPadding":Ljava/lang/String;
    :catch_1
    move-exception v20

    .restart local v20    # "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-static/range {v30 .. v30}, Landroid/security/keystore/KeyProperties$SignaturePadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v32

    .local v32, "padding":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .end local v32    # "padding":Ljava/lang/String;
    :catch_2
    move-exception v21

    .local v21, "e2":Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v4, Ljava/security/ProviderException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unsupported encryption padding: "

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v20    # "e":Ljava/lang/IllegalArgumentException;
    .end local v21    # "e2":Ljava/lang/IllegalArgumentException;
    .end local v30    # "keymasterPadding":I
    :cond_5
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .local v13, "encryptionPaddings":[Ljava/lang/String;
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    .local v14, "signaturePaddings":[Ljava/lang/String;
    const v4, 0x20000005

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Digest;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v15

    .local v15, "digests":[Ljava/lang/String;
    const v4, 0x20000004

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$BlockMode;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v16

    .local v16, "blockModes":[Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v5, 0x100001f8

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result v31

    .local v31, "keymasterSwEnforcedUserAuthenticators":I
    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    const v5, 0x100001f8

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v27

    .local v27, "keymasterHwEnforcedUserAuthenticators":I
    const v4, 0x60000190

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v9

    .local v9, "keyValidityStart":Ljava/util/Date;
    const v4, 0x60000191

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v10

    .local v10, "keyValidityForOriginationEnd":Ljava/util/Date;
    const v4, 0x60000192

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    move-result-object v11

    .local v11, "keyValidityForConsumptionEnd":Ljava/util/Date;
    const v4, 0x700001f7

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v17, 0x1

    .local v17, "userAuthenticationRequired":Z
    :goto_2
    const v4, 0x300001f9

    const-wide/16 v36, -0x1

    move-object/from16 v0, v26

    move-wide/from16 v1, v36

    invoke-virtual {v0, v4, v1, v2}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v34

    .local v34, "userAuthenticationValidityDurationSeconds":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v34, v4

    if-lez v4, :cond_7

    new-instance v4, Ljava/security/ProviderException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "User authentication timeout validity too long: "

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v34

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v18, " seconds"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v17    # "userAuthenticationRequired":Z
    .end local v34    # "userAuthenticationValidityDurationSeconds":J
    :cond_6
    const/16 v17, 0x0

    goto :goto_2

    .restart local v17    # "userAuthenticationRequired":Z
    .restart local v34    # "userAuthenticationValidityDurationSeconds":J
    :cond_7
    if-eqz v17, :cond_8

    if-eqz v27, :cond_8

    if-nez v31, :cond_8

    const/16 v19, 0x1

    .local v19, "userAuthenticationRequirementEnforcedBySecureHardware":Z
    :goto_3
    new-instance v4, Landroid/security/keystore/KeyInfo;

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v19}, Landroid/security/keystore/KeyInfo;-><init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIZ)V

    return-object v4

    .end local v19    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    :cond_8
    const/16 v19, 0x0

    goto :goto_3
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To generate secret key in Android Keystore, use KeyGenerator initialized with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 5
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "keySpecClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    if-nez p2, :cond_0

    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "keySpecClass == null"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    instance-of v2, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v2, :cond_2

    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only Android KeyStore secret keys supported: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string v2, "null"

    goto :goto_0

    :cond_2
    const-class v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Key material export of Android KeyStore keys is not supported"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-class v2, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported key spec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    check-cast p1, Landroid/security/keystore/AndroidKeyStoreKey;

    .end local p1    # "key":Ljavax/crypto/SecretKey;
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    .local v1, "keyAliasInKeystore":Ljava/lang/String;
    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "USRSKEY_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "entryAlias":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v2, v0, v1}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Landroid/security/keystore/KeyInfo;

    move-result-object v2

    return-object v2

    .end local v0    # "entryAlias":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key alias: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 2
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "To import a secret key into Android Keystore, use KeyStore.setEntry"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object p1
.end method
