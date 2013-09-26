.class Landroid/media/videoeditor/MediaArtistNativeHelper;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/videoeditor/MediaArtistNativeHelper$NativeGetPixelsListCallback;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClips;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioEffect;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionBehaviour;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioTransition;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$SlideDirection;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoTransition;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoEffect;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoFrameRate;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoFrameSize;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoFormat;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Result;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$MediaRendering;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$FileType;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Bitrate;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSamplingFrequency;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioFormat;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Version;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$OnProgressUpdateListener;
    }
.end annotation


# static fields
.field private static final AUDIO_TRACK_PCM_FILE:Ljava/lang/String; = "AudioPcm.pcm"

.field private static final MAX_THUMBNAIL_PERMITTED:I = 0x8

.field public static final PROCESSING_AUDIO_PCM:I = 0x1

.field public static final PROCESSING_EXPORT:I = 0x14

.field public static final PROCESSING_INTERMEDIATE1:I = 0xb

.field public static final PROCESSING_INTERMEDIATE2:I = 0xc

.field public static final PROCESSING_INTERMEDIATE3:I = 0xd

.field public static final PROCESSING_KENBURNS:I = 0x3

.field public static final PROCESSING_NONE:I = 0x0

.field public static final PROCESSING_TRANSITION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaArtistNativeHelper"

.field public static final TASK_ENCODING:I = 0x2

.field public static final TASK_LOADING_SETTINGS:I = 0x1

.field private static final sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

.field private mAudioTrack:Landroid/media/videoeditor/AudioTrack;

.field private mAudioTrackPCMFilePath:Ljava/lang/String;

.field private mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

.field private mErrorFlagSet:Z

.field private mExportAudioCodec:I

.field private mExportFilename:Ljava/lang/String;

.field private mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

.field private mExportVideoCodec:I

.field private mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

.field private mInvalidatePreviewArray:Z

.field private mIsFirstProgress:Z

.field private final mLock:Ljava/util/concurrent/Semaphore;

.field private mManualEditContext:I

.field private mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

.field private mOutputFilename:Ljava/lang/String;

.field private mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

.field private mPreviewProgress:J

.field private mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

.field private mProcessingObject:Ljava/lang/Object;

.field private mProcessingState:I

.field private mProgressToApp:I

.field private final mProjectPath:Ljava/lang/String;

.field private mRegenerateAudio:Z

.field private mRenderPreviewOverlayFile:Ljava/lang/String;

.field private mRenderPreviewRenderingMode:I

.field private mStoryBoardSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

.field private mTotalClips:I

