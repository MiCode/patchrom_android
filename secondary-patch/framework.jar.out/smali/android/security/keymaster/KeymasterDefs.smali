.class public final Landroid/security/keymaster/KeymasterDefs;
.super Ljava/lang/Object;
.source "KeymasterDefs.java"


# static fields
.field public static final HW_AUTH_FINGERPRINT:I = 0x2

.field public static final HW_AUTH_PASSWORD:I = 0x1

.field public static final KM_ALGORITHM_AES:I = 0x20

.field public static final KM_ALGORITHM_EC:I = 0x3

.field public static final KM_ALGORITHM_HMAC:I = 0x80

.field public static final KM_ALGORITHM_RSA:I = 0x1

.field public static final KM_BIGNUM:I = -0x80000000

.field public static final KM_BLOB_REQUIRES_FILE_SYSTEM:I = 0x1

.field public static final KM_BLOB_STANDALONE:I = 0x0

.field public static final KM_BOOL:I = 0x70000000

.field public static final KM_BYTES:I = -0x70000000

.field public static final KM_DATE:I = 0x60000000

.field public static final KM_DIGEST_MD5:I = 0x1

.field public static final KM_DIGEST_NONE:I = 0x0

.field public static final KM_DIGEST_SHA1:I = 0x2

.field public static final KM_DIGEST_SHA_2_224:I = 0x3

.field public static final KM_DIGEST_SHA_2_256:I = 0x4

.field public static final KM_DIGEST_SHA_2_384:I = 0x5

.field public static final KM_DIGEST_SHA_2_512:I = 0x6

.field public static final KM_ENUM:I = 0x10000000

.field public static final KM_ENUM_REP:I = 0x20000000

.field public static final KM_ERROR_CALLER_NONCE_PROHIBITED:I = -0x37

.field public static final KM_ERROR_CONCURRENT_ACCESS_CONFLICT:I = -0x2f

.field public static final KM_ERROR_DELEGATION_NOT_ALLOWED:I = -0x17

.field public static final KM_ERROR_IMPORTED_KEY_DECRYPTION_FAILED:I = -0x23

.field public static final KM_ERROR_IMPORTED_KEY_NOT_ENCRYPTED:I = -0x22

.field public static final KM_ERROR_IMPORTED_KEY_NOT_SIGNED:I = -0x24

.field public static final KM_ERROR_IMPORTED_KEY_VERIFICATION_FAILED:I = -0x25

.field public static final KM_ERROR_IMPORT_PARAMETER_MISMATCH:I = -0x2c

.field public static final KM_ERROR_INCOMPATIBLE_ALGORITHM:I = -0x5

.field public static final KM_ERROR_INCOMPATIBLE_BLOCK_MODE:I = -0x8

.field public static final KM_ERROR_INCOMPATIBLE_DIGEST:I = -0xd

.field public static final KM_ERROR_INCOMPATIBLE_KEY_FORMAT:I = -0x12

.field public static final KM_ERROR_INCOMPATIBLE_PADDING_MODE:I = -0xb

.field public static final KM_ERROR_INCOMPATIBLE_PURPOSE:I = -0x3

.field public static final KM_ERROR_INSUFFICIENT_BUFFER_SPACE:I = -0x1d

.field public static final KM_ERROR_INVALID_ARGUMENT:I = -0x26

.field public static final KM_ERROR_INVALID_AUTHORIZATION_TIMEOUT:I = -0x10

.field public static final KM_ERROR_INVALID_EXPIRATION_TIME:I = -0xe

.field public static final KM_ERROR_INVALID_INPUT_LENGTH:I = -0x15

.field public static final KM_ERROR_INVALID_KEY_BLOB:I = -0x21

.field public static final KM_ERROR_INVALID_MAC_LENGTH:I = -0x39

.field public static final KM_ERROR_INVALID_NONCE:I = -0x34

.field public static final KM_ERROR_INVALID_OPERATION_HANDLE:I = -0x1c

.field public static final KM_ERROR_INVALID_RESCOPING:I = -0x2a

.field public static final KM_ERROR_INVALID_TAG:I = -0x28

.field public static final KM_ERROR_INVALID_USER_ID:I = -0xf

.field public static final KM_ERROR_KEY_EXPIRED:I = -0x19

.field public static final KM_ERROR_KEY_EXPORT_OPTIONS_INVALID:I = -0x16

.field public static final KM_ERROR_KEY_MAX_OPS_EXCEEDED:I = -0x38

