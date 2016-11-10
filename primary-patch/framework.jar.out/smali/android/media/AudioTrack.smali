.class public Landroid/media/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;,
        Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;,
        Landroid/media/AudioTrack$OnRoutingChangedListener;,
        Landroid/media/AudioTrack$Builder;
    }
.end annotation


# static fields
.field private static final CHANNEL_COUNT_MAX:I = 0x8

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final ERROR_WOULD_BLOCK:I = -0x7

.field private static final GAIN_MAX:F = 1.0f

.field private static final GAIN_MIN:F = 0.0f

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final SAMPLE_RATE_HZ_MAX:I = 0x2ee00

.field private static final SAMPLE_RATE_HZ_MIN:I = 0xfa0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x1cfc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field public static final WRITE_BLOCKING:I = 0x0

.field public static final WRITE_NON_BLOCKING:I = 0x1


# instance fields
.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mAttributes:Landroid/media/AudioAttributes;

.field private mAudioFormat:I

.field private mAvSyncBytesRemaining:I

.field private mAvSyncHeader:Ljava/nio/ByteBuffer;

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

.field private final mInitializationLooper:Landroid/os/Looper;

.field private mJniData:J

.field private mNativeBufferSizeInBytes:I

.field private mNativeBufferSizeInFrames:I

.field private mNativeTrackInJavaObj:J

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/AudioTrack$OnRoutingChangedListener;",
            "Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamType:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .param p7, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    move-object v0, p0

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .locals 20
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "mode"    # I
    .param p5, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mPlayState:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mChannelCount:I

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mChannelMask:I

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mStreamType:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mSessionId:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v7, "Illegal null AudioAttributes"

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v7, "Illegal null AudioFormat"

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v19

    .local v19, "looper":Landroid/os/Looper;
    if-nez v19, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v19

    :cond_2
    const/4 v3, 0x0

    .local v3, "rate":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    :cond_3
    :goto_0
    const/4 v5, 0x0

    .local v5, "channelIndexMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v5

    :cond_4
    const/4 v4, 0x0

    .local v4, "channelMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v4

    :cond_5
    :goto_1
    const/4 v6, 0x1

    .local v6, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v6

    :cond_6
    move-object/from16 v2, p0

    move/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mStreamType:I

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    const-string v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    .local v17, "b":Landroid/os/IBinder;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    if-gez p5, :cond_9

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid audio session ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v4    # "channelMask":I
    .end local v5    # "channelIndexMask":I
    .end local v6    # "encoding":I
    .end local v17    # "b":Landroid/os/IBinder;
    :cond_7
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v3

    if-gtz v3, :cond_3

    const v3, 0xac44

    goto/16 :goto_0

    .restart local v4    # "channelMask":I
    .restart local v5    # "channelIndexMask":I
    :cond_8
    if-nez v5, :cond_5

    const/16 v4, 0xc

    goto :goto_1

    .restart local v6    # "encoding":I
    .restart local v17    # "b":Landroid/os/IBinder;
    :cond_9
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .local v16, "session":[I
    const/4 v2, 0x0

    aput p5, v16, v2

    new-instance v8, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/media/AudioTrack;->mSampleRate:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/media/AudioTrack;->mChannelMask:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/AudioTrack;->mAudioFormat:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v16}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;IIIIII[I)I

    move-result v18

    .local v18, "initResult":I
    if-eqz v18, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error code "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " when initializing AudioTrack."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_a
    const/4 v2, 0x0

    aget v2, v16, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mSessionId:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_b

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    goto :goto_2

    :cond_b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    goto :goto_2
.end method

