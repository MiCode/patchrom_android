.class Landroid/webkit/KeyStoreHandler;
.super Landroid/os/Handler;
.source "KeyStoreHandler.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "KeyStoreHandler"


# instance fields
.field private final mDataBuilder:Landroid/webkit/ByteArrayBuilder;

.field private mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 32
    new-instance v0, Landroid/webkit/ByteArrayBuilder;

    invoke-direct {v0}, Landroid/webkit/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/KeyStoreHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    .line 37
    iput-object p1, p0, Landroid/webkit/KeyStoreHandler;->mMimeType:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public didReceiveData([BI)V
    .locals 3
    .parameter "data"
    .parameter "length"

    .prologue
    .line 46
    iget-object v1, p0, Landroid/webkit/KeyStoreHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v0, p0, Landroid/webkit/KeyStoreHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Landroid/webkit/ByteArrayBuilder;->append([BII)V

    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public installCert(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 52
    iget-object v4, p0, Landroid/webkit/KeyStoreHandler;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/webkit/CertTool;->getCertType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, type:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 74
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v5, p0, Landroid/webkit/KeyStoreHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v5

    .line 61
    :try_start_0
    iget-object v4, p0, Landroid/webkit/KeyStoreHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v4}, Landroid/webkit/ByteArrayBuilder;->getByteSize()I

    move-result v4

    new-array v1, v4, [B

    .line 62
    .local v1, cert:[B
    const/4 v2, 0x0

    .line 64
    .local v2, offset:I
    :goto_1
    iget-object v4, p0, Landroid/webkit/KeyStoreHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v4}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 65
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-nez v0, :cond_1

    .line 73
    invoke-static {p1, v3, v1}, Landroid/webkit/CertTool;->addCertificate(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 74
    monitor-exit v5

    goto :goto_0

    .line 75
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v1           #cert:[B
    .end local v2           #offset:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 67
    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .restart local v1       #cert:[B
    .restart local v2       #offset:I
    :cond_1
    :try_start_1
    iget v4, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v4, :cond_2

    .line 68
    iget-object v4, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v6, 0x0

    iget v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-static {v4, v6, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget v4, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    add-int/2addr v2, v4

    .line 71
    :cond_2
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