.field public static final KM_ERROR_KEY_NOT_YET_VALID:I = -0x18

.field public static final KM_ERROR_KEY_RATE_LIMIT_EXCEEDED:I = -0x36

.field public static final KM_ERROR_KEY_USER_NOT_AUTHENTICATED:I = -0x1a

.field public static final KM_ERROR_MEMORY_ALLOCATION_FAILED:I = -0x29

.field public static final KM_ERROR_MISSING_MAC_LENGTH:I = -0x35

.field public static final KM_ERROR_MISSING_MIN_MAC_LENGTH:I = -0x3a

.field public static final KM_ERROR_MISSING_NONCE:I = -0x33

.field public static final KM_ERROR_OK:I = 0x0

.field public static final KM_ERROR_OPERATION_CANCELLED:I = -0x2e

.field public static final KM_ERROR_OUTPUT_PARAMETER_NULL:I = -0x1b

.field public static final KM_ERROR_ROOT_OF_TRUST_ALREADY_SET:I = -0x1

.field public static final KM_ERROR_SECURE_HW_ACCESS_DENIED:I = -0x2d

.field public static final KM_ERROR_SECURE_HW_BUSY:I = -0x30

.field public static final KM_ERROR_SECURE_HW_COMMUNICATION_FAILED:I = -0x31

.field public static final KM_ERROR_TOO_MANY_OPERATIONS:I = -0x1f

.field public static final KM_ERROR_UNEXPECTED_NULL_POINTER:I = -0x20

.field public static final KM_ERROR_UNIMPLEMENTED:I = -0x64

.field public static final KM_ERROR_UNKNOWN_ERROR:I = -0x3e8

.field public static final KM_ERROR_UNSUPPORTED_ALGORITHM:I = -0x4

.field public static final KM_ERROR_UNSUPPORTED_BLOCK_MODE:I = -0x7

.field public static final KM_ERROR_UNSUPPORTED_DIGEST:I = -0xc

.field public static final KM_ERROR_UNSUPPORTED_EC_FIELD:I = -0x32

.field public static final KM_ERROR_UNSUPPORTED_KEY_ENCRYPTION_ALGORITHM:I = -0x13

.field public static final KM_ERROR_UNSUPPORTED_KEY_FORMAT:I = -0x11

.field public static final KM_ERROR_UNSUPPORTED_KEY_SIZE:I = -0x6

.field public static final KM_ERROR_UNSUPPORTED_KEY_VERIFICATION_ALGORITHM:I = -0x14

.field public static final KM_ERROR_UNSUPPORTED_MAC_LENGTH:I = -0x9

.field public static final KM_ERROR_UNSUPPORTED_MIN_MAC_LENGTH:I = -0x3b

.field public static final KM_ERROR_UNSUPPORTED_PADDING_MODE:I = -0xa

.field public static final KM_ERROR_UNSUPPORTED_PURPOSE:I = -0x2

.field public static final KM_ERROR_UNSUPPORTED_TAG:I = -0x27

.field public static final KM_ERROR_VERIFICATION_FAILED:I = -0x1e

.field public static final KM_ERROR_VERSION_MISMATCH:I = -0x65

.field public static final KM_INVALID:I = 0x0

.field public static final KM_KEY_FORMAT_PKCS8:I = 0x1

.field public static final KM_KEY_FORMAT_RAW:I = 0x3

.field public static final KM_KEY_FORMAT_X509:I = 0x0

.field public static final KM_MODE_CBC:I = 0x2

.field public static final KM_MODE_CTR:I = 0x3

.field public static final KM_MODE_ECB:I = 0x1

.field public static final KM_MODE_GCM:I = 0x20

.field public static final KM_ORIGIN_GENERATED:I = 0x0

.field public static final KM_ORIGIN_IMPORTED:I = 0x2

.field public static final KM_ORIGIN_UNKNOWN:I = 0x3

.field public static final KM_PAD_NONE:I = 0x1

.field public static final KM_PAD_PKCS7:I = 0x40

.field public static final KM_PAD_RSA_OAEP:I = 0x2

.field public static final KM_PAD_RSA_PKCS1_1_5_ENCRYPT:I = 0x4

.field public static final KM_PAD_RSA_PKCS1_1_5_SIGN:I = 0x5

.field public static final KM_PAD_RSA_PSS:I = 0x3

.field public static final KM_PURPOSE_DECRYPT:I = 0x1

.field public static final KM_PURPOSE_ENCRYPT:I = 0x0

