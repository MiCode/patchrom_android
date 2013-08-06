.class public Lcom/mediatek/audioprofile/AudioProfileState;
.super Ljava/lang/Object;
.source "AudioProfileState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/AudioProfileState$1;,
        Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    }
.end annotation


# instance fields
.field public mAlarmVolume:I

.field public mDtmfToneEnabled:Z

.field public mHapticFeedbackEnabled:Z

.field public mLockScreenSoundEnabled:Z

.field public mNoficationUseRingVolume:Z

.field public mNotificationStream:Landroid/net/Uri;

.field public mNotificationVolume:I

.field public mProfileKey:Ljava/lang/String;

.field public mRingerStream:Landroid/net/Uri;

.field public mRingerVolume:I

.field public mSoundEffectEnbled:Z

.field public mVibrationEnabled:Z

.field public mVideoCallStream:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mProfileKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$100(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mProfileKey:Ljava/lang/String;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$200(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$300(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$400(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerVolume:I
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$500(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$600(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$700(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$800(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$900(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$1000(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$1100(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$1200(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    #getter for: Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNoficationUseRingVolume:Z
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->access$1300(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mNoficationUseRingVolume:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/audioprofile/AudioProfileState$Builder;Lcom/mediatek/audioprofile/AudioProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileState;-><init>(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "volume_ringtone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "volume_notification = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "volume_alarm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "vibrate_on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "dtmf_tone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "sound_effects = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "lockscreen_sounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "haptic_feedback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "ringtone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "notification_sound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "video_call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