.field private final mVideoEditor:Landroid/media/videoeditor/VideoEditor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "videoeditor_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Semaphore;Landroid/media/videoeditor/VideoEditor;)V
    .locals 3
    .parameter "projectPath"
    .parameter "lock"
    .parameter "veObj"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    iput-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    iput-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    iput v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    iput v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportAudioCodec:I

    iput v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    iput-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    if-eqz p3, :cond_1

    iput-object p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mStoryBoardSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mStoryBoardSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    :cond_0
    iput-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    const-string v1, "null"

    invoke-direct {p0, v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->_init(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    return-void

    :cond_1
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "video editor object is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native _init(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method static synthetic access$000()Landroid/graphics/Paint;
    .locals 1

    .prologue
    sget-object v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->sResizePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private adjustMediaItemBoundary(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;Landroid/media/videoeditor/MediaItem;)V
    .locals 4
    .parameter "clipSettings"
    .parameter "clipProperties"
    .parameter "m"

    .prologue
    const-wide/16 v2, 0x0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    :cond_0
    :goto_0
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iget v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    iget v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iget v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    :cond_1
    iget v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iget v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    goto :goto_0
.end method

.method private adjustVolume(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V
    .locals 3
    .parameter "m"
    .parameter "clipProperties"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    instance-of v1, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaVideoItem;->isMuted()Z

    move-result v0

    .local v0, videoMuted:Z
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p3

    check-cast p1, Landroid/media/videoeditor/MediaVideoItem;

    .end local p1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaVideoItem;->getVolume()I

    move-result v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    .end local v0           #videoMuted:Z
    :cond_0
    :goto_0
    return-void

    .restart local v0       #videoMuted:Z
    .restart local p1
    :cond_1
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p3

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    goto :goto_0

    .end local v0           #videoMuted:Z
    :cond_2
    instance-of v1, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p3

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    goto :goto_0
.end method

.method private checkOddSizeImage(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V
    .locals 3
    .parameter "m"
    .parameter "clipProperties"
    .parameter "index"

    .prologue
    instance-of v2, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iget v1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    .local v1, width:I
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iget v0, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    .local v0, height:I
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iput v1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iput v0, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    .end local v0           #height:I
    .end local v1           #width:I
    :cond_2
    return-void
.end method

.method private findVideoBitrate(I)I
    .locals 1
    .parameter "videoFrameSize"

    .prologue
    packed-switch p1, :pswitch_data_0

    const v0, 0x7a1200

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x1f400

    goto :goto_0

    :pswitch_1
    const v0, 0x5dc00

    goto :goto_0

    :pswitch_2
    const v0, 0x1e8480

    goto :goto_0

    :pswitch_3
    const v0, 0x4c4b40

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private findVideoResolution(II)I
    .locals 5
    .parameter "aspectRatio"
    .parameter "height"

    .prologue
    const/16 v4, 0x2d0

    const/16 v3, 0x1e0

    const/4 v2, -0x1

    .local v2, retValue:I
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-static {v3}, Landroid/media/videoeditor/MediaProperties;->getSupportedResolutions(I)[Landroid/util/Pair;

    move-result-object v1

    .local v1, resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v1, v3

    .local v0, maxResolution:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v4

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    .end local v0           #maxResolution:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v1           #resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    return v2

    :pswitch_0
    if-ne p2, v3, :cond_2

    const/4 v2, 0x7

    goto :goto_0

    :cond_2
    if-ne p2, v4, :cond_0

    const/16 v2, 0xb

    goto :goto_0

    :pswitch_1
    if-ne p2, v3, :cond_3

    const/16 v2, 0x9

    goto :goto_0

    :cond_3
    if-ne p2, v4, :cond_4

    const/16 v2, 0xa

    goto :goto_0

    :cond_4
    const/16 v3, 0x438

    if-ne p2, v3, :cond_0

    const/16 v2, 0xd

    goto :goto_0

    :pswitch_2
    if-ne p2, v3, :cond_5

    const/4 v2, 0x5

    goto :goto_0

    :cond_5
    if-ne p2, v4, :cond_0

    const/16 v2, 0xc

    goto :goto_0

    :pswitch_3
    if-ne p2, v3, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :pswitch_4
    const/16 v3, 0x90

    if-ne p2, v3, :cond_6

    const/4 v2, 0x2

    goto :goto_0

    :cond_6
    const/16 v3, 0x120

    if-ne p2, v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private generateTransition(Landroid/media/videoeditor/Transition;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V
    .locals 4
    .parameter "transition"
    .parameter "editSettings"
    .parameter "clipPropertiesArray"
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->generate()V

    :cond_0
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    new-instance v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    aput-object v2, v1, p4

    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getFilename()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    iput v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    iput v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    const/4 v2, 0x2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    :try_start_0
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v2

    aput-object v2, v1, p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->Id:Ljava/lang/String;

    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    const/16 v2, 0x64

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    iget v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    if-eqz v1, :cond_1

    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    :cond_1
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    iget v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    if-eqz v1, :cond_2

    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported file or file not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getEffectColorType(Landroid/media/videoeditor/EffectColor;)I
    .locals 3
    .parameter "effect"

    .prologue
    const/4 v0, -0x1

    .local v0, retValue:I
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v1

    const v2, 0xff00

    if-ne v1, v2, :cond_0

    const/16 v0, 0x103

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v1

    const v2, 0xff66cc

    if-ne v1, v2, :cond_1

    const/16 v0, 0x102

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v1

    const v2, 0x7f7f7f

    if-ne v1, v2, :cond_2

    const/16 v0, 0x101

    goto :goto_0

    :cond_2
    const/16 v0, 0x10b

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x10c

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x104

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x105

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x10a

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getTotalEffects(Ljava/util/List;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, mediaItemsList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    const/4 v4, 0x0

    .local v4, totalEffects:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/videoeditor/MediaItem;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaItem;

    .local v3, t:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, ef:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/videoeditor/Effect;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Effect;

    .local v0, e:Landroid/media/videoeditor/Effect;
    instance-of v5, v0, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v0           #e:Landroid/media/videoeditor/Effect;
    .end local v1           #ef:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/videoeditor/Effect;>;"
    .end local v3           #t:Landroid/media/videoeditor/MediaItem;
    :cond_2
    return v4
.end method

.method private getTransitionResolution(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)I
    .locals 4
    .parameter "m1"
    .parameter "m2"

    .prologue
    const/4 v0, 0x0

    .local v0, clip1Height:I
    const/4 v1, 0x0

    .local v1, clip2Height:I
    const/4 v2, 0x0

    .local v2, videoSize:I
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    instance-of v3, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v0

    .end local p1
    :cond_0
    :goto_0
    instance-of v3, p2, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v1

    .end local p2
    :cond_1
    :goto_1
    if-le v0, v1, :cond_5

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-direct {p0, v3, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    :cond_2
    :goto_2
    return v2

    .restart local p1
    .restart local p2
    :cond_3
    instance-of v3, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_0

    check-cast p1, Landroid/media/videoeditor/MediaImageItem;

    .end local p1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v0

    goto :goto_0

    :cond_4
    instance-of v3, p2, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_1

    check-cast p2, Landroid/media/videoeditor/MediaImageItem;

    .end local p2
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-direct {p0, v3, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    goto :goto_2

    .restart local p1
    .restart local p2
    :cond_6
    if-nez p1, :cond_9

    if-eqz p2, :cond_9

    instance-of v3, p2, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_8

    invoke-virtual {p2}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v1

    .end local p2
    :cond_7
    :goto_3
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-direct {p0, v3, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    goto :goto_2

    .restart local p2
    :cond_8
    instance-of v3, p2, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_7

    check-cast p2, Landroid/media/videoeditor/MediaImageItem;

    .end local p2
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v1

    goto :goto_3

    .restart local p2
    :cond_9
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    instance-of v3, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v0

    .end local p1
    :cond_a
    :goto_4
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-direct {p0, v3, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    goto :goto_2

    .restart local p1
    :cond_b
    instance-of v3, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_a

    check-cast p1, Landroid/media/videoeditor/MediaImageItem;

    .end local p1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v0

    goto :goto_4
.end method

.method private static native getVersion()Landroid/media/videoeditor/MediaArtistNativeHelper$Version;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private lock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const-string v0, "MediaArtistNativeHelper"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "lock: grabbing semaphore"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    const-string v0, "MediaArtistNativeHelper"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "lock: grabbed semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private native nativeClearSurface(Landroid/view/Surface;)V
.end method

.method private native nativeGenerateAudioGraph(Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method private native nativeGenerateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeGenerateRawAudio(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeGetPixels(Ljava/lang/String;[IIIJ)I
.end method

.method private native nativeGetPixelsList(Ljava/lang/String;[IIIIJJ[ILandroid/media/videoeditor/MediaArtistNativeHelper$NativeGetPixelsListCallback;)I
.end method

.method private native nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeRenderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;IIIIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeRenderPreviewFrame(Landroid/view/Surface;JII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeStartPreview(Landroid/view/Surface;JJIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeStopPreview()I
.end method

.method private onAudioGraphExtractProgressUpdate(IZ)V
    .locals 1
    .parameter "progress"
    .parameter "isVideo"

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

    invoke-interface {v0, p1}, Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;->onProgress(I)V

    :cond_0
    return-void
.end method

.method private onPreviewProgressUpdate(IZZLjava/lang/String;II)V
    .locals 5
    .parameter "progress"
    .parameter "isFinished"
    .parameter "updateOverlay"
    .parameter "filename"
    .parameter "renderingMode"
    .parameter "error"

    .prologue
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mIsFirstProgress:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v1, v2}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onStart(Landroid/media/videoeditor/VideoEditor;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mIsFirstProgress:Z

    :cond_0
    if-eqz p3, :cond_4

    new-instance v0, Landroid/media/videoeditor/VideoEditor$OverlayData;

    invoke-direct {v0}, Landroid/media/videoeditor/VideoEditor$OverlayData;-><init>()V

    .local v0, overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;
    if-eqz p4, :cond_3

    invoke-static {p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Landroid/media/videoeditor/VideoEditor$OverlayData;->set(Landroid/graphics/Bitmap;I)V

    :goto_0
    if-eqz p1, :cond_1

    int-to-long v1, p1

    iput-wide v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgress:J

    :cond_1
    if-eqz p2, :cond_5

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v1, v2}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onStop(Landroid/media/videoeditor/VideoEditor;)V

    .end local v0           #overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;
    :cond_2
    :goto_1
    return-void

    .restart local v0       #overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;
    :cond_3
    invoke-virtual {v0}, Landroid/media/videoeditor/VideoEditor$OverlayData;->setClear()V

    goto :goto_0

    .end local v0           #overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;
    goto :goto_0

    :cond_5
    if-eqz p6, :cond_6

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v1, v2, p6}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onError(Landroid/media/videoeditor/VideoEditor;I)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onProgress(Landroid/media/videoeditor/VideoEditor;JLandroid/media/videoeditor/VideoEditor$OverlayData;)V

    goto :goto_1
.end method

.method private onProgressUpdate(II)V
    .locals 5
    .parameter "taskId"
    .parameter "progress"

    .prologue
    const/4 v4, 0x1

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-ge v2, p2, :cond_0

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mOutputFilename:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p2}, Landroid/media/videoeditor/VideoEditor$ExportProgressListener;->onProgress(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;I)V

    iput p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, actualProgress:I
    const/4 v0, 0x0

    .local v0, action:I
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    if-ne v2, v4, :cond_2

    const/4 v0, 0x2

    :goto_1
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const-string v2, "MediaArtistNativeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR unexpected State="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    move v1, p2

    :cond_3
    :goto_2
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eq v2, v1, :cond_4

    if-eqz v1, :cond_4

    iput v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    invoke-interface {v2, v3, v0, v1}, Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;->onProgress(Ljava/lang/Object;II)V

    :cond_4
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    invoke-interface {v2, v3, v0, v1}, Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;->onProgress(Ljava/lang/Object;II)V

    :cond_5
    iput v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    goto :goto_0

    :pswitch_2
    move v1, p2

    goto :goto_2

    :pswitch_3
    move v1, p2

    goto :goto_2

    :pswitch_4
    if-nez p2, :cond_6

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    iput v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    :cond_6
    if-nez p2, :cond_7

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz v2, :cond_3

    :cond_7
    div-int/lit8 v1, p2, 0x4

    goto :goto_2

    :pswitch_5
    if-nez p2, :cond_8

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz v2, :cond_3

    :cond_8
    div-int/lit8 v2, p2, 0x4

    add-int/lit8 v1, v2, 0x19

    goto :goto_2

    :pswitch_6
    if-nez p2, :cond_9

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz v2, :cond_3

    :cond_9
    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v1, v2, 0x32

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private populateBackgroundMusicProperties(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, mediaBGMList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v6, :cond_0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/AudioTrack;

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    :goto_0
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    if-eqz v2, :cond_2

    new-instance v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;-><init>()V

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    invoke-direct {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;-><init>()V

    .local v1, mAudioProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->pFile:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->Id:Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v2}, Landroid/media/videoeditor/AudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput-boolean v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->bRemoveOriginal:Z

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioChannels:I

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->channels:I

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioSamplingFrequency:I

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->Fs:I

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isLooping()Z

    move-result v3

    iput-boolean v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->loop:Z

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->ExtendedFs:I

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->pFile:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getStartTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->startMs:J

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryBeginTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->beginCutTime:J

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryEndTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->endCutTime:J

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v2}, Landroid/media/videoeditor/AudioTrack;->isMuted()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->volume:I

    :goto_1
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->fileType:I

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckedTrackVolume()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->ducking_lowVolume:I

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckingThreshhold()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->ducking_threshold:I

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isDuckingEnabled()Z

    move-result v3

    iput-boolean v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->bInDucking_enable:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AudioPcm.pcm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->pcmFilePath:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    new-instance v3, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    invoke-direct {v3}, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;-><init>()V

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->file:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->fileType:I

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getStartTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->insertionTime:J

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getVolume()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->volumePercent:I

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryBeginTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->beginLoop:J

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryEndTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->endLoop:J

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isDuckingEnabled()Z

    move-result v3

    iput-boolean v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->enableDucking:Z

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckingThreshhold()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->duckingThreshold:I

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckedTrackVolume()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->lowVolume:I

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isLooping()Z

    move-result v3

    iput-boolean v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->isLooping:Z

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v3, 0x64

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->primaryTrackVolume:I

    iput v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .end local v1           #mAudioProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :goto_2
    return-void

    :cond_0
    iput-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    goto/16 :goto_0

    .restart local v1       #mAudioProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported file or file not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getVolume()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->volume:I

    goto/16 :goto_1

    .end local v1           #mAudioProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :cond_2
    iput-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iput-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    goto :goto_2
.end method

.method private populateEffects(Landroid/media/videoeditor/MediaItem;[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;IIII)I
    .locals 9
    .parameter "m"
    .parameter "effectSettings"
    .parameter "i"
    .parameter "beginCutTime"
    .parameter "endCutTime"
    .parameter "storyBoardTime"

    .prologue
    const-wide/16 v7, 0x0

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    int-to-long v5, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    long-to-int p4, v5

    int-to-long v5, p5

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int p5, v5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v1

    .local v1, effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v4

    .local v4, overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/Overlay;

    .local v3, overlay:Landroid/media/videoeditor/Overlay;
    check-cast v3, Landroid/media/videoeditor/OverlayFrame;

    .end local v3           #overlay:Landroid/media/videoeditor/Overlay;
    invoke-virtual {p0, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getOverlaySettings(Landroid/media/videoeditor/OverlayFrame;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-result-object v5

    aput-object v5, p2, p3

    aget-object v5, p2, p3

    invoke-virtual {p0, v5, p4, p5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V

    aget-object v5, p2, p3

    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    add-int/2addr v6, p6

    iput v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .end local v1           #effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    int-to-long v5, p5

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int p5, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    int-to-long v5, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    long-to-int p4, v5

    goto :goto_0

    .restart local v1       #effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Effect;

    .local v0, effect:Landroid/media/videoeditor/Effect;
    instance-of v5, v0, Landroid/media/videoeditor/EffectColor;

    if-eqz v5, :cond_4

    check-cast v0, Landroid/media/videoeditor/EffectColor;

    .end local v0           #effect:Landroid/media/videoeditor/Effect;
    invoke-virtual {p0, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getEffectSettings(Landroid/media/videoeditor/EffectColor;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-result-object v5

    aput-object v5, p2, p3

    aget-object v5, p2, p3

    invoke-virtual {p0, v5, p4, p5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V

    aget-object v5, p2, p3

    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    add-int/2addr v6, p6

    iput v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_5
    return p3
.end method

.method private populateMediaItemProperties(Landroid/media/videoeditor/MediaItem;II)I
    .locals 2
    .parameter "m"
    .parameter "index"
    .parameter "maxHeight"

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    aput-object v1, v0, p2

    instance-of v0, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaVideoItem;->getVideoClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v0

    aput-object v0, v1, p2

    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v0

    if-le v0, p3, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result p3

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v0, v0, p2

    check-cast p1, Landroid/media/videoeditor/MediaImageItem;

    .end local p1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaImageItem;->getDecodedImageFileName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v0, v0, p2

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p2

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    :cond_1
    return p3

    .restart local p1
    :cond_2
    instance-of v0, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaImageItem;->getImageClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v0

    aput-object v0, v1, p2

    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v0

    if-le v0, p3, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result p3

    goto :goto_0
.end method

.method private previewFrameEditInfo(Ljava/lang/String;I)V
    .locals 0
    .parameter "filename"
    .parameter "renderingMode"

    .prologue
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    iput p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewRenderingMode:I

    return-void
.end method

.method private native release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native stopEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private unlock()V
    .locals 2

    .prologue
    const-string v0, "MediaArtistNativeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "unlock: releasing semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method


# virtual methods
.method GetClosestVideoFrameRate(I)I
    .locals 3
    .parameter "averageFrameRate"

    .prologue
    const/4 v0, 0x7

    const/4 v1, 0x5

    const/16 v2, 0x19

    if-lt p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v2, 0x14

    if-lt p1, v2, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/16 v2, 0xf

    if-lt p1, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v2, 0xc

    if-lt p1, v2, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/16 v2, 0xa

    if-lt p1, v2, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    if-lt p1, v0, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    if-lt p1, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V
    .locals 4
    .parameter "lEffect"
    .parameter "beginCutTime"
    .parameter "endCutTime"

    .prologue
    const/4 v1, 0x0

    .local v1, effectStartTime:I
    const/4 v0, 0x0

    .local v0, effectDuration:I
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-gt v2, p3, :cond_0

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-gt v2, p2, :cond_2

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-ge v2, p2, :cond_3

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-le v2, p2, :cond_3

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-gt v2, p3, :cond_3

    const/4 v1, 0x0

    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    sub-int v2, p2, v2

    sub-int/2addr v0, v2

    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    goto :goto_0

    :cond_3
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-lt v2, p2, :cond_4

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-gt v2, p3, :cond_4

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    sub-int v1, v2, p2

    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    goto :goto_0

    :cond_4
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-lt v2, p2, :cond_5

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-le v2, p3, :cond_5

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    sub-int v1, v2, p2

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    sub-int v0, p3, v2

    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    goto :goto_0

    :cond_5
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-ge v2, p2, :cond_1

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-le v2, p3, :cond_1

    const/4 v1, 0x0

    sub-int v0, p3, p2

    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    goto :goto_0
.end method

.method clearPreviewSurface(Landroid/view/Surface;)V
    .locals 0
    .parameter "surface"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeClearSurface(Landroid/view/Surface;)V

    return-void
.end method

.method doPreview(Landroid/view/Surface;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V
    .locals 11
    .parameter "surface"
    .parameter "fromMs"
    .parameter "toMs"
    .parameter "loop"
    .parameter "callbackAfterFrameCount"
    .parameter "listener"

    .prologue
    iput-wide p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgress:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mIsFirstProgress:Z

    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    if-nez v1, :cond_2

    const/4 v9, 0x0

    .local v9, clipCnt:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    array-length v1, v1

    if-ge v9, v1, :cond_1

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, v9

    iget v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v2, v2, v9

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    iput-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {p0, v1, v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p7

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeStartPreview(Landroid/view/Surface;JJIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception v10

    .local v10, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Illegal argument exception in nativeStartPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v10

    .end local v10           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v10

    .local v10, ex:Ljava/lang/IllegalStateException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Illegal state exception in nativeStartPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v10

    .end local v10           #ex:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v10

    .local v10, ex:Ljava/lang/RuntimeException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Runtime exception in nativeStartPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v10

    .end local v9           #clipCnt:I
    .end local v10           #ex:Ljava/lang/RuntimeException;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "generatePreview is in progress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method export(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    .locals 18
    .parameter "filePath"
    .parameter "projectDir"
    .parameter "height"
    .parameter "bitrate"
    .parameter
    .parameter
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Transition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;",
            "Landroid/media/videoeditor/VideoEditor$ExportProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, mediaItemsList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .local p6, mediaTransitionList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Transition;>;"
    .local p7, mediaBGMList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    const/4 v11, 0x0

    .local v11, outBitrate:I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/media/videoeditor/MediaArtistNativeHelper;->previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V

    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    const/4 v13, 0x0

    .local v13, outVideoProfile:I
    const/4 v12, 0x0

    .local v12, outVideoLevel:I
    invoke-static {}, Landroid/media/videoeditor/VideoEditorProfile;->get()Landroid/media/videoeditor/VideoEditorProfile;

    move-result-object v14

    .local v14, veProfile:Landroid/media/videoeditor/VideoEditorProfile;
    if-nez v14, :cond_0

    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "Can\'t get the video editor profile"

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    iget v9, v14, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameHeight:I

    .local v9, maxOutputHeight:I
    iget v10, v14, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameWidth:I

    .local v10, maxOutputWidth:I
    move/from16 v0, p3

    if-le v0, v9, :cond_1

    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unsupported export resolution. Supported maximum width:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " height:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " current height:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    invoke-static {v15}, Landroid/media/videoeditor/VideoEditorProfile;->getExportProfile(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    invoke-static {v15}, Landroid/media/videoeditor/VideoEditorProfile;->getExportLevel(I)I

    move-result v12

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    sparse-switch p4, :sswitch_data_0

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Argument Bitrate incorrect"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :sswitch_0
    const/16 v11, 0x7d00

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v16, 0x7

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mOutputFilename:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v15}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v4

    .local v4, aspectRatio:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportAudioCodec:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v13, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoProfile:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v12, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoLevel:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v16, 0x7d00

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->maxFileSize:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v16, 0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v11, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const v16, 0x17700

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    const/4 v8, 0x0

    .local v8, index:I
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    add-int/lit8 v15, v15, -0x1

    if-ge v8, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    new-instance v16, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    invoke-direct/range {v16 .. v16}, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;-><init>()V

    aput-object v16, v15, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    aget-object v15, v15, v8

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->videoTransitionType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    aget-object v15, v15, v8

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->audioTransitionType:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v4           #aspectRatio:I
    .end local v8           #index:I
    :sswitch_1
    const v11, 0xbb80

    goto/16 :goto_0

    :sswitch_2
    const v11, 0xfa00

    goto/16 :goto_0

    :sswitch_3
    const v11, 0x17700

    goto/16 :goto_0

    :sswitch_4
    const v11, 0x1f400

    goto/16 :goto_0

    :sswitch_5
    const v11, 0x2ee00

    goto/16 :goto_0

    :sswitch_6
    const v11, 0x3e800

    goto/16 :goto_0

    :sswitch_7
    const v11, 0x5dc00

    goto/16 :goto_0

    :sswitch_8
    const v11, 0x7d000

    goto/16 :goto_0

    :sswitch_9
    const v11, 0xc3500

    goto/16 :goto_0

    :sswitch_a
    const v11, 0x1e8480

    goto/16 :goto_0

    :sswitch_b
    const v11, 0x4c4b40

    goto/16 :goto_0

    :sswitch_c
    const v11, 0x7a1200

    goto/16 :goto_0

    .restart local v4       #aspectRatio:I
    .restart local v8       #index:I
    :cond_2
    const/4 v5, 0x0

    .local v5, clipCnt:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    array-length v15, v15

    if-ge v5, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v15, v15, v5

    iget v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v15, v15, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v15, v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V

    const/4 v6, 0x0

    .local v6, err:I
    const/16 v15, 0x14

    :try_start_0
    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v6, :cond_5

    const-string v15, "MediaArtistNativeHelper"

    const-string v16, "RuntimeException for generateClip"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "generateClip failed with error="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    :catch_0
    move-exception v7

    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v15, "MediaArtistNativeHelper"

    const-string v16, "IllegalArgument for generateClip"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v7

    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .local v7, ex:Ljava/lang/IllegalStateException;
    const-string v15, "MediaArtistNativeHelper"

    const-string v16, "IllegalStateExceptiont for generateClip"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v7

    .end local v7           #ex:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v7

    .local v7, ex:Ljava/lang/RuntimeException;
    const-string v15, "MediaArtistNativeHelper"

    const-string v16, "RuntimeException for generateClip"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v7

    .end local v7           #ex:Ljava/lang/RuntimeException;
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x6d60 -> :sswitch_0
        0x9c40 -> :sswitch_1
        0xfa00 -> :sswitch_2
        0x17700 -> :sswitch_3
        0x1f400 -> :sswitch_4
        0x2ee00 -> :sswitch_5
        0x3e800 -> :sswitch_6
        0x5dc00 -> :sswitch_7
        0x7d000 -> :sswitch_8
        0xc3500 -> :sswitch_9
        0x1e8480 -> :sswitch_a
        0x4c4b40 -> :sswitch_b
        0x7a1200 -> :sswitch_c
    .end sparse-switch
.end method

.method generateAudioGraph(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/media/videoeditor/ExtractAudioWaveformProgressListener;Z)V
    .locals 6
    .parameter "uniqueId"
    .parameter "inFileName"
    .parameter "OutAudiGraphFileName"
    .parameter "frameDuration"
    .parameter "audioChannels"
    .parameter "samplesCount"
    .parameter "listener"
    .parameter "isVideo"

    .prologue
    iput-object p7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

    if-eqz p8, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".pcm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, tempPCMFileName:Ljava/lang/String;
    :goto_0
    if-eqz p8, :cond_0

    invoke-direct {p0, p2, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGenerateRawAudio(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGenerateAudioGraph(Ljava/lang/String;Ljava/lang/String;III)I

    if-eqz p8, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void

    .end local v1           #tempPCMFileName:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    .restart local v1       #tempPCMFileName:Ljava/lang/String;
    goto :goto_0
.end method

.method public generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    .locals 5
    .parameter "editSettings"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .local v0, err:I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGenerateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    move v2, v0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "Illegal Argument exception in load settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .local v1, ex:Ljava/lang/IllegalStateException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "Illegal state exception in load settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #ex:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "Runtime exception in load settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method generateEffectClip(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "lMediaItem"
    .parameter "lclipSettings"
    .parameter "e"
    .parameter "uniqueId"
    .parameter "clipNo"

    .prologue
    const/4 v2, 0x0

    .local v2, err:I
    const/4 v1, 0x0

    .local v1, editSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    const/4 v0, 0x0

    .local v0, EffectClipPath:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, outVideoProfile:I
    const/4 v4, 0x0

    .local v4, outVideoLevel:I
    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    .end local v1           #editSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    invoke-direct {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    .restart local v1       #editSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    iput-object v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    iget-object v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v7, 0x0

    iput-object v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    const/4 v7, 0x0

    iput-object v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    iget-object v7, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iput-object v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ClipEffectIntermediate"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".3gp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, tmpFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v7, 0x2

    invoke-static {v7}, Landroid/media/videoeditor/VideoEditorProfile;->getExportProfile(I)I

    move-result v5

    const/4 v7, 0x2

    invoke-static {v7}, Landroid/media/videoeditor/VideoEditorProfile;->getExportLevel(I)I

    move-result v4

    iput v5, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoProfile:I

    iput v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoLevel:I

    instance-of v7, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v7, :cond_2

    move-object v3, p1

    check-cast v3, Landroid/media/videoeditor/MediaVideoItem;

    .local v3, m:Landroid/media/videoeditor/MediaVideoItem;
    const/4 v7, 0x2

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    const/4 v7, 0x2

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    const v7, 0xfa00

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    const/16 v7, 0x7d00

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    const/4 v7, 0x2

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    const/4 v7, 0x7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    iget-object v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v7

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    iget v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    invoke-direct {p0, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result v7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    .end local v3           #m:Landroid/media/videoeditor/MediaVideoItem;
    :goto_0
    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    const/4 v7, 0x1

    if-ne p5, v7, :cond_3

    const/16 v7, 0xb

    iput v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    :cond_1
    :goto_1
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v2

    const/4 v7, 0x0

    iput v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    if-nez v2, :cond_4

    iput-object v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    const/4 v7, 0x0

    iput v7, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    return-object v0

    :cond_2
    move-object v3, p1

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    .local v3, m:Landroid/media/videoeditor/MediaImageItem;
    const v7, 0xfa00

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    const/4 v7, 0x2

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    const/4 v7, 0x2

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    const/16 v7, 0x7d00

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    const/4 v7, 0x2

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    const/4 v7, 0x7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    iget-object v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v7

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    iget v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    invoke-direct {p0, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result v7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    goto :goto_0

    .end local v3           #m:Landroid/media/videoeditor/MediaImageItem;
    :cond_3
    const/4 v7, 0x2

    if-ne p5, v7, :cond_1

    const/16 v7, 0xc

    iput v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    goto :goto_1

    :cond_4
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "preview generation cannot be completed"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method generateKenBurnsClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaImageItem;)Ljava/lang/String;
    .locals 9
    .parameter "e"
    .parameter "m"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x0

    .local v3, output:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, err:I
    const/4 v2, 0x0

    .local v2, outVideoProfile:I
    const/4 v1, 0x0

    .local v1, outVideoLevel:I
    iput-object v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iput-object v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    iput-object v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ImageClip-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".3gp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, tmpFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {v7}, Landroid/media/videoeditor/VideoEditorProfile;->getExportProfile(I)I

    move-result v2

    invoke-static {v7}, Landroid/media/videoeditor/VideoEditorProfile;->getExportLevel(I)I

    move-result v1

    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoProfile:I

    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoLevel:I

    iput-object v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    const v5, 0xfa00

    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    iput v7, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    iput v7, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    const/16 v5, 0x7d00

    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    iput v7, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    const/4 v5, 0x7

    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v5}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v5

    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v5

    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    iget v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    invoke-direct {p0, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result v5

    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    const/4 v5, 0x3

    iput v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    iput-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v0

    iput v8, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "preview generation cannot be completed"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    return-object v3
.end method

.method generateTransitionClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/Transition;)Ljava/lang/String;
    .locals 8
    .parameter "e"
    .parameter "uniqueId"
    .parameter "m1"
    .parameter "m2"
    .parameter "t"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x0

    .local v3, outputFilename:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, err:I
    const/4 v2, 0x0

    .local v2, outVideoProfile:I
    const/4 v1, 0x0

    .local v1, outVideoLevel:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".3gp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Landroid/media/videoeditor/VideoEditorProfile;->getExportProfile(I)I

    move-result v2

    invoke-static {v6}, Landroid/media/videoeditor/VideoEditorProfile;->getExportLevel(I)I

    move-result v1

    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoProfile:I

    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoLevel:I

    iput-object v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    const v4, 0xfa00

    iput v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    iput v6, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    iput v6, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    const/16 v4, 0x7d00

    iput v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    iput v6, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    const/4 v4, 0x7

    iput v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    invoke-direct {p0, p3, p4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getTransitionResolution(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)I

    move-result v4

    iput v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    iget v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    invoke-direct {p0, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result v4

    iput v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    const/16 v4, 0xd

    iput v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    iput-object p5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v0

    iput v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    if-eqz v0, :cond_1

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "preview generation cannot be completed"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    return-object v3
.end method

.method getAspectRatio(II)I
    .locals 8
    .parameter "w"
    .parameter "h"

    .prologue
    int-to-double v4, p1

    int-to-double v6, p2

    div-double v0, v4, v6

    .local v0, apRatio:D
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .local v2, bd:Ljava/math/BigDecimal;
    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    const/4 v3, 0x2

    .local v3, var:I
    const-wide v4, 0x3ffb333333333333L

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1

    const/4 v3, 0x2

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-wide v4, 0x3ff999999999999aL

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    :cond_2
    const-wide/high16 v4, 0x3ff8

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const-wide v4, 0x3ff4cccccccccccdL

    cmpl-double v4, v0, v4

    if-lez v4, :cond_4

    const/4 v3, 0x3

    goto :goto_0

    :cond_4
    const-wide v4, 0x3ff3333333333333L

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_0
.end method

.method getAudioCodecType(I)I
    .locals 1
    .parameter "codecType"

    .prologue
    const/4 v0, -0x1

    .local v0, retValue:I
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method getAudioflag()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    return v0
.end method

.method getEffectSettings(Landroid/media/videoeditor/EffectColor;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    .locals 5
    .parameter "effects"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;-><init>()V

    .local v0, effectSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getStartTime()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    invoke-direct {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getEffectColorType(Landroid/media/videoeditor/EffectColor;)I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->audioEffectType:I

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startPercent:I

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->durationPercent:I

    iput-object v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftX:I

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftY:I

    iput-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingResize:Z

    iput-object v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->text:Ljava/lang/String;

    iput-object v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textRenderingData:Ljava/lang/String;

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferWidth:I

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferHeight:I

    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    const/16 v1, 0xf

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->fiftiesFrameRate:I

    :goto_0
    iget v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    const/16 v2, 0x10b

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    const/16 v2, 0x10c

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->rgb16InputColor:I

    :cond_1
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingStartPercent:I

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingMiddlePercent:I

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingEndPercent:I

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeInTimePercent:I

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeOutTimePercent:I

    return-object v0

    :cond_2
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->fiftiesFrameRate:I

    goto :goto_0
.end method

.method getFileType(I)I
    .locals 1
    .parameter "fileType"

    .prologue
    const/4 v0, -0x1

    .local v0, retValue:I
    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0xff

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_7
    const/4 v0, 0x2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_7
        0x3 -> :sswitch_5
        0x5 -> :sswitch_3
        0x8 -> :sswitch_4
        0xa -> :sswitch_6
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method getFrameRate(I)I
    .locals 1
    .parameter "fps"

    .prologue
    const/4 v0, -0x1

    .local v0, retValue:I
    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x14

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x19

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x1e

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method getGeneratePreview()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    return v0
.end method

.method getMediaItemFileType(I)I
    .locals 1
    .parameter "fileType"

    .prologue
    const/4 v0, -0x1

    .local v0, retValue:I
    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0xff

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xa

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
        0x8 -> :sswitch_4
        0xa -> :sswitch_5
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method getMediaItemRenderingMode(I)I
    .locals 1
    .parameter "renderingMode"

    .prologue
    const/4 v0, -0x1

    .local v0, retValue:I
    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method native getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method getOverlaySettings(Landroid/media/videoeditor/OverlayFrame;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    .locals 17
    .parameter "overlay"

    .prologue
    new-instance v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-direct {v12}, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;-><init>()V

    .local v12, effectSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    const/4 v1, 0x0

    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getStartTime()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    const/16 v2, 0x106

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->audioEffectType:I

    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startPercent:I

    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->durationPercent:I

    const/4 v2, 0x0

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    iget-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    if-nez v2, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/media/videoeditor/OverlayFrame;->save(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_4

    const/4 v2, 0x6

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->bitmapType:I

    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    iget v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    new-array v2, v2, [I

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    const/4 v6, 0x0

    .local v6, tmp:I
    const/4 v14, 0x0

    .local v14, maxAlpha:S
    const/16 v16, 0xff

    .local v16, minAlpha:S
    const/4 v9, 0x0

    .local v9, alpha:S
    :goto_2
    iget v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    if-ge v6, v2, :cond_8

    iget-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    const/4 v3, 0x0

    iget v4, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    const/4 v5, 0x0

    iget v7, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    iget v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    if-ge v13, v2, :cond_7

    iget-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    aget v2, v2, v13

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-short v9, v2

    if-le v9, v14, :cond_2

    move v14, v9

    :cond_2
    move/from16 v0, v16

    if-ge v9, v0, :cond_3

    move/from16 v16, v9

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .end local v6           #tmp:I
    .end local v9           #alpha:S
    .end local v13           #i:I
    .end local v14           #maxAlpha:S
    .end local v16           #minAlpha:S
    :catch_0
    move-exception v11

    .local v11, e:Ljava/io/IOException;
    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "getOverlaySettings : File not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v11           #e:Ljava/io/IOException;
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_5

    const/4 v2, 0x5

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->bitmapType:I

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_6

    const/4 v2, 0x4

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->bitmapType:I

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Bitmap config not supported"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local v6       #tmp:I
    .restart local v9       #alpha:S
    .restart local v13       #i:I
    .restart local v14       #maxAlpha:S
    .restart local v16       #minAlpha:S
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v13           #i:I
    :cond_8
    add-int v2, v14, v16

    div-int/lit8 v2, v2, 0x2

    int-to-short v9, v2

    mul-int/lit8 v2, v9, 0x64

    div-int/lit16 v2, v2, 0x100

    int-to-short v9, v2

    iput v9, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingEndPercent:I

    iput v9, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingMiddlePercent:I

    iput v9, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingStartPercent:I

    const/16 v2, 0x64

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeInTimePercent:I

    const/16 v2, 0x64

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeOutTimePercent:I

    const/4 v2, 0x0

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeWidth()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    iget v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    if-nez v2, :cond_9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeHeight()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    iget v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    if-nez v2, :cond_a

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    .end local v6           #tmp:I
    .end local v9           #alpha:S
    .end local v14           #maxAlpha:S
    .end local v16           #minAlpha:S
    :cond_a
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftX:I

    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftY:I

    const/4 v2, 0x1

    iput-boolean v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingResize:Z

    const/4 v2, 0x0

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->text:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textRenderingData:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferWidth:I

    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferHeight:I

    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->fiftiesFrameRate:I

    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->rgb16InputColor:I

    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    instance-of v2, v2, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedClipHeight()I

    move-result v15

    .local v15, mediaItemHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedClipWidth()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAspectRatio(II)I

    move-result v10

    .local v10, aspectRatio:I
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingScaledSize:I

    return-object v12

    .end local v10           #aspectRatio:I
    .end local v15           #mediaItemHeight:I
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v15

    .restart local v15       #mediaItemHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v10

    .restart local v10       #aspectRatio:I
    goto :goto_4

    .end local v10           #aspectRatio:I
    .end local v15           #mediaItemHeight:I
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v10

    .restart local v10       #aspectRatio:I
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v15

    .restart local v15       #mediaItemHeight:I
    goto :goto_4
.end method

.method getPixels(Ljava/lang/String;IIJI)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "filename"
    .parameter "width"
    .parameter "height"
    .parameter "timeMs"
    .parameter "videoRotation"

    .prologue
    const/4 v0, 0x1

    new-array v12, v0, [Landroid/graphics/Bitmap;

    .local v12, result:[Landroid/graphics/Bitmap;
    const/4 v8, 0x1

    const/4 v0, 0x1

    new-array v9, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v9, v0

    new-instance v10, Landroid/media/videoeditor/MediaArtistNativeHelper$1;

    invoke-direct {v10, p0, v12}, Landroid/media/videoeditor/MediaArtistNativeHelper$1;-><init>(Landroid/media/videoeditor/MediaArtistNativeHelper;[Landroid/graphics/Bitmap;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p4

    move/from16 v11, p6

    invoke-virtual/range {v0 .. v11}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixelsList(Ljava/lang/String;IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;I)V

    const/4 v0, 0x0

    aget-object v0, v12, v0

    return-object v0
.end method

.method getPixelsList(Ljava/lang/String;IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;I)V
    .locals 25
    .parameter "filename"
    .parameter "width"
    .parameter "height"
    .parameter "startMs"
    .parameter "endMs"
    .parameter "thumbnailCount"
    .parameter "indices"
    .parameter "callback"
    .parameter "videoRotation"

    .prologue
    add-int/lit8 v1, p2, 0x1

    and-int/lit8 v10, v1, -0x2

    .local v10, decWidth:I
    add-int/lit8 v1, p3, 0x1

    and-int/lit8 v11, v1, -0x2

    .local v11, decHeight:I
    mul-int v7, v10, v11

    .local v7, thumbnailSize:I
    new-array v6, v7, [I

    .local v6, decArray:[I
    invoke-static {v7}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v5

    .local v5, decBuffer:Ljava/nio/IntBuffer;
    move/from16 v0, p2

    if-ne v10, v0, :cond_0

    move/from16 v0, p3

    if-ne v11, v0, :cond_0

    if-eqz p11, :cond_3

    :cond_0
    const/4 v8, 0x1

    .local v8, needToMassage:Z
    :goto_0
    if-eqz v8, :cond_4

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .local v9, tmpBitmap:Landroid/graphics/Bitmap;
    :goto_1
    const/16 v1, 0x5a

    move/from16 v0, p11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    move/from16 v0, p11

    if-ne v0, v1, :cond_5

    :cond_1
    const/16 v24, 0x1

    .local v24, needToSwapWH:Z
    :goto_2
    if-eqz v24, :cond_6

    move/from16 v3, p3

    .local v3, outWidth:I
    :goto_3
    if-eqz v24, :cond_7

    move/from16 v4, p2

    .local v4, outHeight:I
    :goto_4
    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$2;

    move-object/from16 v2, p0

    move/from16 v12, p11

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Landroid/media/videoeditor/MediaArtistNativeHelper$2;-><init>(Landroid/media/videoeditor/MediaArtistNativeHelper;IILjava/nio/IntBuffer;[IIZLandroid/graphics/Bitmap;IIILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;)V

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v14, v6

    move v15, v10

    move/from16 v16, v11

    move/from16 v17, p8

    move-wide/from16 v18, p4

    move-wide/from16 v20, p6

    move-object/from16 v22, p9

    move-object/from16 v23, v1

    invoke-direct/range {v12 .. v23}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGetPixelsList(Ljava/lang/String;[IIIIJJ[ILandroid/media/videoeditor/MediaArtistNativeHelper$NativeGetPixelsListCallback;)I

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void

    .end local v3           #outWidth:I
    .end local v4           #outHeight:I
    .end local v8           #needToMassage:Z
    .end local v9           #tmpBitmap:Landroid/graphics/Bitmap;
    .end local v24           #needToSwapWH:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .restart local v8       #needToMassage:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .restart local v9       #tmpBitmap:Landroid/graphics/Bitmap;
    :cond_5
    const/16 v24, 0x0

    goto :goto_2

    .restart local v24       #needToSwapWH:Z
    :cond_6
    move/from16 v3, p2

    goto :goto_3

    .restart local v3       #outWidth:I
    :cond_7
    move/from16 v4, p3

    goto :goto_4
.end method

.method getProjectAudioTrackPCMFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    return-object v0
.end method

.method getProjectPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    return-object v0
.end method

.method getSlideSettingsDirection(I)I
    .locals 1
    .parameter "slideDirection"

    .prologue
    const/4 v0, -0x1

    .local v0, retValue:I
    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getVideoCodecType(I)I
    .locals 1
    .parameter "codecType"

    .prologue
    const/4 v0, -0x1

    .local v0, retValue:I
    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

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

.method getVideoTransitionBehaviour(I)I
    .locals 1
    .parameter "transitionType"

    .prologue
    const/4 v0, -0x1

    .local v0, retValue:I
    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method initClipSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V
    .locals 2
    .parameter "lclipSettings"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutPercent:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutPercent:I

    iput-boolean v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomEnabled:Z

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentStart:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXStart:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYStart:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentEnd:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXEnd:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYEnd:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rotationDegree:I

    return-void
.end method

.method invalidatePcmFile()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method nativeHelperGetAspectRatio()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v0

    return v0
.end method

.method previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V
    .locals 26
    .parameter
    .parameter
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Transition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;",
            "Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, mediaItemsList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .local p2, mediaTransitionList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Transition;>;"
    .local p3, mediaBGMList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    if-eqz v3, :cond_d

    const/16 v18, 0x0

    .local v18, previewIndex:I
    const/16 v20, 0x0

    .local v20, totalEffects:I
    const/4 v9, 0x0

    .local v9, storyBoardTime:I
    const/16 v17, 0x0

    .local v17, maxHeight:I
    const/4 v7, 0x0

    .local v7, beginCutTime:I
    const/4 v8, 0x0

    .local v8, endCutTime:I
    const/4 v6, 0x0

    .local v6, effectIndex:I
    const/16 v16, 0x0

    .local v16, lTransition:Landroid/media/videoeditor/Transition;
    const/4 v4, 0x0

    .local v4, lMediaItem:Landroid/media/videoeditor/MediaItem;
    new-instance v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v3}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    new-instance v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    invoke-direct {v3}, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/media/videoeditor/Transition;

    .local v21, transition:Landroid/media/videoeditor/Transition;
    invoke-virtual/range {v21 .. v21}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v3, v22, v24

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    goto :goto_0

    .end local v21           #transition:Landroid/media/videoeditor/Transition;
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getTotalEffects(Ljava/util/List;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    new-array v5, v5, [Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    iput-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move/from16 v0, v20

    new-array v5, v0, [Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iput-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    new-array v5, v5, [Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    iput-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_5

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #lMediaItem:Landroid/media/videoeditor/MediaItem;
    check-cast v4, Landroid/media/videoeditor/MediaItem;

    .restart local v4       #lMediaItem:Landroid/media/videoeditor/MediaItem;
    instance-of v3, v4, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_7

    move-object v3, v4

    check-cast v3, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v7, v0

    move-object v3, v4

    check-cast v3, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v8, v0

    :cond_2
    :goto_2
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v3, v22, v24

    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v1, v3, v5, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateTransition(Landroid/media/videoeditor/Transition;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v3, v3, v18

    iget v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    add-int/2addr v9, v3

    add-int/lit8 v18, v18, 0x1

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v4, v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->populateMediaItemProperties(Landroid/media/videoeditor/MediaItem;II)I

    move-result v17

    instance-of v3, v4, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_b

    const/16 v19, 0x0

    .local v19, tmpCnt:I
    const/4 v10, 0x0

    .local v10, bEffectKbPresent:Z
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v12

    .local v12, effectList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_4

    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v3, :cond_8

    const/4 v10, 0x1

    :cond_4
    if-eqz v10, :cond_a

    :try_start_0
    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v3

    aput-object v3, v5, v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10           #bEffectKbPresent:Z
    .end local v12           #effectList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v19           #tmpCnt:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v3, v3, v18

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->Id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v4, v3, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->checkOddSizeImage(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v4, v3, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustVolume(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v3, v3, v18

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustMediaItemBoundary(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;Landroid/media/videoeditor/MediaItem;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/media/videoeditor/MediaArtistNativeHelper;->populateEffects(Landroid/media/videoeditor/MediaItem;[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;IIII)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v3, v3, v18

    iget v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    add-int/2addr v9, v3

    add-int/lit8 v18, v18, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v14, v3, :cond_c

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v16

    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v3, v22, v24

    if-lez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v1, v3, v5, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateTransition(Landroid/media/videoeditor/Transition;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v5}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v5

    iput v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->populateBackgroundMusicProperties(Ljava/util/List;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v5, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .end local v14           #i:I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "preview generation cannot be completed"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .restart local v14       #i:I
    :cond_7
    instance-of v3, v4, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_2

    const/4 v7, 0x0

    move-object v3, v4

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getTimelineDuration()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v8, v0

    goto/16 :goto_2

    .restart local v10       #bEffectKbPresent:Z
    .restart local v12       #effectList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .restart local v19       #tmpCnt:I
    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledImageFileName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v3

    aput-object v3, v5, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v3, v18

    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v3

    iput v3, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v3, v18

    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v3

    iput v3, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v11

    .local v11, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported file or file not found"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v11           #e:Ljava/lang/Exception;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledImageFileName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v3

    aput-object v3, v5, v18
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v3, v18

    move-object v3, v4

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v3

    iput v3, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v3, v18

    move-object v3, v4

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v3

    iput v3, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    goto/16 :goto_4

    :catch_1
    move-exception v11

    .restart local v11       #e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported file or file not found"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v10           #bEffectKbPresent:Z
    .end local v11           #e:Ljava/lang/Exception;
    .end local v12           #effectList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v19           #tmpCnt:I
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v5

    aput-object v5, v3, v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v11

    .restart local v11       #e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported file or file not found"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v11           #e:Ljava/lang/Exception;
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :catch_3
    move-exception v13

    .local v13, ex:Ljava/lang/IllegalArgumentException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v5, "Illegal argument exception in nativePopulateSettings"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v13

    .end local v13           #ex:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v13

    .local v13, ex:Ljava/lang/IllegalStateException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v5, "Illegal state exception in nativePopulateSettings"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v13

    .end local v13           #ex:Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v13

    .local v13, ex:Ljava/lang/RuntimeException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v5, "Runtime exception in nativePopulateSettings"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v13

    .end local v4           #lMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v6           #effectIndex:I
    .end local v7           #beginCutTime:I
    .end local v8           #endCutTime:I
    .end local v9           #storyBoardTime:I
    .end local v13           #ex:Ljava/lang/RuntimeException;
    .end local v14           #i:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #lTransition:Landroid/media/videoeditor/Transition;
    .end local v17           #maxHeight:I
    .end local v18           #previewIndex:I
    .end local v20           #totalEffects:I
    :cond_d
    return-void
.end method

.method releaseNativeHelper()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->release()V

    return-void
.end method

.method renderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;JII)J
    .locals 12
    .parameter "surface"
    .parameter "filepath"
    .parameter "time"
    .parameter "framewidth"
    .parameter "frameheight"

    .prologue
    const-wide/16 v10, 0x0

    .local v10, timeMs:J
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-wide v7, p3

    :try_start_0
    invoke-direct/range {v0 .. v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeRenderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;IIIIJ)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    int-to-long v10, v0

    return-wide v10

    :catch_0
    move-exception v9

    .local v9, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "Illegal Argument exception in renderMediaItemPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v9

    .end local v9           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v9

    .local v9, ex:Ljava/lang/IllegalStateException;
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "Illegal state exception in renderMediaItemPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v9

    .end local v9           #ex:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v9

    .local v9, ex:Ljava/lang/RuntimeException;
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "Runtime exception in renderMediaItemPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v9
.end method

.method renderPreviewFrame(Landroid/view/Surface;JIILandroid/media/videoeditor/VideoEditor$OverlayData;)J
    .locals 7
    .parameter "surface"
    .parameter "time"
    .parameter "surfaceWidth"
    .parameter "surfaceHeight"
    .parameter "overlayData"

    .prologue
    iget-boolean v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    if-eqz v4, :cond_1

    const-string v4, "MediaArtistNativeHelper"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "Call generate preview first"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Call generate preview first"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const-wide/16 v2, 0x0

    .local v2, timeMs:J
    const/4 v0, 0x0

    .local v0, clipCnt:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v4, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v4, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v4, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v4, v4, v0

    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v5, v5, v0

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    iput-object v5, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    const/4 v4, 0x0

    iput v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewRenderingMode:I

    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {p0, v4, v5, v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V

    invoke-direct/range {p0 .. p5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeRenderPreviewFrame(Landroid/view/Surface;JII)I

    move-result v4

    int-to-long v2, v4

    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewRenderingMode:I

    invoke-virtual {p6, v4, v5}, Landroid/media/videoeditor/VideoEditor$OverlayData;->set(Landroid/graphics/Bitmap;I)V

    :goto_1
    return-wide v2

    :cond_4
    invoke-virtual {p6}, Landroid/media/videoeditor/VideoEditor$OverlayData;->setClear()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "Illegal Argument exception in nativeRenderPreviewFrame"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .local v1, ex:Ljava/lang/IllegalStateException;
    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "Illegal state exception in nativeRenderPreviewFrame"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    .end local v1           #ex:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "Runtime exception in nativeRenderPreviewFrame"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method

.method setAudioCodec(I)V
    .locals 0
    .parameter "codec"

    .prologue
    iput p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportAudioCodec:I

    return-void
.end method

.method setAudioflag(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AudioPcm.pcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    return-void
.end method

.method setGeneratePreview(Z)V
    .locals 4
    .parameter "isRequired"

    .prologue
    const/4 v1, 0x0

    .local v1, semAcquiredDone:Z
    :try_start_0
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->lock()V

    const/4 v1, 0x1

    iput-boolean p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :goto_0
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->unlock()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Runtime exception in renderMediaItemPreviewFrame"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->unlock()V

    :cond_1
    throw v2
.end method

.method setVideoCodec(I)V
    .locals 0
    .parameter "codec"

    .prologue
    iput p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    return-void
.end method

.method stop(Ljava/lang/String;)V
    .locals 3
    .parameter "filename"

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->stopEncoding()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Illegal state exception in unload settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Runtime exception in unload settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method stopPreview()J
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeStopPreview()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
