.class Landroid/speech/tts/FileSynthesisCallback;
.super Landroid/speech/tts/AbstractSynthesisCallback;
.source "FileSynthesisCallback.java"


# static fields
.field private static final DBG:Z = false

.field private static final MAX_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "FileSynthesisRequest"

.field private static final WAV_FORMAT_PCM:S = 0x1s

.field private static final WAV_HEADER_LENGTH:I = 0x2c


# instance fields
.field private mAudioFormat:I

.field private mChannelCount:I

.field private mDone:Z

.field private mFileChannel:Ljava/nio/channels/FileChannel;

.field private mSampleRateInHz:I

.field private mStarted:Z

.field private final mStateLock:Ljava/lang/Object;

.field private mStopped:Z


# direct methods
.method constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 2
    .parameter "fileChannel"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    iput-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    iput-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStopped:Z

    iput-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    iput-object p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    return-void
.end method

.method private cleanUp()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFile()V

    return-void
.end method

.method private closeFile()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    const-string v1, "FileSynthesisRequest"

    const-string v2, "Failed to close output file descriptor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private makeWavHeader(IIII)Ljava/nio/ByteBuffer;
    .locals 9
    .parameter "sampleRateInHz"
    .parameter "audioFormat"
    .parameter "channelCount"
    .parameter "dataLength"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x3

    if-ne p2, v7, :cond_0

    move v5, v6

    .local v5, sampleSizeInBytes:I
    :goto_0
    mul-int v7, p1, v5

    mul-int v2, v7, p3

    .local v2, byteRate:I
    mul-int v7, v5, p3

    int-to-short v1, v7

    .local v1, blockAlign:S
    mul-int/lit8 v7, v5, 0x8

    int-to-short v0, v7

    .local v0, bitsPerSample:S
    const/16 v7, 0x2c

    new-array v4, v7, [B

    .local v4, headerBuf:[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .local v3, header:Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-array v7, v8, [B

    fill-array-data v7, :array_0

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v7, p4, 0x2c

    add-int/lit8 v7, v7, -0x8

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    new-array v7, v8, [B

    fill-array-data v7, :array_1

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-array v7, v8, [B

    fill-array-data v7, :array_2

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v7, 0x10

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v6, p3

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    new-array v6, v8, [B

    fill-array-data v6, :array_3

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v3

    .end local v0           #bitsPerSample:S
    .end local v1           #blockAlign:S
    .end local v2           #byteRate:I
    .end local v3           #header:Ljava/nio/ByteBuffer;
    .end local v4           #headerBuf:[B
    .end local v5           #sampleSizeInBytes:I
    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    nop

    :array_0
    .array-data 0x1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_1
    .array-data 0x1
        0x57t
        0x41t
        0x56t
        0x45t
    .end array-data

    :array_2
    .array-data 0x1
        0x66t
        0x6dt
        0x74t
        0x20t
    .end array-data

    :array_3
    .array-data 0x1
        0x64t
        0x61t
        0x74t
        0x61t
    .end array-data
.end method


# virtual methods
.method public audioAvailable([BII)I
    .locals 5
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v1, -0x1

    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStopped:Z

    if-eqz v3, :cond_0

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-nez v3, :cond_1

    const-string v3, "FileSynthesisRequest"

    const-string v4, "File not open"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    const-string v3, "FileSynthesisRequest"

    const-string v4, "Failed to write to output file descriptor"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public done()I
    .locals 8

    .prologue
    const/4 v2, -0x1

    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    if-eqz v4, :cond_0

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    iget-boolean v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStopped:Z

    if-eqz v4, :cond_1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-nez v4, :cond_2

    const-string v4, "FileSynthesisRequest"

    const-string v5, "File not open"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x2c

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .local v0, dataLength:I
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    iget v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    iget v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    iget v7, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I

    invoke-direct {p0, v5, v6, v7, v0}, Landroid/speech/tts/FileSynthesisCallback;->makeWavHeader(IIII)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFile()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x0

    :try_start_3
    monitor-exit v3

    goto :goto_0

    .end local v0           #dataLength:I
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/io/IOException;
    const-string v4, "FileSynthesisRequest"

    const-string v5, "Failed to write to output file descriptor"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public error()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    .prologue
    const/16 v0, 0x2000

    return v0
.end method

.method isDone()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    return v0
.end method

.method public start(III)I
    .locals 6
    .parameter "sampleRateInHz"
    .parameter "audioFormat"
    .parameter "channelCount"

    .prologue
    const/4 v1, -0x1

    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStopped:Z

    if-eqz v3, :cond_0

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    iget-boolean v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "FileSynthesisRequest.start() called twice"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    iput p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    iput p2, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    iput p3, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    const/16 v4, 0x2c

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v1, 0x0

    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    const-string v3, "FileSynthesisRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write wav header to output file descriptor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method stop()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStopped:Z

    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
