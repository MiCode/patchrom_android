.class public abstract Landroid/app/backup/BlobBackupHelper;
.super Ljava/lang/Object;
.source "BlobBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "BlobBackupHelper"


# instance fields
.field private final mCurrentBlobVersion:I

.field private final mKeys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "BlobBackupHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/app/backup/BlobBackupHelper;->DEBUG:Z

    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "currentBlobVersion"    # I
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    iput-object p2, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    return-void
.end method

.method private checksum([B)J
    .locals 6
    .param p1, "buffer"    # [B

    .prologue
    if-eqz p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .local v2, "crc":Ljava/util/zip/CRC32;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    const/16 v4, 0x1000

    new-array v1, v4, [B

    .local v1, "buf":[B
    const/4 v3, 0x0

    .local v3, "nRead":I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_0

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v1    # "buf":[B
    .end local v2    # "crc":Ljava/util/zip/CRC32;
    .end local v3    # "nRead":I
    :catch_0
    move-exception v4

    :cond_0
    const-wide/16 v4, -0x1

    :goto_1
    return-wide v4

    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "crc":Ljava/util/zip/CRC32;
    .restart local v3    # "nRead":I
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_1
.end method

.method private deflate([B)[B
    .locals 8
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .local v3, "result":[B
    if-eqz p1, :cond_0

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v4, "sink":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v1, "headerOut":Ljava/io/DataOutputStream;
    iget v5, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, v4}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v2, "out":Ljava/util/zip/DeflaterOutputStream;
    invoke-virtual {v2, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    sget-boolean v5, Landroid/app/backup/BlobBackupHelper;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "BlobBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deflated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "headerOut":Ljava/io/DataOutputStream;
    .end local v2    # "out":Ljava/util/zip/DeflaterOutputStream;
    .end local v4    # "sink":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v5, "BlobBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to process payload: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private inflate([B)[B
    .locals 12
    .param p1, "compressedData"    # [B

    .prologue
    const/4 v6, 0x0

    .local v6, "result":[B
    if-eqz p1, :cond_1

    :try_start_0
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v7, "source":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v2, "headerIn":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .local v8, "version":I
    iget v9, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    if-le v8, v9, :cond_0

    const-string v9, "BlobBackupHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Saved payload from unrecognized version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .end local v2    # "headerIn":Ljava/io/DataInputStream;
    .end local v7    # "source":Ljava/io/ByteArrayInputStream;
    .end local v8    # "version":I
    :goto_0
    return-object v9

    .restart local v2    # "headerIn":Ljava/io/DataInputStream;
    .restart local v7    # "source":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "version":I
    :cond_0
    new-instance v3, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v3, v7}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .local v3, "in":Ljava/util/zip/InflaterInputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v4, "inflated":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x1000

    new-array v0, v9, [B

    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v5

    .local v5, "nRead":I
    if-lez v5, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "buffer":[B
    .end local v2    # "headerIn":Ljava/io/DataInputStream;
    .end local v3    # "in":Ljava/util/zip/InflaterInputStream;
    .end local v4    # "inflated":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "nRead":I
    .end local v7    # "source":Ljava/io/ByteArrayInputStream;
    .end local v8    # "version":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string v9, "BlobBackupHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to process restored payload: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    move-object v9, v6

    goto :goto_0

    .restart local v0    # "buffer":[B
    .restart local v2    # "headerIn":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/util/zip/InflaterInputStream;
    .restart local v4    # "inflated":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "nRead":I
    .restart local v7    # "source":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "version":I
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/InflaterInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    sget-boolean v9, Landroid/app/backup/BlobBackupHelper;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "BlobBackupHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Inflated "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private readOldState(Landroid/os/ParcelFileDescriptor;)Landroid/util/ArrayMap;
    .locals 14
    .param p1, "oldStateFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .local v9, "state":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v6, "in":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .local v10, "version":I
    iget v11, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    if-gt v10, v11, :cond_0

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .local v8, "numKeys":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_1

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .local v2, "checksum":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v7, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v2    # "checksum":J
    .end local v5    # "i":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "numKeys":I
    :cond_0
    const-string v11, "BlobBackupHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Prior state from unrecognized version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v10    # "version":I
    :cond_1
    :goto_1
    return-object v9

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/EOFException;
    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    goto :goto_1

    .end local v1    # "e":Ljava/io/EOFException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "BlobBackupHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error examining prior backup state "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    goto :goto_1
.end method

.method private writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .param p2, "stateFile"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "state":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v4, "out":Ljava/io/DataOutputStream;
    iget v5, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string v5, "BlobBackupHelper"

    const-string v6, "Unable to write updated state"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract applyRestoredPayload(Ljava/lang/String;[B)V
.end method

.method protected abstract getBackupPayload(Ljava/lang/String;)[B
.end method

.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 16
    .param p1, "oldStateFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newStateFd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    invoke-direct/range {p0 .. p1}, Landroid/app/backup/BlobBackupHelper;->readOldState(Landroid/os/ParcelFileDescriptor;)Landroid/util/ArrayMap;

    move-result-object v11

    .local v11, "oldState":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .local v9, "newState":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_5

    aget-object v7, v2, v6

    .local v7, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/backup/BlobBackupHelper;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/app/backup/BlobBackupHelper;->deflate([B)[B

    move-result-object v12

    .local v12, "payload":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/app/backup/BlobBackupHelper;->checksum([B)J

    move-result-wide v4

    .local v4, "checksum":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v7, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .local v10, "oldChecksum":Ljava/lang/Long;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v13, v4, v14

    if-eqz v13, :cond_4

    :cond_0
    sget-boolean v13, Landroid/app/backup/BlobBackupHelper;->DEBUG:Z

    if-eqz v13, :cond_1

    const-string v13, "BlobBackupHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "State has changed for key "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", writing"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v12, :cond_3

    array-length v13, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    array-length v13, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "checksum":J
    .end local v6    # "i$":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v10    # "oldChecksum":Ljava/lang/Long;
    .end local v12    # "payload":[B
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v13, "BlobBackupHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to record notification state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v9, v1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "checksum":J
    .restart local v6    # "i$":I
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "len$":I
    .restart local v10    # "oldChecksum":Ljava/lang/Long;
    .restart local v12    # "payload":[B
    :cond_4
    :try_start_2
    sget-boolean v13, Landroid/app/backup/BlobBackupHelper;->DEBUG:Z

    if-eqz v13, :cond_2

    const-string v13, "BlobBackupHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No change under key "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " => not writing"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "checksum":J
    .end local v6    # "i$":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v10    # "oldChecksum":Ljava/lang/Long;
    .end local v12    # "payload":[B
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v9, v1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    throw v13

    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v8    # "len$":I
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v9, v1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_2
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 8
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .prologue
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v2

    .local v2, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "which":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_2

    const-string v5, "BlobBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v5

    new-array v0, v5, [B

    .local v0, "compressed":[B
    invoke-virtual {p1, v0}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    invoke-direct {p0, v0}, Landroid/app/backup/BlobBackupHelper;->inflate([B)[B

    move-result-object v3

    .local v3, "payload":[B
    invoke-virtual {p0, v2, v3}, Landroid/app/backup/BlobBackupHelper;->applyRestoredPayload(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "compressed":[B
    .end local v3    # "payload":[B
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "BlobBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception restoring entity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
