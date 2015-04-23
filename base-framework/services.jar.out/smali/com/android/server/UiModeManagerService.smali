.class final Lcom/android/server/UiModeManagerService;
.super Lcom/android/server/SystemService;
.source "UiModeManagerService.java"


# static fields
.field private static final ENABLE_LAUNCH_CAR_DOCK_APP:Z = true

.field private static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeEnableFlags:I

.field private mCarModeEnabled:Z

.field private mCarModeKeepsScreenOn:Z

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field mCurUiMode:I

.field private mDefaultUiModeType:I

.field private mDeskModeKeepsScreenOn:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field private mLastBroadcastState:I

.field final mLock:Ljava/lang/Object;

.field private mNightMode:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Landroid/os/IBinder;

.field private mSetUiMode:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mSystemReady:Z

.field private mTelevision:Z

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    new-instance v0, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateAfterBroadcastLocked(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/UiModeManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->updateDockState(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/UiModeManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/UiModeManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return p1
.end method

.method private adjustStatusBarCarModeLocked()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const v10, 0x104043d

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_0

    const-string v3, "statusbar"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v3, :cond_4

    const/high16 v3, 0x80000

    :goto_0
    invoke-virtual {v5, v3}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v3, :cond_2

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_2
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v3, :cond_5

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v2, "carModeOffIntent":Landroid/content/Intent;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080638

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const v5, 0x1060059

    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v5, 0x104043e

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .local v6, "n":Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v10, v3, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .end local v2    # "carModeOffIntent":Landroid/content/Intent;
    .end local v6    # "n":Landroid/app/Notification$Builder;
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v3, v1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v10, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1
.end method

.method private static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "category"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private static isDeskDockState(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V
    .locals 15
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    const/4 v12, 0x0

    .local v12, "dockAppStarted":Z
    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .local v3, "homeIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/service/dreams/Sandman;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .local v14, "result":I
    if-ltz v14, :cond_2

    const/4 v12, 0x1

    .end local v3    # "homeIntent":Landroid/content/Intent;
    .end local v14    # "result":I
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->sendConfigurationLocked()V

    if-eqz p1, :cond_1

    if-nez v12, :cond_1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    :cond_1
    return-void

    .restart local v3    # "homeIntent":Landroid/content/Intent;
    .restart local v14    # "result":I
    :cond_2
    const/4 v0, -0x1

    if-eq v14, v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start dock app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startActivityWithConfig result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v14    # "result":I
    :catch_0
    move-exception v13

    .local v13, "ex":Landroid/os/RemoteException;
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start dock app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendConfigurationLocked()V
    .locals 3

    .prologue
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Failure communicating with activity manager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateAfterBroadcastLocked(Ljava/lang/String;II)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "enableFlags"    # I
    .param p3, "disableFlags"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "category":Ljava/lang/String;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    const-string v0, "android.intent.category.CAR_DOCK"

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    const-string v0, "android.intent.category.DESK_DOCK"

    goto :goto_0

    :cond_2
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const-string v0, "android.intent.category.HOME"

    goto :goto_0
.end method

.method private updateComputedNightModeLocked()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    .local v0, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .end local v0    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_0
    return-void
.end method

.method private updateConfigurationLocked()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .local v0, "uiMode":I
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x20

    :goto_1
    or-int/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    :cond_1
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    goto :goto_2
.end method

.method private updateDockState(I)V
    .locals 5
    .param p1, "newState"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v3, :cond_0

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Current UI Mode Service state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mDockState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLastBroadcastState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mNightMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCarModeEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mComputedNightMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mCarModeEnableFlags="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mCurUiMode=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mSetUiMode=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mHoldingConfiguration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSystemReady="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v0, :cond_0

    const-string v0, "  mTwilightService.getCurrentState()="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v4, v5}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    monitor-exit v3

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStart()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    const-string v5, "power"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .local v3, "powerManager":Landroid/os/PowerManager;
    const/16 v5, 0x1a

    sget-object v8, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/content/res/Configuration;->setToDefaults()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x10e0046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    const v5, 0x10e0044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-ne v5, v6, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    const v5, 0x10e0042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-ne v5, v6, :cond_3

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "android.hardware.type.television"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.software.leanback"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v7, v6

    :cond_1
    iput-boolean v7, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    const-string v5, "android.hardware.type.watch"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    const v5, 0x10e0047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .local v1, "defaultNightMode":I
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ui_night_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->sendConfigurationLocked()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "uimode"

    iget-object v6, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/UiModeManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    .end local v1    # "defaultNightMode":I
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    move v5, v7

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_1

    .restart local v1    # "defaultNightMode":I
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method setCarModeLocked(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "flags"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    :cond_0
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    return-void
.end method

.method updateLocked(II)V
    .locals 13
    .param p1, "enableFlags"    # I
    .param p2, "disableFlags"    # I

    .prologue
    const/4 v9, 0x0

    .local v9, "action":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "oldAction":Ljava/lang/String;
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    sget-object v12, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    if-eqz v12, :cond_1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    :cond_2
    :goto_1
    if-eqz v9, :cond_a

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "enableFlags"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "disableFlags"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    if-eqz v0, :cond_e

    :cond_4
    const/4 v11, 0x1

    .local v11, "keepScreenOn":Z
    :goto_3
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eq v11, v0, :cond_5

    if-eqz v11, :cond_f

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_5
    :goto_4
    return-void

    .end local v11    # "keepScreenOn":Z
    :cond_6
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v12, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v12, :cond_8

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_8
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    move-object v9, v12

    goto/16 :goto_1

    :cond_a
    const/4 v10, 0x0

    .local v10, "category":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_c

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_b

    const-string v10, "android.intent.category.CAR_DOCK"

    :cond_b
    :goto_5
    invoke-direct {p0, v10}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_d

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_b

    const-string v10, "android.intent.category.DESK_DOCK"

    goto :goto_5

    :cond_d
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_b

    const-string v10, "android.intent.category.HOME"

    goto :goto_5

    .end local v10    # "category":Ljava/lang/String;
    :cond_e
    const/4 v11, 0x0

    goto :goto_3

    .restart local v11    # "keepScreenOn":Z
    :cond_f
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_4
.end method

.method updateTwilight()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
