.class public Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;
.super Ljava/lang/Object;
.source "VoiceUnlock.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;


# static fields
.field private static final DEBUG:Z = true

.field private static final FAIL_TYPE_NOISY:I = 0x2

.field private static final FAIL_TYPE_PASSWORD_WRONG:I = 0x1

.field private static final FAIL_TYPE_SERVICE_ERROR:I = 0x0

.field private static final FAIL_TYPE_WEAK:I = 0x3

.field private static final INTENSITY_ANIMATION_INTERVAL:I = 0x5a

.field private static final KEY_VOICE_COMMAND1:Ljava/lang/String; = "voice_command1"

.field private static final KEY_VOICE_COMMAND2:Ljava/lang/String; = "voice_command2"

.field private static final KEY_VOICE_COMMAND3:Ljava/lang/String; = "voice_command3"

.field private static final MSG_CANCEL:I = 0x5

.field private static final MSG_RECOGNIZE_FAIL:I = 0x2

.field private static final MSG_RECOGNIZE_PASS:I = 0x1

.field private static final MSG_SERVICE_ERROR:I = 0x3

.field private static final MSG_SHOW_RECOGNIZE_READY:I = 0x0

.field private static final MSG_UPDATE_INTENSITY:I = 0x4

.field private static final SOUND_ATTENUATION:I = -0x6

.field private static final SOUND_PATH:Ljava/lang/String; = "system/media/audio/notifications/Tejat.ogg"

.field private static final TAG:Ljava/lang/String; = "VoiceUnlock"


# instance fields
.field private final BACKUP_LOCK_TIMEOUT:I

.field private final TIMEOUT_AFTER_UNLOCK_FAIL:J

.field private mBoundToService:Z

.field private mCancel:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHideHandler:Landroid/os/Handler;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private mIntensityHandler:Landroid/os/Handler;

.field private mIntensityRunnable:Ljava/lang/Runnable;

.field private volatile mIsRunning:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mLaunchApp:Ljava/lang/String;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mUnlockView:Landroid/view/View;

.field private mVoiceCommandListener:Lcom/mediatek/common/voicecommand/VoiceCommandListener;

.field private mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

.field private mVoiceUnlockView:Landroid/view/View;

.field private mWave:Landroid/widget/ImageView;

.field private mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "unlockView"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->BACKUP_LOCK_TIMEOUT:I

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->TIMEOUT_AFTER_UNLOCK_FAIL:J

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mBoundToService:Z

    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mUnlockView:Landroid/view/View;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    const-string v0, "voicecommand"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;-><init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandListener:Lcom/mediatek/common/voicecommand/VoiceCommandListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$2;-><init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$3;-><init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Lcom/mediatek/common/voicecommand/IVoiceCommandManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleCancel()V
    .locals 3

    .prologue
    const-string v0, "handleCancel()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->showBackupSecurity()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->stop()Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    return-void
.end method

.method private handleUpdateIntensity(I)V
    .locals 2
    .parameter "intensity"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIntensity intensity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    add-int/lit16 p1, p1, -0xc8

    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x100

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x200

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x400

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x800

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0
.end method

.method private handleVoiceCommandFail(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x20500f2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x20500f3

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->reportFailedBiometricUnlockAttempt()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x20500f4

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->reportFailedBiometricUnlockAttempt()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x20500f5

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->reportFailedBiometricUnlockAttempt()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleVoiceCommandPass(I)V
    .locals 2
    .parameter "commandId"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->stop()Z

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVoiceCommandPass commandId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->hasOnDismissAction()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onDismissAction is null, set voice unlock dismiss action"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->pokeWakelock(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_unlock_and_launch1"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_unlock_and_launch2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_unlock_and_launch3"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleVoiceServiceReady()V
    .locals 6

    .prologue
    const/16 v2, 0x2710

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->pokeWakelock(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const/4 v0, 0x0

    .local v0, durationTime:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWaveAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityRunnable:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    const-string v0, "VoiceUnlock"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reportFailedBiometricUnlockAttempt()V
    .locals 4

    .prologue
    const-string v0, "VoiceUnlock"

    const-string v1, "handleReportFailedAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "cleanUp()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandListener:Lcom/mediatek/common/voicecommand/VoiceCommandListener;

    return-void
.end method

.method public getQuality()I
    .locals 1

    .prologue
    const/16 v0, 0x4000

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const-string v1, "Unhandled message"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceServiceReady()V

    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceCommandPass(I)V

    goto :goto_1

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceCommandFail(I)V

    goto :goto_1

    :sswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceCommandFail(I)V

    goto :goto_1

    :sswitch_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceCommandFail(I)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceCommandFail(I)V

    goto :goto_1

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleUpdateIntensity(I)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleCancel()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 2
    .parameter "voiceUnlockView"

    .prologue
    const-string v0, "initializeView()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    const v0, 0x10203bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const v1, 0x2020146

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const v1, 0x2020140

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mWave:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    const v0, 0x10203c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mCancel:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mCancel:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$4;-><init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    return v0
.end method

.method public onDismiss()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mLaunchApp:Ljava/lang/String;

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .local v0, cn:Landroid/content/ComponentName;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDismiss cn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x3400

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "can\'t dismiss keyguard on launch"

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, e:Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity not found for intent + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pokeWakelock(I)V
    .locals 4
    .parameter "millis"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, powerManager:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "keyguardScreenCallback"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public start()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start() mBoundToService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const-string v1, "start() called off of the UI thread"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    if-eqz v1, :cond_1

    const-string v1, "start() called when already running"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->startUi()V

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mBoundToService:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    if-eqz v1, :cond_2

    :try_start_0
    const-string v1, "register to service"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandListener:Lcom/mediatek/common/voicecommand/VoiceCommandListener;

    invoke-interface {v1, v2}, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;->registerListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V

    const-string v1, "sendCommand RECOGNIZE_START"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;->sendCommand(Landroid/content/Context;IILandroid/os/Bundle;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mBoundToService:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    const-string v1, "start() mIsRunning = true"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    return v6

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public startUi()V
    .locals 2

    .prologue
    const-string v0, "startUi()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "startUi() called off of the UI thread"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public stop()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop() mBoundToService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mBoundToService:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_0

    const-string v2, "stop() called off of the UI thread"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    .local v1, mWasRunning:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->stopUi()V

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mBoundToService:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    if-eqz v2, :cond_1

    :try_start_0
    const-string v2, "unregister to service"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceCommandListener:Lcom/mediatek/common/voicecommand/VoiceCommandListener;

    invoke-interface {v2, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;->unRegisterListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mBoundToService:Z

    :goto_1
    const-string v2, "stop() mIsRunning  = false"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIsRunning:Z

    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :cond_2
    const-string v2, "Attempt to unRegisterListener from Voice Unlock when not bound"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopAndShowBackup()V
    .locals 2

    .prologue
    const-string v0, "VoiceUnlock"

    const-string v1, "stopAndShowBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stopUi()V
    .locals 2

    .prologue
    const-string v0, "stopUi()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVoiceUnlockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "mVoiceUnlockView is null in stopUi()"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
