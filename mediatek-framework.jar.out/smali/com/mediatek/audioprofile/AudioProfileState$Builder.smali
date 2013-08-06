.class public Lcom/mediatek/audioprofile/AudioProfileState$Builder;
.super Ljava/lang/Object;
.source "AudioProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAlarmVolume:I

.field private mDtmfToneEnabled:Z

.field private mHapticFeedbackEnabled:Z

.field private mLockScreenSoundEnabled:Z

.field private mNoficationUseRingVolume:Z

.field private mNotificationStream:Landroid/net/Uri;

.field private mNotificationVolume:I

.field private final mProfileKey:Ljava/lang/String;

.field private mRingerStream:Landroid/net/Uri;

.field private mRingerVolume:I

.field private mSoundEffectEnbled:Z

.field private mVibrationEnabled:Z

.field private mVideoCallStream:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "profileKey"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;

    iput v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    iput v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    iput v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNoficationUseRingVolume:Z

    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mProfileKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNoficationUseRingVolume:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 2

    .prologue
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/audioprofile/AudioProfileState;-><init>(Lcom/mediatek/audioprofile/AudioProfileState$Builder;Lcom/mediatek/audioprofile/AudioProfileState$1;)V

    return-object v0
.end method

.method public dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    return-object p0
.end method

.method public hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    return-object p0
.end method

.method public lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    return-object p0
.end method

.method public ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "voiceCallUri"
    .parameter "notificationUri"
    .parameter "videoCallUri"

    .prologue
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    iput-object p2, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    iput-object p3, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;

    return-object p0
.end method

.method public soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    return-object p0
.end method

.method public vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    return-object p0
.end method

.method public volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "ringerVolume"
    .parameter "notificationVolume"
    .parameter "alarmVolume"

    .prologue
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    iput p2, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    iput p3, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    return-object p0
.end method
