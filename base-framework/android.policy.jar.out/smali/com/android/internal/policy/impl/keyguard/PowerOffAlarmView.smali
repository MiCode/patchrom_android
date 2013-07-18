.class public Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;
.super Landroid/widget/RelativeLayout;
.source "PowerOffAlarmView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_SNOOZE:Ljava/lang/String; = "10"

.field private static final DEFAULT_VOLUME_BEHAVIOR:Ljava/lang/String; = "2"

.field private static final DISABLE_POWER_KEY_ACTION:Ljava/lang/String; = "android.intent.action.DISABLE_POWER_KEY"

.field private static final ENABLE_PING_AUTO_REPEAT:Z = true

.field private static final NORMAL_BOOT_ACTION:Ljava/lang/String; = "android.intent.action.normal.boot"

.field private static final NORMAL_BOOT_DONE_ACTION:Ljava/lang/String; = "android.intent.action.normal.boot.done"

.field private static final PING_AUTO_REPEAT_DELAY_MSEC:J = 0x4b0L

.field private static final PING_MESSAGE_WHAT:I = 0x65

.field protected static final SCREEN_OFF:Ljava/lang/String; = "screen_off"

.field private static final SNOOZE:Ljava/lang/String; = "android.intent.action.SNOOZE"

.field private static final TAG:Ljava/lang/String; = "PowerOffAlarm"

.field private static final UPDATE_LABEL:I = 0x63

.field private static final UPDATE_LABEL_ACTION:Ljava/lang/String; = "update.power.off.alarm.label"


# instance fields
.field private final DELAY_TIME_SECONDS:I

.field private SUPPORT_VOICE_UI:Z

.field protected mAlarm:Lcom/android/internal/policy/impl/keyguard/Alarm;

.field private mAm:Landroid/app/AlarmManager;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mContext:Landroid/content/Context;

.field private mEnableFallback:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mForgotPatternButton:Landroid/widget/Button;

.field mFullscreenStyle:Z

.field private mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDocked:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPingEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTotalFailedPatternAttempts:I

.field private mVcTips:Landroid/widget/TextView;

.field private mVcTipsContainer:Landroid/widget/LinearLayout;

.field private mVolumeBehavior:I

.field private titleView:Landroid/widget/TextView;

.field private voiceCmdListener:Lcom/mediatek/common/voicecommand/VoiceCommandListener;

.field private voiceCmdManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->DELAY_TIME_SECONDS:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mFailedPatternAttemptsSinceLastTimeout:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mTotalFailedPatternAttempts:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->titleView:Landroid/widget/TextView;

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->SUPPORT_VOICE_UI:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mIsDocked:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mPingEnabled:Z

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->SUPPORT_VOICE_UI:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->registerVoiceCmdService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->triggerPing()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->snooze()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Lcom/mediatek/common/voicecommand/IVoiceCommandManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->voiceCmdManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->powerOn()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->powerOff()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTips:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTipsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private enableEventDispatching(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .local v1, wm:Landroid/view/IWindowManager;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #wm:Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PowerOffAlarm"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private powerOff()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->unregisteVoiceCmd()V

    const-string v0, "stop_ringtone"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->sendBR(Ljava/lang/String;)V

    return-void
.end method

.method private powerOn()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->enableEventDispatching(Z)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->stopPlayAlarm()V

    const-string v0, "service.bootanim.exit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ctl.start"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PowerOffAlarm"

    const-string v1, "start boot animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.normal.boot"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->sendBR(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->unregisteVoiceCmd()V

    return-void
.end method

.method private registerVoiceCmdService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const-string v0, "voicecommand"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->voiceCmdManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->voiceCmdManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;

    const-string v1, "powerOffAlarm"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->voiceCmdListener:Lcom/mediatek/common/voicecommand/VoiceCommandListener;

    :cond_0
    return-void
.end method

.method private sendBR(Ljava/lang/String;)V
    .locals 3
    .parameter "action"

    .prologue
    const-string v0, "PowerOffAlarm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send BR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private snooze()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SNOOZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->unregisteVoiceCmd()V

    return-void
.end method

.method private stopPlayAlarm()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private triggerPing()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mPingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->ping()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private unregisteVoiceCmd()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->SUPPORT_VOICE_UI:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->voiceCmdManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->voiceCmdManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->voiceCmdListener:Lcom/mediatek/common/voicecommand/VoiceCommandListener;

    invoke-interface {v1, v2}, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;->unRegisterListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    const-string v0, "PowerOffAlarm"

    const-string v1, "onDetachedFromWindow ...."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const-string v4, "PowerOffAlarm"

    const-string v6, "onFinishInflate ... "

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->setKeepScreenOn(Z)V

    const v4, 0x20e0058

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->titleView:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->SUPPORT_VOICE_UI:Z

    if-eqz v4, :cond_0

    const v4, 0x20e005e

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTips:Landroid/widget/TextView;

    const v4, 0x20e005d

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTipsContainer:Landroid/widget/LinearLayout;

    :cond_0
    const v4, 0x20e005f

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    invoke-virtual {v4, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;)V

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->setFocusableInTouchMode(Z)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->triggerPing()V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v3, ifilter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .local v0, dockStatus:Landroid/content/Intent;
    if-eqz v0, :cond_1

    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v6, -0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mIsDocked:Z

    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "alarm_killed"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.deskclock.ALARM_DISMISS"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "update.power.off.alarm.label"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v4, :cond_4

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mAm:Landroid/app/AlarmManager;

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->enableEventDispatching(Z)V

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->SUPPORT_VOICE_UI:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->voiceCmdManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    if-eqz v4, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->voiceCmdManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->voiceCmdListener:Lcom/mediatek/common/voicecommand/VoiceCommandListener;

    invoke-interface {v4, v5}, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;->registerListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V

    const-string v4, "PowerOffAlarm"

    const-string v5, "register and send command ...... "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->voiceCmdManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;->sendCommand(Landroid/content/Context;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_2
    return-void

    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .restart local v2       #filter:Landroid/content/IntentFilter;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .parameter "reason"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->reset()V

    const-string v0, "PowerOffAlarm"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, result:Z
    return v0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "target"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mGlowPadView:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    invoke-virtual {v1, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getResourceIdForTarget(I)I

    move-result v0

    .local v0, resId:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v1, "PowerOffAlarm"

    const-string v2, "Trigger detected on unhandled resource. Skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->snooze()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->powerOff()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->powerOn()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x202004a
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 0

    .prologue
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    return-void
.end method