.method static synthetic access$000(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioTrack;

    .prologue
    iget-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .locals 3
    .param p1, "audioBufferSize"    # I

    .prologue
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int v0, v1, v2

    .local v0, "frameSizeInBytes":I
    :goto_0
    rem-int v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "frameSizeInBytes":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "frameSizeInBytes":I
    goto :goto_0

    :cond_2
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    div-int v1, p1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    return-void
.end method

.method private audioParamCheck(IIIII)V
    .locals 5
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "channelIndexMask"    # I
    .param p4, "audioFormat"    # I
    .param p5, "mode"    # I

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0xfa0

    if-lt p1, v2, :cond_0

    const v2, 0x2ee00

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Hz is not a supported sample rate."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    sparse-switch p2, :sswitch_data_0

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    const/4 v2, 0x0

    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    :goto_0
    iput p3, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    iget v2, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v2, :cond_5

    const/16 v1, 0xff

    .local v1, "indexMask":I
    and-int/lit16 v2, p3, -0x100

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported channel index configuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1    # "indexMask":I
    :sswitch_0
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    const/4 v2, 0x4

    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    goto :goto_0

    :sswitch_1
    const/4 v2, 0x2

    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    const/16 v2, 0xc

    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported channel configuration."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v2

    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_0

    .restart local v1    # "indexMask":I
    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    .local v0, "channelIndexCount":I
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-nez v2, :cond_7

    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .end local v0    # "channelIndexCount":I
    .end local v1    # "indexMask":I
    :cond_5
    if-ne p4, v3, :cond_6

    const/4 p4, 0x2

    :cond_6
    invoke-static {p4}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported audio encoding."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local v0    # "channelIndexCount":I
    .restart local v1    # "indexMask":I
    :cond_7
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-eq v2, v0, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Channel count must match"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "channelIndexCount":I
    .end local v1    # "indexMask":I
    :cond_8
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-eq p5, v3, :cond_9

    if-nez p5, :cond_a

    :cond_9
    if-eq p5, v3, :cond_b

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method private broadcastRoutingChange()V
    .locals 6

    .prologue
    iget-object v5, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    .local v0, "delegate":Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
    invoke-virtual {v0}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    const/16 v4, 0x3e8

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .end local v0    # "delegate":Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;>;"
    :cond_1
    return-void
.end method

.method private static clampGainOrLevel(F)F
    .locals 1
    .param p0, "gainOrLevel"    # F

    .prologue
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public static getMaxVolume()F
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static getMinBufferSize(III)I
    .locals 4
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .prologue
    const/4 v1, -0x2

    const/4 v0, 0x0

    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :sswitch_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    goto :goto_1

    :cond_2
    const/16 v2, 0xfa0

    if-lt p0, v2, :cond_3

    const v2, 0x2ee00

    if-le p0, v2, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .local v1, "size":I
    if-gtz v1, :cond_0

    const-string v2, "getMinBufferSize(): error querying hardware"

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    const/4 v1, -0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public static getMinVolume()F
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .locals 8
    .param p0, "channelConfig"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x0

    and-int/lit16 v5, p0, 0x1cfc

    if-eq v5, p0, :cond_0

    const-string v5, "Channel configuration features unsupported channels"

    invoke-static {v5}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_0
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v1

    .local v1, "channelCount":I
    if-le v1, v7, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Channel configuration contains too many channels "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0xc

    .local v2, "frontPair":I
    and-int/lit8 v5, p0, 0xc

    const/16 v6, 0xc

    if-eq v5, v6, :cond_2

    const-string v5, "Front channels must be present in multichannel configurations"

    invoke-static {v5}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xc0

    .local v0, "backPair":I
    and-int/lit16 v5, p0, 0xc0

    if-eqz v5, :cond_3

    and-int/lit16 v5, p0, 0xc0

    const/16 v6, 0xc0

    if-eq v5, v6, :cond_3

    const-string v5, "Rear channels can\'t be used independently"

    invoke-static {v5}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v3, 0x1800

    .local v3, "sidePair":I
    and-int/lit16 v5, p0, 0x1800

    if-eqz v5, :cond_4

    and-int/lit16 v5, p0, 0x1800

    const/16 v6, 0x1800

    if-eq v5, v6, :cond_4

    const-string v5, "Side channels can\'t be used independently"

    invoke-static {v5}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isRestricted()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    iget-object v4, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    iget v4, p0, Landroid/media/AudioTrack;->mStreamType:I

    invoke-static {v4}, Landroid/media/AudioAttributes;->usageForLegacyStreamType(I)I

    move-result v2

    .local v2, "usage":I
    iget-object v4, p0, Landroid/media/AudioTrack;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v5, 0x1c

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v2, v6, v7}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "mode":I
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .end local v1    # "mode":I
    .end local v2    # "usage":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_native_frame_count()I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_params()Landroid/media/PlaybackParams;
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_timestamp([J)I
.end method

.method private final native native_pause()V
.end method

.method private final native native_release()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)I
.end method

