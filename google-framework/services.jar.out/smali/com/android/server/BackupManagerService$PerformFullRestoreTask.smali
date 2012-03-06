.class Lcom/android/server/BackupManagerService$PerformFullRestoreTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;,
        Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;,
        Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;
    }
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mAgentPackage:Ljava/lang/String;

.field mBytes:J

.field final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentPassword:Ljava/lang/String;

.field mDecryptPassword:Ljava/lang/String;

.field final mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

.field mInputFile:Landroid/os/ParcelFileDescriptor;

.field final mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

.field mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/BackupManagerService$RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field mPipes:[Landroid/os/ParcelFileDescriptor;

.field mTargetApp:Landroid/content/pm/ApplicationInfo;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .parameter
    .parameter "fd"
    .parameter "curPassword"
    .parameter "decryptPassword"
    .parameter "observer"
    .parameter "latch"

    .prologue
    const/4 v1, 0x0

    .line 2842
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2823
    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 2828
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    .line 2832
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    .line 2835
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    .line 2839
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    .line 3442
    new-instance v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    invoke-direct {v0, p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;-><init>(Lcom/android/server/BackupManagerService$PerformFullRestoreTask;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    .line 3443
    new-instance v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;-><init>(Lcom/android/server/BackupManagerService$PerformFullRestoreTask;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    .line 2843
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 2844
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 2845
    iput-object p4, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 2846
    iput-object p5, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 2847
    iput-object p6, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2848
    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 2849
    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 2850
    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 2854
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2855
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "com.android.providers.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2857
    return-void
.end method

.method private HEXLOG([B)V
    .locals 11
    .parameter "block"

    .prologue
    const/16 v5, 0x10

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3823
    const/4 v3, 0x0

    .line 3824
    .local v3, offset:I
    array-length v4, p1

    .line 3825
    .local v4, todo:I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3826
    .local v0, buf:Ljava/lang/StringBuilder;
    :goto_0
    if-lez v4, :cond_2

    .line 3827
    const-string v6, "%04x   "

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3828
    if-le v4, v5, :cond_0

    move v2, v5

    .line 3829
    .local v2, numThisLine:I
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 3830
    const-string v6, "%02x "

    new-array v7, v10, [Ljava/lang/Object;

    add-int v8, v3, v1

    aget-byte v8, p1, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3829
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #numThisLine:I
    :cond_0
    move v2, v4

    .line 3828
    goto :goto_1

    .line 3832
    .restart local v1       #i:I
    .restart local v2       #numThisLine:I
    :cond_1
    const-string v6, "hexdump"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3834
    sub-int/2addr v4, v2

    .line 3835
    add-int/2addr v3, v2

    .line 3836
    goto :goto_0

    .line 3837
    .end local v1           #i:I
    .end local v2           #numThisLine:I
    :cond_2
    return-void
.end method


# virtual methods
.method decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 30
    .parameter "encryptionName"
    .parameter "rawInStream"

    .prologue
    .line 2998
    const/16 v19, 0x0

    .line 3000
    .local v19, result:Ljava/io/InputStream;
    :try_start_0
    const-string v26, "AES-256"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 3002
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v25

    .line 3003
    .local v25, userSaltHex:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    #calls: Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v24

    .line 3005
    .local v24, userSalt:[B
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 3006
    .local v8, ckSaltHex:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    #calls: Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v8}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v7

    .line 3008
    .local v7, ckSalt:[B
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 3009
    .local v21, rounds:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v22

    .line 3011
    .local v22, userIvHex:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    .line 3014
    .local v12, masterKeyBlobHex:Ljava/lang/String;
    const-string v26, "AES/CBC/PKCS5Padding"

    invoke-static/range {v26 .. v26}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 3015
    .local v5, c:Ljavax/crypto/Cipher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    move/from16 v3, v21

    #calls: Lcom/android/server/BackupManagerService;->buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BackupManagerService;->access$1200(Lcom/android/server/BackupManagerService;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v23

    .line 3017
    .local v23, userKey:Ljavax/crypto/SecretKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    #calls: Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v4

    .line 3018
    .local v4, IV:[B
    new-instance v10, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v10, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3019
    .local v10, ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    const/16 v26, 0x2

    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface/range {v23 .. v23}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v28

    const-string v29, "AES"

    invoke-direct/range {v27 .. v29}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    #calls: Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v12}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v16

    .line 3023
    .local v16, mkCipher:[B
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v14

    .line 3026
    .local v14, mkBlob:[B
    const/16 v17, 0x0

    .line 3027
    .local v17, offset:I
    add-int/lit8 v18, v17, 0x1

    .end local v17           #offset:I
    .local v18, offset:I
    aget-byte v11, v14, v17

    .line 3028
    .local v11, len:I
    add-int/lit8 v26, v11, 0x1

    move/from16 v0, v18

    move/from16 v1, v26

    invoke-static {v14, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 3029
    add-int/lit8 v17, v11, 0x1

    .line 3031
    .end local v18           #offset:I
    .restart local v17       #offset:I
    add-int/lit8 v18, v17, 0x1

    .end local v17           #offset:I
    .restart local v18       #offset:I
    aget-byte v11, v14, v17

    .line 3032
    add-int v26, v18, v11

    move/from16 v0, v18

    move/from16 v1, v26

    invoke-static {v14, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 3034
    .local v13, mk:[B
    add-int v17, v18, v11

    .line 3036
    .end local v18           #offset:I
    .restart local v17       #offset:I
    add-int/lit8 v18, v17, 0x1

    .end local v17           #offset:I
    .restart local v18       #offset:I
    aget-byte v11, v14, v17

    .line 3037
    add-int v26, v18, v11

    move/from16 v0, v18

    move/from16 v1, v26

    invoke-static {v14, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    .line 3041
    .local v15, mkChecksum:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    #calls: Lcom/android/server/BackupManagerService;->makeKeyChecksum([B[BI)[B
    invoke-static {v0, v13, v7, v1}, Lcom/android/server/BackupManagerService;->access$1500(Lcom/android/server/BackupManagerService;[B[BI)[B

    move-result-object v6

    .line 3042
    .local v6, calculatedCk:[B
    invoke-static {v6, v15}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 3043
    new-instance v10, Ljavax/crypto/spec/IvParameterSpec;

    .end local v10           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    invoke-direct {v10, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3044
    .restart local v10       #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    const/16 v26, 0x2

    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    const-string v28, "AES"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v13, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3048
    new-instance v20, Ljavax/crypto/CipherInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .end local v19           #result:Ljava/io/InputStream;
    .local v20, result:Ljava/io/InputStream;
    move-object/from16 v19, v20

    .line 3073
    .end local v4           #IV:[B
    .end local v5           #c:Ljavax/crypto/Cipher;
    .end local v6           #calculatedCk:[B
    .end local v7           #ckSalt:[B
    .end local v8           #ckSaltHex:Ljava/lang/String;
    .end local v10           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .end local v11           #len:I
    .end local v12           #masterKeyBlobHex:Ljava/lang/String;
    .end local v13           #mk:[B
    .end local v14           #mkBlob:[B
    .end local v15           #mkChecksum:[B
    .end local v16           #mkCipher:[B
    .end local v18           #offset:I
    .end local v20           #result:Ljava/io/InputStream;
    .end local v21           #rounds:I
    .end local v22           #userIvHex:Ljava/lang/String;
    .end local v23           #userKey:Ljavax/crypto/SecretKey;
    .end local v24           #userSalt:[B
    .end local v25           #userSaltHex:Ljava/lang/String;
    .restart local v19       #result:Ljava/io/InputStream;
    :goto_0
    return-object v19

    .line 3049
    .restart local v4       #IV:[B
    .restart local v5       #c:Ljavax/crypto/Cipher;
    .restart local v6       #calculatedCk:[B
    .restart local v7       #ckSalt:[B
    .restart local v8       #ckSaltHex:Ljava/lang/String;
    .restart local v10       #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v11       #len:I
    .restart local v12       #masterKeyBlobHex:Ljava/lang/String;
    .restart local v13       #mk:[B
    .restart local v14       #mkBlob:[B
    .restart local v15       #mkChecksum:[B
    .restart local v16       #mkCipher:[B
    .restart local v18       #offset:I
    .restart local v21       #rounds:I
    .restart local v22       #userIvHex:Ljava/lang/String;
    .restart local v23       #userKey:Ljavax/crypto/SecretKey;
    .restart local v24       #userSalt:[B
    .restart local v25       #userSaltHex:Ljava/lang/String;
    :cond_0
    const-string v26, "BackupManagerService"

    const-string v27, "Incorrect password"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    goto :goto_0

    .line 3051
    .end local v4           #IV:[B
    .end local v5           #c:Ljavax/crypto/Cipher;
    .end local v6           #calculatedCk:[B
    .end local v7           #ckSalt:[B
    .end local v8           #ckSaltHex:Ljava/lang/String;
    .end local v10           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .end local v11           #len:I
    .end local v12           #masterKeyBlobHex:Ljava/lang/String;
    .end local v13           #mk:[B
    .end local v14           #mkBlob:[B
    .end local v15           #mkChecksum:[B
    .end local v16           #mkCipher:[B
    .end local v18           #offset:I
    .end local v21           #rounds:I
    .end local v22           #userIvHex:Ljava/lang/String;
    .end local v23           #userKey:Ljavax/crypto/SecretKey;
    .end local v24           #userSalt:[B
    .end local v25           #userSaltHex:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 3052
    .local v9, e:Ljava/security/InvalidAlgorithmParameterException;
    const-string v26, "BackupManagerService"

    const-string v27, "Needed parameter spec unavailable!"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3050
    .end local v9           #e:Ljava/security/InvalidAlgorithmParameterException;
    :cond_1
    :try_start_1
    const-string v26, "BackupManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unsupported encryption method: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_0

    .line 3053
    :catch_1
    move-exception v9

    .line 3058
    .local v9, e:Ljavax/crypto/BadPaddingException;
    const-string v26, "BackupManagerService"

    const-string v27, "Incorrect password"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3059
    .end local v9           #e:Ljavax/crypto/BadPaddingException;
    :catch_2
    move-exception v9

    .line 3060
    .local v9, e:Ljavax/crypto/IllegalBlockSizeException;
    const-string v26, "BackupManagerService"

    const-string v27, "Invalid block size in master key"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3061
    .end local v9           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_3
    move-exception v9

    .line 3062
    .local v9, e:Ljava/security/NoSuchAlgorithmException;
    const-string v26, "BackupManagerService"

    const-string v27, "Needed decryption algorithm unavailable!"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3063
    .end local v9           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v9

    .line 3064
    .local v9, e:Ljavax/crypto/NoSuchPaddingException;
    const-string v26, "BackupManagerService"

    const-string v27, "Needed padding mechanism unavailable!"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3065
    .end local v9           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_5
    move-exception v9

    .line 3066
    .local v9, e:Ljava/security/InvalidKeyException;
    const-string v26, "BackupManagerService"

    const-string v27, "Illegal password; aborting"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3067
    .end local v9           #e:Ljava/security/InvalidKeyException;
    :catch_6
    move-exception v9

    .line 3068
    .local v9, e:Ljava/lang/NumberFormatException;
    const-string v26, "BackupManagerService"

    const-string v27, "Can\'t parse restore data header"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3069
    .end local v9           #e:Ljava/lang/NumberFormatException;
    :catch_7
    move-exception v9

    .line 3070
    .local v9, e:Ljava/io/IOException;
    const-string v26, "BackupManagerService"

    const-string v27, "Can\'t read input header"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dumpFileMetadata(Lcom/android/server/BackupManagerService$FileMetadata;)V
    .locals 13
    .parameter "info"

    .prologue
    const/16 v6, 0x78

    const/16 v5, 0x77

    const/16 v4, 0x72

    const-wide/16 v11, 0x0

    const/16 v3, 0x2d

    .line 3685
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3688
    .local v0, b:Ljava/lang/StringBuilder;
    iget v2, p1, Lcom/android/server/BackupManagerService$FileMetadata;->type:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    const/16 v2, 0x64

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3689
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x100

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3690
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x80

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_2

    move v2, v5

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3691
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x40

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_3

    move v2, v6

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3692
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x20

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_4

    move v2, v4

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3693
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x10

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_5

    move v2, v5

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3694
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x8

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_6

    move v2, v6

    :goto_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3695
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x4

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_7

    :goto_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3696
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x2

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_8

    :goto_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3697
    iget-wide v4, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v7, 0x1

    and-long/2addr v4, v7

    cmp-long v2, v4, v11

    if-eqz v2, :cond_9

    :goto_9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3698
    const-string v2, " %9d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p1, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3700
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mtime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 3701
    .local v1, stamp:Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MMM dd kk:mm:ss "

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3703
    iget-object v2, p1, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3704
    const-string v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3705
    iget-object v2, p1, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3706
    const-string v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3707
    iget-object v2, p1, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3709
    const-string v2, "BackupManagerService"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    return-void

    .end local v1           #stamp:Ljava/util/Date;
    :cond_0
    move v2, v3

    .line 3688
    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 3689
    goto/16 :goto_1

    :cond_2
    move v2, v3

    .line 3690
    goto/16 :goto_2

    :cond_3
    move v2, v3

    .line 3691
    goto/16 :goto_3

    :cond_4
    move v2, v3

    .line 3692
    goto/16 :goto_4

    :cond_5
    move v2, v3

    .line 3693
    goto/16 :goto_5

    :cond_6
    move v2, v3

    .line 3694
    goto/16 :goto_6

    :cond_7
    move v4, v3

    .line 3695
    goto :goto_7

    :cond_8
    move v5, v3

    .line 3696
    goto :goto_8

    :cond_9
    move v6, v3

    .line 3697
    goto :goto_9
.end method

.method extractLine([BI[Ljava/lang/String;)I
    .locals 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "outStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3666
    array-length v1, p1

    .line 3667
    .local v1, end:I
    if-lt p2, v1, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Incomplete data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3670
    :cond_0
    move v2, p2

    .local v2, pos:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3671
    aget-byte v0, p1, v2

    .line 3674
    .local v0, c:B
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 3678
    .end local v0           #c:B
    :cond_1
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    sub-int v5, v2, p2

    invoke-direct {v4, p1, p2, v5}, Ljava/lang/String;-><init>([BII)V

    aput-object v4, p3, v3

    .line 3679
    add-int/lit8 v2, v2, 0x1

    .line 3680
    return v2

    .line 3670
    .restart local v0       #c:B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method extractRadix([BIII)J
    .locals 9
    .parameter "data"
    .parameter "offset"
    .parameter "maxChars"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3925
    const-wide/16 v3, 0x0

    .line 3926
    .local v3, value:J
    add-int v1, p2, p3

    .line 3927
    .local v1, end:I
    move v2, p2

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3928
    aget-byte v0, p1, v2

    .line 3930
    .local v0, b:B
    if-eqz v0, :cond_0

    const/16 v5, 0x20

    if-ne v0, v5, :cond_1

    .line 3936
    .end local v0           #b:B
    :cond_0
    return-wide v3

    .line 3931
    .restart local v0       #b:B
    :cond_1
    const/16 v5, 0x30

    if-lt v0, v5, :cond_2

    add-int/lit8 v5, p4, 0x30

    add-int/lit8 v5, v5, -0x1

    if-le v0, v5, :cond_3

    .line 3932
    :cond_2
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' for radix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3934
    :cond_3
    int-to-long v5, p4

    mul-long/2addr v5, v3

    add-int/lit8 v7, v0, -0x30

    int-to-long v7, v7

    add-long v3, v5, v7

    .line 3927
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method extractString([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "maxChars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3940
    add-int v0, p2, p3

    .line 3941
    .local v0, end:I
    move v1, p2

    .line 3943
    .local v1, eos:I
    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3944
    :cond_0
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p2

    const-string v4, "US-ASCII"

    invoke-direct {v2, p1, p2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method installApk(Lcom/android/server/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 22
    .parameter "info"
    .parameter "installerPackage"
    .parameter "instream"

    .prologue
    .line 3446
    const/4 v9, 0x1

    .line 3448
    .local v9, okay:Z
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installing from backup: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3454
    .local v4, apkFile:Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3455
    .local v5, apkStream:Ljava/io/FileOutputStream;
    const v18, 0x8000

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 3456
    .local v6, buffer:[B
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    .line 3457
    .local v13, size:J
    :goto_0
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-lez v18, :cond_2

    .line 3458
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v18, v13

    if-gez v18, :cond_1

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v15, v0

    .line 3459
    .local v15, toRead:J
    :goto_1
    const/16 v18, 0x0

    long-to-int v0, v15

    move/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 3460
    .local v7, didRead:I
    if-ltz v7, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    move-wide/from16 v18, v0

    int-to-long v0, v7

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3461
    :cond_0
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3462
    int-to-long v0, v7

    move-wide/from16 v18, v0

    sub-long v13, v13, v18

    .line 3463
    goto :goto_0

    .end local v7           #didRead:I
    .end local v15           #toRead:J
    :cond_1
    move-wide v15, v13

    .line 3458
    goto :goto_1

    .line 3464
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 3467
    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3470
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 3471
    .local v10, packageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->reset()V

    .line 3472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    const/16 v20, 0x22

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 3475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->waitForCompletion()V

    .line 3477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->getResult()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 3481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 3482
    const/4 v9, 0x0

    .line 3532
    .end local v5           #apkStream:Ljava/io/FileOutputStream;
    .end local v6           #buffer:[B
    .end local v10           #packageUri:Landroid/net/Uri;
    .end local v13           #size:J
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3535
    return v9

    .line 3486
    .restart local v5       #apkStream:Ljava/io/FileOutputStream;
    .restart local v6       #buffer:[B
    .restart local v10       #packageUri:Landroid/net/Uri;
    .restart local v13       #size:J
    :cond_4
    const/16 v17, 0x0

    .line 3487
    .local v17, uninstall:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 3488
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore stream claimed to include apk for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but apk was really "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    const/4 v9, 0x0

    .line 3493
    const/16 v17, 0x1

    .line 3521
    :cond_5
    :goto_3
    if-eqz v17, :cond_3

    .line 3522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->reset()V

    .line 3523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 3525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->waitForCompletion()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 3528
    .end local v5           #apkStream:Ljava/io/FileOutputStream;
    .end local v6           #buffer:[B
    .end local v10           #packageUri:Landroid/net/Uri;
    .end local v13           #size:J
    .end local v17           #uninstall:Z
    :catch_0
    move-exception v8

    .line 3529
    .local v8, e:Ljava/io/IOException;
    :try_start_2
    const-string v18, "BackupManagerService"

    const-string v19, "Unable to transcribe restored apk for install"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3530
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 3496
    .end local v8           #e:Ljava/io/IOException;
    .restart local v5       #apkStream:Ljava/io/FileOutputStream;
    .restart local v6       #buffer:[B
    .restart local v10       #packageUri:Landroid/net/Uri;
    .restart local v13       #size:J
    .restart local v17       #uninstall:Z
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x40

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 3498
    .local v11, pkg:Landroid/content/pm/PackageInfo;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const v19, 0x8000

    and-int v18, v18, v19

    if-nez v18, :cond_7

    .line 3499
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore stream contains apk of package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but it disallows backup/restore"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 3504
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/pm/Signature;

    .line 3505
    .local v12, sigs:[Landroid/content/pm/Signature;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    invoke-static {v0, v12, v11}, Lcom/android/server/BackupManagerService;->access$1700(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 3506
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installed app "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " signatures do not match restore manifest"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3508
    const/4 v9, 0x0

    .line 3509
    const/16 v17, 0x1

    goto/16 :goto_3

    .line 3512
    .end local v11           #pkg:Landroid/content/pm/PackageInfo;
    .end local v12           #sigs:[Landroid/content/pm/Signature;
    :catch_1
    move-exception v8

    .line 3513
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Install of package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " succeeded but now not found"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3515
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 3532
    .end local v5           #apkStream:Ljava/io/FileOutputStream;
    .end local v6           #buffer:[B
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10           #packageUri:Landroid/net/Uri;
    .end local v13           #size:J
    .end local v17           #uninstall:Z
    :catchall_0
    move-exception v18

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v18
.end method

.method readAppManifest(Lcom/android/server/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/BackupManagerService$RestorePolicy;
    .locals 22
    .parameter "info"
    .parameter "instream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3555
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x10000

    cmp-long v18, v18, v20

    if-lez v18, :cond_0

    .line 3556
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore manifest too big; corrupt? size="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 3559
    :cond_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 3560
    .local v4, buffer:[B
    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_1

    .line 3561
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3564
    sget-object v14, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    .line 3565
    .local v14, policy:Lcom/android/server/BackupManagerService$RestorePolicy;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3566
    .local v16, str:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 3569
    .local v11, offset:I
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 3570
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 3571
    .local v17, version:I
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 3572
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 3573
    const/16 v18, 0x0

    aget-object v9, v16, v18

    .line 3575
    .local v9, manifestPackage:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 3576
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 3577
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 3578
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 3579
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 3580
    .local v13, platformVersion:I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 3581
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2

    const/16 v18, 0x0

    aget-object v18, v16, v18

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 3582
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 3583
    const/16 v18, 0x0

    aget-object v18, v16, v18

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 3584
    .local v7, hasApk:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 3585
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 3586
    .local v10, numSigs:I
    if-lez v10, :cond_8

    .line 3587
    new-array v15, v10, [Landroid/content/pm/Signature;

    .line 3588
    .local v15, sigs:[Landroid/content/pm/Signature;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v10, :cond_3

    .line 3589
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 3590
    new-instance v18, Landroid/content/pm/Signature;

    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-direct/range {v18 .. v19}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v18, v15, v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3588
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3562
    .end local v7           #hasApk:Z
    .end local v8           #i:I
    .end local v9           #manifestPackage:Ljava/lang/String;
    .end local v10           #numSigs:I
    .end local v11           #offset:I
    .end local v13           #platformVersion:I
    .end local v14           #policy:Lcom/android/server/BackupManagerService$RestorePolicy;
    .end local v15           #sigs:[Landroid/content/pm/Signature;
    .end local v16           #str:[Ljava/lang/String;
    .end local v17           #version:I
    :cond_1
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Unexpected EOF in manifest"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 3581
    .restart local v9       #manifestPackage:Ljava/lang/String;
    .restart local v11       #offset:I
    .restart local v13       #platformVersion:I
    .restart local v14       #policy:Lcom/android/server/BackupManagerService$RestorePolicy;
    .restart local v16       #str:[Ljava/lang/String;
    .restart local v17       #version:I
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 3592
    .restart local v7       #hasApk:Z
    .restart local v8       #i:I
    .restart local v10       #numSigs:I
    .restart local v15       #sigs:[Landroid/content/pm/Signature;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3596
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x40

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 3599
    .local v12, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3600
    .local v6, flags:I
    const v18, 0x8000

    and-int v18, v18, v6

    if-eqz v18, :cond_7

    .line 3608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    invoke-static {v0, v15, v12}, Lcom/android/server/BackupManagerService;->access$1700(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 3609
    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    .line 3610
    const-string v18, "BackupManagerService"

    const-string v19, "Sig + version match; taking data"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    sget-object v14, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3638
    .end local v6           #flags:I
    .end local v12           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_2
    :try_start_3
    sget-object v18, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_4

    if-nez v7, :cond_4

    .line 3639
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot restore package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " without the matching .apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3660
    .end local v7           #hasApk:Z
    .end local v8           #i:I
    .end local v9           #manifestPackage:Ljava/lang/String;
    .end local v10           #numSigs:I
    .end local v13           #platformVersion:I
    .end local v15           #sigs:[Landroid/content/pm/Signature;
    .end local v17           #version:I
    :cond_4
    :goto_3
    return-object v14

    .line 3616
    .restart local v6       #flags:I
    .restart local v7       #hasApk:Z
    .restart local v8       #i:I
    .restart local v9       #manifestPackage:Ljava/lang/String;
    .restart local v10       #numSigs:I
    .restart local v12       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v13       #platformVersion:I
    .restart local v15       #sigs:[Landroid/content/pm/Signature;
    .restart local v17       #version:I
    :cond_5
    :try_start_4
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Data version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is newer than installed version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " - requiring apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    sget-object v14, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/BackupManagerService$RestorePolicy;

    goto :goto_2

    .line 3622
    :cond_6
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore manifest signatures do not match installed application for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 3629
    .end local v6           #flags:I
    .end local v12           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    .line 3633
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " not installed; requiring apk in dataset"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3635
    sget-object v14, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/BackupManagerService$RestorePolicy;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 3626
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #flags:I
    .restart local v12       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_7
    :try_start_6
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore manifest from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but allowBackup=false"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 3654
    .end local v6           #flags:I
    .end local v7           #hasApk:Z
    .end local v8           #i:I
    .end local v9           #manifestPackage:Ljava/lang/String;
    .end local v10           #numSigs:I
    .end local v12           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v13           #platformVersion:I
    .end local v15           #sigs:[Landroid/content/pm/Signature;
    .end local v17           #version:I
    :catch_1
    move-exception v5

    .line 3655
    .local v5, e:Ljava/lang/NumberFormatException;
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Corrupt restore manifest for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3643
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #hasApk:Z
    .restart local v9       #manifestPackage:Ljava/lang/String;
    .restart local v10       #numSigs:I
    .restart local v13       #platformVersion:I
    .restart local v17       #version:I
    :cond_8
    :try_start_7
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Missing signature on backed-up package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    .line 3656
    .end local v7           #hasApk:Z
    .end local v9           #manifestPackage:Ljava/lang/String;
    .end local v10           #numSigs:I
    .end local v13           #platformVersion:I
    .end local v17           #version:I
    :catch_2
    move-exception v5

    .line 3657
    .local v5, e:Ljava/lang/IllegalArgumentException;
    const-string v18, "BackupManagerService"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3647
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    .restart local v9       #manifestPackage:Ljava/lang/String;
    .restart local v17       #version:I
    :cond_9
    :try_start_8
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Expected package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but restore manifest claims "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3651
    .end local v9           #manifestPackage:Ljava/lang/String;
    :cond_a
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown restore manifest version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_3
.end method

.method readExactly(Ljava/io/InputStream;[BII)I
    .locals 4
    .parameter "in"
    .parameter "buffer"
    .parameter "offset"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3844
    if-gtz p4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3846
    :cond_0
    const/4 v1, 0x0

    .line 3847
    .local v1, soFar:I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 3848
    add-int v2, p3, v1

    sub-int v3, p4, v1

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 3849
    .local v0, nRead:I
    if-gtz v0, :cond_2

    .line 3855
    .end local v0           #nRead:I
    :cond_1
    return v1

    .line 3853
    .restart local v0       #nRead:I
    :cond_2
    add-int/2addr v1, v0

    .line 3854
    goto :goto_0
.end method

.method readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2989
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2990
    .local v0, buffer:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, c:I
    if-ltz v1, :cond_0

    .line 2991
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 2994
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2992
    :cond_1
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/BackupManagerService$FileMetadata;)Z
    .locals 15
    .parameter "instream"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3870
    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    const-wide/32 v13, 0x8000

    cmp-long v11, v11, v13

    if-lez v11, :cond_0

    .line 3871
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Suspiciously large pax header size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - aborting"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sanity failure: pax header size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 3877
    :cond_0
    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v13, 0x1ff

    add-long/2addr v11, v13

    const/16 v13, 0x9

    shr-long/2addr v11, v13

    long-to-int v7, v11

    .line 3878
    .local v7, numBlocks:I
    mul-int/lit16 v11, v7, 0x200

    new-array v2, v11, [B

    .line 3879
    .local v2, data:[B
    const/4 v11, 0x0

    array-length v12, v2

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v2, v11, v12}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v11

    array-length v12, v2

    if-ge v11, v12, :cond_1

    .line 3880
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Unable to read full pax header"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 3882
    :cond_1
    iget-wide v11, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    array-length v13, v2

    int-to-long v13, v13

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3884
    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    long-to-int v1, v11

    .line 3885
    .local v1, contentSize:I
    const/4 v8, 0x0

    .line 3888
    .local v8, offset:I
    :cond_2
    add-int/lit8 v3, v8, 0x1

    .line 3889
    .local v3, eol:I
    :goto_0
    if-ge v3, v1, :cond_3

    aget-byte v11, v2, v3

    const/16 v12, 0x20

    if-eq v11, v12, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3890
    :cond_3
    if-lt v3, v1, :cond_4

    .line 3892
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Invalid pax data"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 3895
    :cond_4
    sub-int v11, v3, v8

    const/16 v12, 0xa

    invoke-virtual {p0, v2, v8, v11, v12}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractRadix([BIII)J

    move-result-wide v11

    long-to-int v6, v11

    .line 3896
    .local v6, linelen:I
    add-int/lit8 v4, v3, 0x1

    .line 3897
    .local v4, key:I
    add-int v11, v8, v6

    add-int/lit8 v3, v11, -0x1

    .line 3899
    add-int/lit8 v10, v4, 0x1

    .local v10, value:I
    :goto_1
    aget-byte v11, v2, v10

    const/16 v12, 0x3d

    if-eq v11, v12, :cond_5

    if-gt v10, v3, :cond_5

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3900
    :cond_5
    if-le v10, v3, :cond_6

    .line 3901
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Invalid pax declaration"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 3905
    :cond_6
    new-instance v5, Ljava/lang/String;

    sub-int v11, v10, v4

    const-string v12, "UTF-8"

    invoke-direct {v5, v2, v4, v11, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 3907
    .local v5, keyStr:Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    add-int/lit8 v11, v10, 0x1

    sub-int v12, v3, v10

    add-int/lit8 v12, v12, -0x1

    const-string v13, "UTF-8"

    invoke-direct {v9, v2, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 3909
    .local v9, valStr:Ljava/lang/String;
    const-string v11, "path"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 3910
    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 3917
    :goto_2
    add-int/2addr v8, v6

    .line 3918
    if-lt v8, v1, :cond_2

    .line 3920
    const/4 v11, 0x1

    return v11

    .line 3911
    :cond_7
    const-string v11, "size"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 3912
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-object/from16 v0, p2

    iput-wide v11, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    goto :goto_2

    .line 3914
    :cond_8
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unhandled pax key: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method readTarHeader(Ljava/io/InputStream;[B)Z
    .locals 5
    .parameter "instream"
    .parameter "block"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x200

    const/4 v1, 0x0

    .line 3859
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 3860
    .local v0, got:I
    if-nez v0, :cond_0

    .line 3863
    :goto_0
    return v1

    .line 3861
    :cond_0
    if-ge v0, v2, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3862
    :cond_1
    iget-wide v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    const-wide/16 v3, 0x200

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3863
    const/4 v1, 0x1

    goto :goto_0
.end method

.method readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/BackupManagerService$FileMetadata;
    .locals 13
    .parameter "instream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3714
    const/16 v8, 0x200

    new-array v0, v8, [B

    .line 3715
    .local v0, block:[B
    const/4 v3, 0x0

    .line 3717
    .local v3, info:Lcom/android/server/BackupManagerService$FileMetadata;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 3718
    .local v2, gotHeader:Z
    if-eqz v2, :cond_7

    .line 3721
    :try_start_0
    new-instance v4, Lcom/android/server/BackupManagerService$FileMetadata;

    invoke-direct {v4}, Lcom/android/server/BackupManagerService$FileMetadata;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3722
    .end local v3           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .local v4, info:Lcom/android/server/BackupManagerService$FileMetadata;
    const/16 v8, 0x7c

    const/16 v9, 0xc

    const/16 v10, 0x8

    :try_start_1
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    .line 3723
    const/16 v8, 0x88

    const/16 v9, 0xc

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->mtime:J

    .line 3724
    const/16 v8, 0x64

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    .line 3726
    const/16 v8, 0x159

    const/16 v9, 0x9b

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 3727
    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractString([BII)Ljava/lang/String;

    move-result-object v5

    .line 3728
    .local v5, path:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 3729
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 3730
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 3734
    :cond_1
    const/16 v8, 0x9c

    aget-byte v7, v0, v8

    .line 3735
    .local v7, typeChar:I
    const/16 v8, 0x78

    if-ne v7, v8, :cond_4

    .line 3737
    invoke-virtual {p0, p1, v4}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/BackupManagerService$FileMetadata;)Z

    move-result v2

    .line 3738
    if-eqz v2, :cond_2

    .line 3741
    invoke-virtual {p0, p1, v0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 3743
    :cond_2
    if-nez v2, :cond_3

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Bad or missing pax header"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3811
    .end local v5           #path:Ljava/lang/String;
    .end local v7           #typeChar:I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 3813
    .end local v4           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .local v1, e:Ljava/io/IOException;
    .restart local v3       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    :goto_0
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parse error in header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3814
    invoke-direct {p0, v0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->HEXLOG([B)V

    .line 3816
    throw v1

    .line 3745
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v4       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v5       #path:Ljava/lang/String;
    .restart local v7       #typeChar:I
    :cond_3
    const/16 v8, 0x9c

    :try_start_2
    aget-byte v7, v0, v8

    .line 3748
    :cond_4
    sparse-switch v7, :sswitch_data_0

    .line 3764
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown tar entity type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown entity type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3749
    :sswitch_0
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->type:I

    .line 3772
    :cond_5
    :goto_1
    const-string v8, "shared/"

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "shared/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3775
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "shared/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 3776
    const-string v8, "com.android.sharedstoragebackup"

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 3777
    const-string v8, "shared"

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    .line 3778
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File in shared storage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    move-object v3, v4

    .end local v4           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .end local v5           #path:Ljava/lang/String;
    .end local v7           #typeChar:I
    .restart local v3       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    :cond_7
    move-object v8, v3

    .line 3819
    :goto_3
    return-object v8

    .line 3751
    .end local v3           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v4       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v5       #path:Ljava/lang/String;
    .restart local v7       #typeChar:I
    :sswitch_1
    const/4 v8, 0x2

    iput v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->type:I

    .line 3752
    iget-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 3753
    const-string v8, "BackupManagerService"

    const-string v9, "Directory entry with nonzero size in header"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3754
    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    goto :goto_1

    .line 3760
    :sswitch_2
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saw type=0 in tar header block, info="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    const/4 v3, 0x0

    move-object v8, v3

    move-object v3, v4

    .end local v4           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v3       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    goto :goto_3

    .line 3779
    .end local v3           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v4       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    :cond_8
    const-string v8, "apps/"

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "apps/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3784
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "apps/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 3787
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 3788
    .local v6, slash:I
    if-gez v6, :cond_9

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal semantic path in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3789
    :cond_9
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 3790
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 3793
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_manifest"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 3794
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 3795
    if-gez v6, :cond_a

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal semantic path in non-manifest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3796
    :cond_a
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    .line 3798
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "a"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "f"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "db"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "r"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "sp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "obb"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "c"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 3805
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unrecognized domain "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3808
    :cond_b
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 3811
    .end local v4           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #slash:I
    .end local v7           #typeChar:I
    .restart local v3       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 3748
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
    .end sparse-switch
.end method

.method restoreOneFile(Ljava/io/InputStream;[B)Z
    .locals 37
    .parameter "instream"
    .parameter "buffer"

    .prologue
    .line 3079
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/BackupManagerService$FileMetadata;

    move-result-object v6

    .line 3080
    .local v6, info:Lcom/android/server/BackupManagerService$FileMetadata;
    if-eqz v6, :cond_2

    .line 3085
    iget-object v0, v6, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 3086
    .local v32, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3089
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3090
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3095
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v4, :cond_1

    .line 3096
    const-string v4, "BackupManagerService"

    const-string v5, "Saw new package; tearing down old one"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3098
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3099
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 3100
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 3104
    :cond_1
    iget-object v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v5, "_manifest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readAppManifest(Lcom/android/server/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/BackupManagerService$RestorePolicy;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v5, v6, Lcom/android/server/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3110
    iget-wide v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    .line 3111
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendOnRestorePackage(Ljava/lang/String;)V

    .line 3331
    .end local v32           #pkg:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v6, :cond_16

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 3115
    .restart local v32       #pkg:Ljava/lang/String;
    :cond_3
    const/16 v29, 0x1

    .line 3116
    .local v29, okay:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/BackupManagerService$RestorePolicy;

    .line 3117
    .local v33, policy:Lcom/android/server/BackupManagerService$RestorePolicy;
    sget-object v4, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$RestorePolicy:[I

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 3162
    const-string v4, "BackupManagerService"

    const-string v5, "Invalid policy from manifest"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    const/16 v29, 0x0

    .line 3164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3170
    :cond_4
    :goto_2
    if-eqz v29, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v4, :cond_5

    .line 3171
    const-string v4, "BackupManagerService"

    const-string v5, "Reusing existing agent instance"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    :cond_5
    if-eqz v29, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v4, :cond_6

    .line 3174
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Need to launch agent for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 3177
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 3181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 3185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v4, :cond_10

    .line 3186
    const-string v4, "BackupManagerService"

    const-string v5, "Clearing app data preparatory to full restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/android/server/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 3192
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3198
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->setUpPipes()V

    .line 3199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v7}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 3201
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3208
    :goto_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v4, :cond_6

    .line 3209
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create agent for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    const/16 v29, 0x0

    .line 3211
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3218
    :cond_6
    if-eqz v29, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3219
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restoring data for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " but agent is for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    const/16 v29, 0x0

    .line 3228
    :cond_7
    if-eqz v29, :cond_c

    .line 3229
    const/16 v22, 0x1

    .line 3230
    .local v22, agentSuccess:Z
    iget-wide v0, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v34, v0

    .line 3231
    .local v34, toCopy:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/BackupManagerService;->generateToken()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-result v8

    .line 3233
    .local v8, token:I
    :try_start_3
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invoking agent to restore file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v6, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    const-wide/32 v9, 0x493e0

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v9, v10, v5}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/BackupManagerService$BackupRestoreTask;)V

    .line 3240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v5, "system"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3241
    const-string v4, "BackupManagerService"

    const-string v5, "system process agent - spinning a thread"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    new-instance v3, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v7, v4, v7

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;-><init>(Lcom/android/server/BackupManagerService$PerformFullRestoreTask;Landroid/app/IBackupAgent;Lcom/android/server/BackupManagerService$FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 3244
    .local v3, runner:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3264
    .end local v3           #runner:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;
    :goto_6
    if-eqz v29, :cond_b

    .line 3265
    const/16 v31, 0x1

    .line 3266
    .local v31, pipeOkay:Z
    :try_start_4
    new-instance v30, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3268
    .local v30, pipe:Ljava/io/FileOutputStream;
    :cond_8
    :goto_7
    const-wide/16 v4, 0x0

    cmp-long v4, v34, v4

    if-lez v4, :cond_a

    .line 3269
    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v4, v34, v4

    if-lez v4, :cond_13

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v36, v0

    .line 3271
    .local v36, toRead:I
    :goto_8
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v36

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v27

    .line 3272
    .local v27, nRead:I
    if-ltz v27, :cond_9

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    move/from16 v0, v27

    int-to-long v9, v0

    add-long/2addr v4, v9

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3273
    :cond_9
    if-gtz v27, :cond_14

    .line 3290
    .end local v27           #nRead:I
    .end local v36           #toRead:I
    :cond_a
    iget-wide v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    .line 3294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v4, v8}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v22

    .line 3299
    .end local v30           #pipe:Ljava/io/FileOutputStream;
    .end local v31           #pipeOkay:Z
    :cond_b
    if-nez v22, :cond_c

    .line 3300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 3301
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3303
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 3304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3311
    .end local v8           #token:I
    .end local v22           #agentSuccess:Z
    .end local v34           #toCopy:J
    :cond_c
    if-nez v29, :cond_2

    .line 3312
    const-string v4, "BackupManagerService"

    const-string v5, "[discarding file content]"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    iget-wide v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v9, 0x1ff

    add-long/2addr v4, v9

    const-wide/16 v9, -0x200

    and-long v23, v4, v9

    .line 3314
    .local v23, bytesToConsume:J
    :goto_9
    const-wide/16 v4, 0x0

    cmp-long v4, v23, v4

    if-lez v4, :cond_2

    .line 3315
    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v4, v23, v4

    if-lez v4, :cond_15

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v36, v0

    .line 3317
    .restart local v36       #toRead:I
    :goto_a
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v36

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v27, v0

    .line 3318
    .local v27, nRead:J
    const-wide/16 v4, 0x0

    cmp-long v4, v27, v4

    if-ltz v4, :cond_d

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    add-long v4, v4, v27

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3319
    :cond_d
    const-wide/16 v4, 0x0

    cmp-long v4, v27, v4

    if-lez v4, :cond_2

    .line 3320
    sub-long v23, v23, v27

    .line 3321
    goto :goto_9

    .line 3119
    .end local v23           #bytesToConsume:J
    .end local v27           #nRead:J
    .end local v36           #toRead:I
    :pswitch_0
    const/16 v29, 0x0

    .line 3120
    goto/16 :goto_2

    .line 3125
    :pswitch_1
    iget-object v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3126
    const-string v4, "BackupManagerService"

    const-string v5, "APK file; installing"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 3129
    .local v26, installerName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->installApk(Lcom/android/server/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v29

    .line 3131
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v29, :cond_e

    sget-object v4, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;

    :goto_b
    move-object/from16 v0, v32

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3137
    iget-wide v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    .line 3138
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 3131
    :cond_e
    sget-object v4, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    goto :goto_b

    .line 3142
    .end local v26           #installerName:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3143
    const/16 v29, 0x0

    .line 3145
    goto/16 :goto_2

    .line 3148
    :pswitch_2
    iget-object v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3149
    const-string v4, "BackupManagerService"

    const-string v5, "apk present but ACCEPT"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 3154
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 3189
    :cond_10
    :try_start_5
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "backup agent ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") => no clear"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3202
    :catch_0
    move-exception v4

    goto/16 :goto_5

    .line 3194
    :cond_11
    const-string v4, "BackupManagerService"

    const-string v5, "We\'ve initialized this app already; no clear required"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    .line 3204
    :catch_1
    move-exception v4

    goto/16 :goto_5

    .line 3246
    .restart local v8       #token:I
    .restart local v22       #agentSuccess:Z
    .restart local v34       #toCopy:J
    :cond_12
    :try_start_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v10, v4, v5

    iget-wide v11, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    iget v13, v6, Lcom/android/server/BackupManagerService$FileMetadata;->type:I

    iget-object v14, v6, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    iget-object v15, v6, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    iget-wide v0, v6, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    move-wide/from16 v16, v0

    iget-wide v0, v6, Lcom/android/server/BackupManagerService$FileMetadata;->mtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v4, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v21, v0

    move/from16 v20, v8

    invoke-interface/range {v9 .. v21}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_6

    .line 3250
    :catch_2
    move-exception v25

    .line 3252
    .local v25, e:Ljava/io/IOException;
    :try_start_7
    const-string v4, "BackupManagerService"

    const-string v5, "Couldn\'t establish restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    const/16 v22, 0x0

    .line 3254
    const/16 v29, 0x0

    .line 3261
    goto/16 :goto_6

    .line 3255
    .end local v25           #e:Ljava/io/IOException;
    :catch_3
    move-exception v25

    .line 3258
    .local v25, e:Landroid/os/RemoteException;
    const-string v4, "BackupManagerService"

    const-string v5, "Agent crashed during full restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 3259
    const/16 v22, 0x0

    .line 3260
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 3269
    .end local v25           #e:Landroid/os/RemoteException;
    .restart local v30       #pipe:Ljava/io/FileOutputStream;
    .restart local v31       #pipeOkay:Z
    :cond_13
    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v36, v0

    goto/16 :goto_8

    .line 3274
    .local v27, nRead:I
    .restart local v36       #toRead:I
    :cond_14
    move/from16 v0, v27

    int-to-long v4, v0

    sub-long v34, v34, v4

    .line 3278
    if-eqz v31, :cond_8

    .line 3280
    const/4 v4, 0x0

    :try_start_8
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move/from16 v2, v27

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_7

    .line 3281
    :catch_4
    move-exception v25

    .line 3282
    .local v25, e:Ljava/io/IOException;
    :try_start_9
    const-string v4, "BackupManagerService"

    const-string v5, "Failed to write to restore pipe"

    move-object/from16 v0, v25

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 3283
    const/16 v31, 0x0

    goto/16 :goto_7

    .line 3315
    .end local v8           #token:I
    .end local v22           #agentSuccess:Z
    .end local v25           #e:Ljava/io/IOException;
    .end local v27           #nRead:I
    .end local v30           #pipe:Ljava/io/FileOutputStream;
    .end local v31           #pipeOkay:Z
    .end local v34           #toCopy:J
    .end local v36           #toRead:I
    .restart local v23       #bytesToConsume:J
    :cond_15
    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v36, v0

    goto/16 :goto_a

    .line 3325
    .end local v6           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .end local v23           #bytesToConsume:J
    .end local v29           #okay:Z
    .end local v32           #pkg:Ljava/lang/String;
    .end local v33           #policy:Lcom/android/server/BackupManagerService$RestorePolicy;
    :catch_5
    move-exception v25

    .line 3326
    .restart local v25       #e:Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "io exception on restore socket read"

    move-object/from16 v0, v25

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3328
    const/4 v6, 0x0

    .restart local v6       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    goto/16 :goto_0

    .line 3331
    .end local v25           #e:Ljava/io/IOException;
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 3117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 22

    .prologue
    .line 2893
    const-string v18, "BackupManagerService"

    const-string v19, "--- Performing full-dataset restore ---"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendStartRestore()V

    .line 2897
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    const-string v19, "mounted"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const-string v19, "com.android.sharedstoragebackup"

    sget-object v20, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2901
    :cond_0
    const/4 v14, 0x0

    .line 2902
    .local v14, rawInStream:Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 2904
    .local v12, rawDataIn:Ljava/io/DataInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->hasBackupPassword()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mCurrentPassword:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2710

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;I)Z

    move-result v18

    if-nez v18, :cond_3

    .line 2906
    const-string v18, "BackupManagerService"

    const-string v19, "Backup password mismatch; aborting"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 2963
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 2964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 2967
    if-eqz v12, :cond_1

    :try_start_1
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 2968
    :cond_1
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 2969
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2974
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2975
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->clear()V

    .line 2976
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 2977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2978
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 2980
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 2981
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    .line 2982
    const-string v18, "BackupManagerService"

    const-string v19, "Full restore pass complete."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    :goto_1
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2985
    :goto_2
    return-void

    .line 2911
    :cond_3
    const-wide/16 v18, 0x0

    :try_start_4
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 2912
    const v18, 0x8000

    move/from16 v0, v18

    new-array v3, v0, [B

    .line 2913
    .local v3, buffer:[B
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 2914
    .end local v14           #rawInStream:Ljava/io/FileInputStream;
    .local v15, rawInStream:Ljava/io/FileInputStream;
    :try_start_5
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 2917
    .end local v12           #rawDataIn:Ljava/io/DataInputStream;
    .local v13, rawDataIn:Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .line 2918
    .local v4, compressed:Z
    move-object v11, v15

    .line 2921
    .local v11, preCompressStream:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 2922
    .local v10, okay:Z
    :try_start_6
    const-string v18, "ANDROID BACKUP\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v7

    .line 2923
    .local v7, headerLen:I
    new-array v0, v7, [B

    move-object/from16 v17, v0

    .line 2924
    .local v17, streamHeader:[B
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 2925
    const-string v18, "ANDROID BACKUP\n"

    const-string v19, "UTF-8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 2926
    .local v9, magicBytes:[B
    move-object/from16 v0, v17

    invoke-static {v9, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 2928
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    .line 2929
    .local v16, s:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 2931
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    .line 2932
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_7

    const/4 v4, 0x1

    .line 2933
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    .line 2934
    const-string v18, "none"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 2936
    const/4 v10, 0x1

    .line 2946
    .end local v16           #s:Ljava/lang/String;
    :cond_4
    :goto_4
    if-nez v10, :cond_10

    .line 2947
    const-string v18, "BackupManagerService"

    const-string v19, "Invalid restore data; aborting."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2963
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 2964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 2967
    if-eqz v13, :cond_5

    :try_start_7
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    .line 2968
    :cond_5
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 2969
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 2974
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2975
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->clear()V

    .line 2976
    monitor-exit v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 2977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2978
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 2980
    monitor-exit v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 2981
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    .line 2982
    const-string v18, "BackupManagerService"

    const-string v19, "Full restore pass complete."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object v12, v13

    .end local v13           #rawDataIn:Ljava/io/DataInputStream;
    .restart local v12       #rawDataIn:Ljava/io/DataInputStream;
    move-object v14, v15

    .line 2948
    .end local v15           #rawInStream:Ljava/io/FileInputStream;
    .restart local v14       #rawInStream:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 2932
    .end local v12           #rawDataIn:Ljava/io/DataInputStream;
    .end local v14           #rawInStream:Ljava/io/FileInputStream;
    .restart local v13       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v15       #rawInStream:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 2937
    :cond_8
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_9

    .line 2938
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v11

    .line 2939
    if-eqz v11, :cond_4

    .line 2940
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 2942
    :cond_9
    const-string v18, "BackupManagerService"

    const-string v19, "Archive is encrypted but no password given"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_4

    .line 2960
    .end local v7           #headerLen:I
    .end local v9           #magicBytes:[B
    .end local v16           #s:Ljava/lang/String;
    .end local v17           #streamHeader:[B
    :catch_0
    move-exception v6

    move-object v12, v13

    .end local v13           #rawDataIn:Ljava/io/DataInputStream;
    .restart local v12       #rawDataIn:Ljava/io/DataInputStream;
    move-object v14, v15

    .line 2961
    .end local v3           #buffer:[B
    .end local v4           #compressed:Z
    .end local v10           #okay:Z
    .end local v11           #preCompressStream:Ljava/io/InputStream;
    .end local v15           #rawInStream:Ljava/io/FileInputStream;
    .local v6, e:Ljava/io/IOException;
    .restart local v14       #rawInStream:Ljava/io/FileInputStream;
    :goto_6
    :try_start_b
    const-string v18, "BackupManagerService"

    const-string v19, "Unable to read restore input"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 2963
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 2964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 2967
    if-eqz v12, :cond_a

    :try_start_c
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 2968
    :cond_a
    if-eqz v14, :cond_b

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 2969
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 2974
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2975
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->clear()V

    .line 2976
    monitor-exit v19
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 2977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2978
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 2980
    monitor-exit v19
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 2981
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    .line 2982
    const-string v18, "BackupManagerService"

    const-string v19, "Full restore pass complete."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    goto/16 :goto_1

    .line 2943
    .end local v6           #e:Ljava/io/IOException;
    .end local v12           #rawDataIn:Ljava/io/DataInputStream;
    .end local v14           #rawInStream:Ljava/io/FileInputStream;
    .restart local v3       #buffer:[B
    .restart local v4       #compressed:Z
    .restart local v7       #headerLen:I
    .restart local v9       #magicBytes:[B
    .restart local v10       #okay:Z
    .restart local v11       #preCompressStream:Ljava/io/InputStream;
    .restart local v13       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v15       #rawInStream:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/lang/String;
    .restart local v17       #streamHeader:[B
    :cond_c
    :try_start_f
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Wrong header version: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_4

    .line 2963
    .end local v7           #headerLen:I
    .end local v9           #magicBytes:[B
    .end local v16           #s:Ljava/lang/String;
    .end local v17           #streamHeader:[B
    :catchall_0
    move-exception v18

    move-object v12, v13

    .end local v13           #rawDataIn:Ljava/io/DataInputStream;
    .restart local v12       #rawDataIn:Ljava/io/DataInputStream;
    move-object v14, v15

    .end local v3           #buffer:[B
    .end local v4           #compressed:Z
    .end local v10           #okay:Z
    .end local v11           #preCompressStream:Ljava/io/InputStream;
    .end local v15           #rawInStream:Ljava/io/FileInputStream;
    .restart local v14       #rawInStream:Ljava/io/FileInputStream;
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 2964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 2967
    if-eqz v12, :cond_d

    :try_start_10
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 2968
    :cond_d
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 2969
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1

    .line 2974
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2975
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->clear()V

    .line 2976
    monitor-exit v19
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 2977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2978
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->notifyAll()V

    .line 2980
    monitor-exit v19
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 2981
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    .line 2982
    const-string v19, "BackupManagerService"

    const-string v20, "Full restore pass complete."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2963
    throw v18

    .line 2944
    .end local v12           #rawDataIn:Ljava/io/DataInputStream;
    .end local v14           #rawInStream:Ljava/io/FileInputStream;
    .restart local v3       #buffer:[B
    .restart local v4       #compressed:Z
    .restart local v7       #headerLen:I
    .restart local v9       #magicBytes:[B
    .restart local v10       #okay:Z
    .restart local v11       #preCompressStream:Ljava/io/InputStream;
    .restart local v13       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v15       #rawInStream:Ljava/io/FileInputStream;
    .restart local v17       #streamHeader:[B
    :cond_f
    :try_start_13
    const-string v18, "BackupManagerService"

    const-string v19, "Didn\'t read the right header magic"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2952
    :cond_10
    if-eqz v4, :cond_14

    new-instance v8, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v8, v11}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2956
    .local v8, in:Ljava/io/InputStream;
    :cond_11
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->restoreOneFile(Ljava/io/InputStream;[B)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0

    move-result v5

    .line 2957
    .local v5, didRestore:Z
    if-nez v5, :cond_11

    .line 2963
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 2964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 2967
    if-eqz v13, :cond_12

    :try_start_14
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    .line 2968
    :cond_12
    if-eqz v15, :cond_13

    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 2969
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5

    .line 2974
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2975
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->clear()V

    .line 2976
    monitor-exit v19
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 2977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2978
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 2980
    monitor-exit v19
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 2981
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    .line 2982
    const-string v18, "BackupManagerService"

    const-string v19, "Full restore pass complete."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object v12, v13

    .end local v13           #rawDataIn:Ljava/io/DataInputStream;
    .restart local v12       #rawDataIn:Ljava/io/DataInputStream;
    move-object v14, v15

    .line 2984
    .end local v15           #rawInStream:Ljava/io/FileInputStream;
    .restart local v14       #rawInStream:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v5           #didRestore:Z
    .end local v8           #in:Ljava/io/InputStream;
    .end local v12           #rawDataIn:Ljava/io/DataInputStream;
    .end local v14           #rawInStream:Ljava/io/FileInputStream;
    .restart local v13       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v15       #rawInStream:Ljava/io/FileInputStream;
    :cond_14
    move-object v8, v11

    .line 2952
    goto/16 :goto_a

    .line 2970
    .end local v3           #buffer:[B
    .end local v4           #compressed:Z
    .end local v7           #headerLen:I
    .end local v9           #magicBytes:[B
    .end local v10           #okay:Z
    .end local v11           #preCompressStream:Ljava/io/InputStream;
    .end local v13           #rawDataIn:Ljava/io/DataInputStream;
    .end local v15           #rawInStream:Ljava/io/FileInputStream;
    .end local v17           #streamHeader:[B
    .restart local v12       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v14       #rawInStream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    .line 2971
    .restart local v6       #e:Ljava/io/IOException;
    const-string v19, "BackupManagerService"

    const-string v20, "Close of restore data pipe threw"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 2976
    .end local v6           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v18

    :try_start_17
    monitor-exit v19
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    throw v18

    .line 2980
    :catchall_2
    move-exception v18

    :try_start_18
    monitor-exit v19
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    throw v18

    .line 2970
    .restart local v6       #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 2971
    const-string v18, "BackupManagerService"

    const-string v19, "Close of restore data pipe threw"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2976
    :catchall_3
    move-exception v18

    :try_start_19
    monitor-exit v19
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    throw v18

    .line 2980
    :catchall_4
    move-exception v18

    :try_start_1a
    monitor-exit v19
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    throw v18

    .line 2970
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 2971
    .restart local v6       #e:Ljava/io/IOException;
    const-string v18, "BackupManagerService"

    const-string v19, "Close of restore data pipe threw"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2976
    .end local v6           #e:Ljava/io/IOException;
    :catchall_5
    move-exception v18

    :try_start_1b
    monitor-exit v19
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    throw v18

    .line 2980
    :catchall_6
    move-exception v18

    :try_start_1c
    monitor-exit v19
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    throw v18

    .line 2970
    .end local v12           #rawDataIn:Ljava/io/DataInputStream;
    .end local v14           #rawInStream:Ljava/io/FileInputStream;
    .restart local v3       #buffer:[B
    .restart local v4       #compressed:Z
    .restart local v7       #headerLen:I
    .restart local v9       #magicBytes:[B
    .restart local v10       #okay:Z
    .restart local v11       #preCompressStream:Ljava/io/InputStream;
    .restart local v13       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v15       #rawInStream:Ljava/io/FileInputStream;
    .restart local v17       #streamHeader:[B
    :catch_4
    move-exception v6

    .line 2971
    .restart local v6       #e:Ljava/io/IOException;
    const-string v18, "BackupManagerService"

    const-string v19, "Close of restore data pipe threw"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 2976
    .end local v6           #e:Ljava/io/IOException;
    :catchall_7
    move-exception v18

    :try_start_1d
    monitor-exit v19
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    throw v18

    .line 2980
    :catchall_8
    move-exception v18

    :try_start_1e
    monitor-exit v19
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    throw v18

    .line 2970
    .restart local v5       #didRestore:Z
    .restart local v8       #in:Ljava/io/InputStream;
    :catch_5
    move-exception v6

    .line 2971
    .restart local v6       #e:Ljava/io/IOException;
    const-string v18, "BackupManagerService"

    const-string v19, "Close of restore data pipe threw"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 2976
    .end local v6           #e:Ljava/io/IOException;
    :catchall_9
    move-exception v18

    :try_start_1f
    monitor-exit v19
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    throw v18

    .line 2980
    :catchall_a
    move-exception v18

    :try_start_20
    monitor-exit v19
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    throw v18

    .line 2963
    .end local v3           #buffer:[B
    .end local v4           #compressed:Z
    .end local v5           #didRestore:Z
    .end local v7           #headerLen:I
    .end local v8           #in:Ljava/io/InputStream;
    .end local v9           #magicBytes:[B
    .end local v10           #okay:Z
    .end local v11           #preCompressStream:Ljava/io/InputStream;
    .end local v13           #rawDataIn:Ljava/io/DataInputStream;
    .end local v15           #rawInStream:Ljava/io/FileInputStream;
    .end local v17           #streamHeader:[B
    .restart local v12       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v14       #rawInStream:Ljava/io/FileInputStream;
    :catchall_b
    move-exception v18

    goto/16 :goto_8

    .end local v14           #rawInStream:Ljava/io/FileInputStream;
    .restart local v3       #buffer:[B
    .restart local v15       #rawInStream:Ljava/io/FileInputStream;
    :catchall_c
    move-exception v18

    move-object v14, v15

    .end local v15           #rawInStream:Ljava/io/FileInputStream;
    .restart local v14       #rawInStream:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 2960
    .end local v3           #buffer:[B
    :catch_6
    move-exception v6

    goto/16 :goto_6

    .end local v14           #rawInStream:Ljava/io/FileInputStream;
    .restart local v3       #buffer:[B
    .restart local v15       #rawInStream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v6

    move-object v14, v15

    .end local v15           #rawInStream:Ljava/io/FileInputStream;
    .restart local v14       #rawInStream:Ljava/io/FileInputStream;
    goto/16 :goto_6
.end method

.method sendEndRestore()V
    .locals 3

    .prologue
    .line 3971
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 3973
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3979
    :cond_0
    :goto_0
    return-void

    .line 3974
    :catch_0
    move-exception v0

    .line 3975
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 3959
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 3962
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3968
    :cond_0
    :goto_0
    return-void

    .line 3963
    :catch_0
    move-exception v0

    .line 3964
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendStartRestore()V
    .locals 3

    .prologue
    .line 3948
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 3950
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3956
    :cond_0
    :goto_0
    return-void

    .line 3951
    :catch_0
    move-exception v0

    .line 3952
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method setUpPipes()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3335
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 3336
    return-void
.end method

.method skipTarPadding(JLjava/io/InputStream;)V
    .locals 8
    .parameter "size"
    .parameter "instream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x200

    .line 3541
    add-long v4, p1, v6

    rem-long v2, v4, v6

    .line 3542
    .local v2, partial:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 3543
    long-to-int v4, v2

    rsub-int v1, v4, 0x200

    .line 3544
    .local v1, needed:I
    new-array v0, v1, [B

    .line 3545
    .local v0, buffer:[B
    const/4 v4, 0x0

    invoke-virtual {p0, p3, v0, v4, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 3546
    iget-wide v4, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3549
    .end local v0           #buffer:[B
    .end local v1           #needed:I
    :cond_0
    return-void

    .line 3547
    .restart local v0       #buffer:[B
    .restart local v1       #needed:I
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method tearDownAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .parameter "app"

    .prologue
    .line 3353
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v1, :cond_0

    .line 3356
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$700(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3361
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.backupconfirm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3363
    const-string v1, "BackupManagerService"

    const-string v2, "Killing host process"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$700(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3371
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 3373
    :cond_0
    return-void

    .line 3366
    :cond_1
    :try_start_1
    const-string v1, "BackupManagerService"

    const-string v2, "Not killing after full restore"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3368
    :catch_0
    move-exception v0

    .line 3369
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method tearDownPipes()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3339
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 3341
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3342
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 3343
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3344
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3348
    :goto_0
    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 3350
    :cond_0
    return-void

    .line 3345
    :catch_0
    move-exception v0

    .line 3346
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Couldn\'t close agent pipes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