.field public static final KM_PURPOSE_SIGN:I = 0x2

.field public static final KM_PURPOSE_VERIFY:I = 0x3

.field public static final KM_TAG_ACTIVE_DATETIME:I = 0x60000190

.field public static final KM_TAG_ALGORITHM:I = 0x10000002

.field public static final KM_TAG_ALL_APPLICATIONS:I = 0x70000258

.field public static final KM_TAG_ALL_USERS:I = 0x700001f4

.field public static final KM_TAG_APPLICATION_DATA:I = -0x6ffffd44

.field public static final KM_TAG_APPLICATION_ID:I = -0x6ffffda7

.field public static final KM_TAG_ASSOCIATED_DATA:I = -0x6ffffc18

.field public static final KM_TAG_AUTH_TIMEOUT:I = 0x300001f9

.field public static final KM_TAG_AUTH_TOKEN:I = -0x6ffffc16

.field public static final KM_TAG_BLOB_USAGE_REQUIREMENTS:I = 0x100002c1

.field public static final KM_TAG_BLOCK_MODE:I = 0x20000004

.field public static final KM_TAG_CALLER_NONCE:I = 0x70000007

.field public static final KM_TAG_CREATION_DATETIME:I = 0x600002bd

.field public static final KM_TAG_DIGEST:I = 0x20000005

.field public static final KM_TAG_INVALID:I = 0x0

.field public static final KM_TAG_KEY_SIZE:I = 0x30000003

.field public static final KM_TAG_MAC_LENGTH:I = 0x300003eb

.field public static final KM_TAG_MAX_USES_PER_BOOT:I = 0x30000194

.field public static final KM_TAG_MIN_MAC_LENGTH:I = 0x30000008

.field public static final KM_TAG_MIN_SECONDS_BETWEEN_OPS:I = 0x30000193

.field public static final KM_TAG_NONCE:I = -0x6ffffc17

.field public static final KM_TAG_NO_AUTH_REQUIRED:I = 0x700001f7

.field public static final KM_TAG_ORIGIN:I = 0x100002be

.field public static final KM_TAG_ORIGINATION_EXPIRE_DATETIME:I = 0x60000191

.field public static final KM_TAG_PADDING:I = 0x20000006

.field public static final KM_TAG_PURPOSE:I = 0x20000001

.field public static final KM_TAG_RESCOPING_ADD:I = 0x20000065

.field public static final KM_TAG_RESCOPING_DEL:I = 0x20000066

.field public static final KM_TAG_ROLLBACK_RESISTANT:I = 0x700002bf

.field public static final KM_TAG_ROOT_OF_TRUST:I = -0x6ffffd40

.field public static final KM_TAG_RSA_PUBLIC_EXPONENT:I = 0x500000c8

.field public static final KM_TAG_USAGE_EXPIRE_DATETIME:I = 0x60000192

.field public static final KM_TAG_USER_AUTH_TYPE:I = 0x100001f8

.field public static final KM_TAG_USER_ID:I = 0x300001f5

.field public static final KM_TAG_USER_SECURE_ID:I = -0x5ffffe0a

.field public static final KM_UINT:I = 0x30000000

.field public static final KM_UINT_REP:I = 0x40000000

.field public static final KM_ULONG:I = 0x50000000

.field public static final KM_ULONG_REP:I = -0x60000000

.field public static final sErrorCodeToString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unsupported purpose"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incompatible purpose"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/4 v1, -0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unsupported algorithm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/4 v1, -0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incompatible algorithm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/4 v1, -0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unsupported key size"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/4 v1, -0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unsupported block mode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/4 v1, -0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incompatible block mode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unsupported MAC or authentication tag length"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unsupported padding mode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incompatible padding mode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unsupported digest"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incompatible digest"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid expiration time"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid user ID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid user authorization timeout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unsupported key format"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Incompatible key format"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid input length"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Key not yet valid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Key expired"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Key user not authenticated"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid operation handle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Signature/MAC verification failed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Too many operations"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid key blob"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid argument"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unsupported tag"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid tag"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Memory allocation failed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unsupported EC field"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Required IV missing"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid IV"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Caller-provided IV not permitted"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x39

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid MAC or authentication tag length"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not implemented"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    const/16 v1, -0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unknown error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMessage(I)Ljava/lang/String;
    .locals 3
    .param p0, "errorCode"    # I

    .prologue
    sget-object v1, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTagType(I)I
    .locals 1
    .param p0, "tag"    # I

    .prologue
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    return v0
.end method