.method private final native native_setOutputDevice(I)Z
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_params(Landroid/media/PlaybackParams;)V
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;IIIIII[I)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIIIZ)I
.end method

.method private final native native_write_float([FIIIZ)I
.end method

.method private final native native_write_native_bytes(Ljava/lang/Object;IIIZ)I
.end method

.method private final native native_write_short([SIIIZ)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .param p0, "audiotrack_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "audiotrack_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTrack;

    .local v3, "track":Landroid/media/AudioTrack;
    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v4, 0x3e8

    if-ne p1, v4, :cond_2

    invoke-direct {v3}, Landroid/media/AudioTrack;->broadcastRoutingChange()V

    goto :goto_0

    :cond_2
    iget-object v0, v3, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .local v0, "delegate":Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_enableDeviceCallback()V

    :cond_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    if-eqz p2, :cond_2

    .end local p2    # "handler":Landroid/os/Handler;
    :goto_0
    invoke-direct {v2, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    :cond_1
    return-void

    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_2
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public attachAuxEffect(I)I
    .locals 1
    .param p1, "effectId"    # I

    .prologue
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    :cond_0
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_native_frame_count()I

    move-result v0

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 3

    .prologue
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v2, p0, Landroid/media/AudioTrack;->mSampleRate:I

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    :cond_0
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public getLatency()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method protected getNativeFrameCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_native_frame_count()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPlayState()I
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPlaybackHeadPosition()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackParams()Landroid/media/PlaybackParams;
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_params()Landroid/media/PlaybackParams;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackRate()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 5

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getRoutedDeviceId()I

    move-result v0

    .local v0, "deviceId":I
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    if-ne v4, v0, :cond_2

    aget-object v3, v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;)Z
    .locals 6
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [J

    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .local v1, "ret":I
    if-eqz v1, :cond_1

    :goto_0
    return v2

    :cond_1
    aget-wide v4, v0, v2

    iput-wide v4, p1, Landroid/media/AudioTimestamp;->framePosition:J

    aget-wide v4, v0, v3

    iput-wide v4, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    move v2, v3

    goto :goto_0
.end method

.method public getTimestampWithStatus(Landroid/media/AudioTimestamp;)I
    .locals 4
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .prologue
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [J

    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .local v1, "ret":I
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    return v1
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_1
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 1

    .prologue
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_release()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reloadStaticData()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    goto :goto_0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;

    .prologue
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_disableDeviceCallback()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAuxEffectSendLevel(F)I
    .locals 3
    .param p1, "level"    # F

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/media/AudioTrack;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v2, :cond_2

    const/4 v1, -0x3

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p1

    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    move-result v0

    .local v0, "err":I
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setLoopPoints(III)I
    .locals 2
    .param p1, "startInFrames"    # I
    .param p2, "endInFrames"    # I
    .param p3, "loopCount"    # I

    .prologue
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_1
    if-nez p3, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    goto :goto_0

    :cond_3
    if-ltz p1, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-ge p1, v0, :cond_4

    if-ge p1, p2, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p2, v0, :cond_2

    :cond_4
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .param p1, "markerInFrames"    # I

    .prologue
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPlaybackHeadPosition(I)I
    .locals 2
    .param p1, "positionInFrames"    # I

    .prologue
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_2

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_3

    :cond_2
    const/4 v0, -0x2

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 2
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_params(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    goto :goto_0
.end method

.method public setPlaybackRate(I)I
    .locals 2
    .param p1, "sampleRateInHz"    # I

    .prologue
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    if-gtz p1, :cond_1

    const/4 v0, -0x2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .param p1, "periodInFrames"    # I

    .prologue
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .local v0, "preferredDeviceId":I
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setOutputDevice(I)Z

    move-result v1

    .local v1, "status":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    :cond_2
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected setState(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 2
    .param p1, "leftGain"    # F
    .param p2, "rightGain"    # F

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/media/AudioTrack;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v1, :cond_1

    const/4 v0, -0x3

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p1

    invoke-static {p2}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    goto :goto_0
.end method

.method public setVolume(F)I
    .locals 1
    .param p1, "gain"    # F

    .prologue
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;II)I
    .locals 8
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x2

    const/4 v7, 0x1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_1

    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x3

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-eqz p3, :cond_2

    if-eq p3, v7, :cond_2

    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    if-ltz p2, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le p2, v0, :cond_4

    :cond_3
    const-string v0, "android.media.AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    .local v6, "ret":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_5

    move v5, v7

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/lang/Object;IIIZ)I

    move-result v6

    :goto_1
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_6

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    if-lez v6, :cond_6

    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    :cond_6
    if-lez v6, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_7
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_8

    move v5, v7

    :cond_8
    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v6

    goto :goto_1
.end method

.method public write(Ljava/nio/ByteBuffer;IIJ)I
    .locals 8
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v2, -0x2

    const/4 v0, -0x3

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v4, :cond_1

    const-string v2, "android.media.AudioTrack"

    const-string v3, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p3, :cond_2

    if-eq p3, v6, :cond_2

    const-string v3, "android.media.AudioTrack"

    const-string v4, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_2
    iget v4, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v4, v6, :cond_3

    const-string v2, "android.media.AudioTrack"

    const-string v3, "AudioTrack.write() with timestamp called for non-streaming mode track"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_4

    const-string v2, "android.media.AudioTrack"

    const-string v3, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le p2, v4, :cond_6

    :cond_5
    const-string v3, "android.media.AudioTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_7

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const v4, 0x55550001

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    :cond_7
    const/4 v0, 0x0

    .local v0, "ret":I
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p0, v2, v4, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-gez v0, :cond_8

    const-string v2, "android.media.AudioTrack"

    const-string v4, "AudioTrack.write() could not write timestamp header!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iput v3, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_9

    const-string v2, "android.media.AudioTrack"

    const-string v4, "AudioTrack.write() partial timestamp header written."

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto/16 :goto_0

    :cond_9
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "sizeToWrite":I
    invoke-virtual {p0, p1, v1, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-gez v0, :cond_a

    const-string v2, "android.media.AudioTrack"

    const-string v4, "AudioTrack.write() could not write audio data!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iput v3, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    goto/16 :goto_0

    :cond_a
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    if-nez v2, :cond_0

    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    goto/16 :goto_0
.end method

.method public write([BII)I
    .locals 1
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([BIII)I

    move-result v0

    return v0
.end method

.method public write([BIII)I
    .locals 8
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "writeMode"    # I

    .prologue
    const/4 v6, -0x2

    const/4 v7, 0x1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v6, -0x3

    :cond_1
    :goto_0
    return v6

    :cond_2
    if-eqz p4, :cond_3

    if-eq p4, v7, :cond_3

    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_4

    move v5, v7

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v6

    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-lez v6, :cond_1

    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0

    .end local v6    # "ret":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public write([FIII)I
    .locals 8
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "writeMode"    # I

    .prologue
    const/4 v0, -0x2

    const/4 v6, -0x3

    const/4 v7, 0x1

    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v1, :cond_1

    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    if-eq p4, v7, :cond_3

    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    add-int v1, p2, p3

    if-ltz v1, :cond_4

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_5

    :cond_4
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid array, offset, or size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    goto :goto_0

    :cond_5
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_6

    move v5, v7

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    move-result v6

    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-lez v6, :cond_0

    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0

    .end local v6    # "ret":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public write([SII)I
    .locals 1
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([SIII)I

    move-result v0

    return v0
.end method

.method public write([SIII)I
    .locals 8
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "writeMode"    # I

    .prologue
    const/4 v6, -0x2

    const/4 v7, 0x1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v6, -0x3

    :cond_1
    :goto_0
    return v6

    :cond_2
    if-eqz p4, :cond_3

    if-eq p4, v7, :cond_3

    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_4

    move v5, v7

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_short([SIIIZ)I

    move-result v6

    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-lez v6, :cond_1

    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0

    .end local v6    # "ret":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method
