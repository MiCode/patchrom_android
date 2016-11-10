.class public abstract Landroid/security/keystore/KeyProperties;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyProperties$Origin;,
        Landroid/security/keystore/KeyProperties$Digest;,
        Landroid/security/keystore/KeyProperties$SignaturePadding;,
        Landroid/security/keystore/KeyProperties$EncryptionPadding;,
        Landroid/security/keystore/KeyProperties$BlockMode;,
        Landroid/security/keystore/KeyProperties$KeyAlgorithm;,
        Landroid/security/keystore/KeyProperties$Purpose;
    }
.end annotation


# static fields
.field public static final BLOCK_MODE_CBC:Ljava/lang/String; = "CBC"

.field public static final BLOCK_MODE_CTR:Ljava/lang/String; = "CTR"

.field public static final BLOCK_MODE_ECB:Ljava/lang/String; = "ECB"

.field public static final BLOCK_MODE_GCM:Ljava/lang/String; = "GCM"

.field public static final DIGEST_MD5:Ljava/lang/String; = "MD5"

.field public static final DIGEST_NONE:Ljava/lang/String; = "NONE"

.field public static final DIGEST_SHA1:Ljava/lang/String; = "SHA-1"

.field public static final DIGEST_SHA224:Ljava/lang/String; = "SHA-224"

.field public static final DIGEST_SHA256:Ljava/lang/String; = "SHA-256"

.field public static final DIGEST_SHA384:Ljava/lang/String; = "SHA-384"

.field public static final DIGEST_SHA512:Ljava/lang/String; = "SHA-512"

.field public static final ENCRYPTION_PADDING_NONE:Ljava/lang/String; = "NoPadding"

.field public static final ENCRYPTION_PADDING_PKCS7:Ljava/lang/String; = "PKCS7Padding"

.field public static final ENCRYPTION_PADDING_RSA_OAEP:Ljava/lang/String; = "OAEPPadding"

.field public static final ENCRYPTION_PADDING_RSA_PKCS1:Ljava/lang/String; = "PKCS1Padding"

.field public static final KEY_ALGORITHM_AES:Ljava/lang/String; = "AES"

.field public static final KEY_ALGORITHM_EC:Ljava/lang/String; = "EC"

.field public static final KEY_ALGORITHM_HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"

.field public static final KEY_ALGORITHM_HMAC_SHA224:Ljava/lang/String; = "HmacSHA224"

.field public static final KEY_ALGORITHM_HMAC_SHA256:Ljava/lang/String; = "HmacSHA256"

.field public static final KEY_ALGORITHM_HMAC_SHA384:Ljava/lang/String; = "HmacSHA384"

.field public static final KEY_ALGORITHM_HMAC_SHA512:Ljava/lang/String; = "HmacSHA512"

.field public static final KEY_ALGORITHM_RSA:Ljava/lang/String; = "RSA"

.field public static final ORIGIN_GENERATED:I = 0x1

.field public static final ORIGIN_IMPORTED:I = 0x2

.field public static final ORIGIN_UNKNOWN:I = 0x4

.field public static final PURPOSE_DECRYPT:I = 0x2

.field public static final PURPOSE_ENCRYPT:I = 0x1

.field public static final PURPOSE_SIGN:I = 0x4

.field public static final PURPOSE_VERIFY:I = 0x8

.field public static final SIGNATURE_PADDING_RSA_PKCS1:Ljava/lang/String; = "PKCS1"

.field public static final SIGNATURE_PADDING_RSA_PSS:Ljava/lang/String; = "PSS"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)[I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Landroid/security/keystore/KeyProperties;->getSetFlags(I)[I

    move-result-object v0

    return-object v0
.end method

.method private static getSetBitCount(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .local v0, "result":I
    :goto_0
    if-eqz p0, :cond_0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private static getSetFlags(I)[I
    .locals 4
    .param p0, "flags"    # I

    .prologue
    if-nez p0, :cond_1

    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    :cond_0
    return-object v1

    :cond_1
    invoke-static {p0}, Landroid/security/keystore/KeyProperties;->getSetBitCount(I)I

    move-result v3

    new-array v1, v3, [I

    .local v1, "result":[I
    const/4 v2, 0x0

    .local v2, "resultOffset":I
    const/4 v0, 0x1

    .local v0, "flag":I
    :goto_0
    if-eqz p0, :cond_0

    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_2

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    ushr-int/lit8 p0, p0, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
