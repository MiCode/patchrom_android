.class public Lcom/mediatek/hdmi/HDMIObserver;
.super Landroid/os/UEventObserver;
.source "HDMIObserver.java"

# interfaces
.implements Lcom/mediatek/common/hdmi/IHDMIObserver;


# static fields
.field private static final HDMI_NAME_PATH:Ljava/lang/String; = "/sys/class/switch/mtk_hdmi/name"

.field private static final HDMI_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/mtk_hdmi/state"

.field private static final HDMI_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/hdmi"

.field private static final HDMI_UEVENT_MATCH_MTK:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/mtk_hdmi"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "hdmi"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHDMIName:Ljava/lang/String;

.field private mHDMIState:I

.field private final mHandler:Landroid/os/Handler;

.field private mPrevHDMIState:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    new-instance v1, Lcom/mediatek/hdmi/HDMIObserver$1;

    invoke-direct {v1, p0}, Lcom/mediatek/hdmi/HDMIObserver$1;-><init>(Lcom/mediatek/hdmi/HDMIObserver;)V

    iput-object v1, p0, Lcom/mediatek/hdmi/HDMIObserver;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/mediatek/hdmi/HDMIObserver;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "HeadsetObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/hdmi/HDMIObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/mediatek/hdmi/HDMIObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v1, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {p0, v1}, Lcom/mediatek/hdmi/HDMIObserver;->startObserving(Ljava/lang/String;)V

    const-string v1, "DEVPATH=/devices/virtual/switch/mtk_hdmi"

    invoke-virtual {p0, v1}, Lcom/mediatek/hdmi/HDMIObserver;->startObserving(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMIObserver;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/hdmi/HDMIObserver;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/hdmi/HDMIObserver;->sendIntents(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/hdmi/HDMIObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMIObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private final declared-synchronized init()V
    .locals 9

    .prologue
    monitor-enter p0

    const/16 v6, 0x400

    :try_start_0
    new-array v0, v6, [C

    .local v0, buffer:[C
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMIObserver;->mHDMIName:Ljava/lang/String;

    .local v4, newName:Ljava/lang/String;
    iget v5, p0, Lcom/mediatek/hdmi/HDMIObserver;->mHDMIState:I

    .local v5, newState:I
    iget v6, p0, Lcom/mediatek/hdmi/HDMIObserver;->mHDMIState:I

    iput v6, p0, Lcom/mediatek/hdmi/HDMIObserver;->mPrevHDMIState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    const-string v6, "/sys/class/switch/mtk_hdmi/state"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .local v2, file:Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .local v3, len:I
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v2, Ljava/io/FileReader;

    .end local v2           #file:Ljava/io/FileReader;
    const-string v6, "/sys/class/switch/mtk_hdmi/name"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .restart local v2       #file:Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, "hdmi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HDMIObserver.init(), state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2           #file:Ljava/io/FileReader;
    .end local v3           #len:I
    :goto_0
    :try_start_2
    invoke-direct {p0, v4, v5}, Lcom/mediatek/hdmi/HDMIObserver;->update(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v6, "hdmi"

    const-string v7, "This kernel does not have HDMI support"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0           #buffer:[C
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v4           #newName:Ljava/lang/String;
    .end local v5           #newState:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v0       #buffer:[C
    .restart local v4       #newName:Ljava/lang/String;
    .restart local v5       #newState:I
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "hdmi"

    const-string v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private final sendIntent(IIILjava/lang/String;)V
    .locals 5
    .parameter "HDMI"
    .parameter "HDMIState"
    .parameter "prevHDMIState"
    .parameter "HDMIName"

    .prologue
    and-int v2, p2, p1

    and-int v3, p3, p1

    if-eq v2, v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.HDMI_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .local v1, state:I
    and-int v2, p2, p1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "name"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "hdmi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HDMIObserver: Broadcast HDMI event, ACTION_HEADSET_PLUG: state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #state:I
    :cond_1
    return-void
.end method

.method private final declared-synchronized sendIntents(IILjava/lang/String;)V
    .locals 2
    .parameter "HDMIState"
    .parameter "prevHDMIState"
    .parameter "HDMIName"

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    .local v0, curHDMI:I
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mediatek/hdmi/HDMIObserver;->sendIntent(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final declared-synchronized update(Ljava/lang/String;I)V
    .locals 9
    .parameter "newName"
    .parameter "newState"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "hdmi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HDMIOberver.update(), oldState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/hdmi/HDMIObserver;->mHDMIState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p2

    .local v0, HDMIState:I
    iget v3, p0, Lcom/mediatek/hdmi/HDMIObserver;->mHDMIState:I

    or-int v2, v0, v3

    .local v2, newOrOld:I
    const/4 v1, 0x0

    .local v1, delay:I
    iget v3, p0, Lcom/mediatek/hdmi/HDMIObserver;->mHDMIState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v0, :cond_0

    add-int/lit8 v3, v2, -0x1

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/mediatek/hdmi/HDMIObserver;->mHDMIName:Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/hdmi/HDMIObserver;->mHDMIState:I

    iput v3, p0, Lcom/mediatek/hdmi/HDMIObserver;->mPrevHDMIState:I

    iput v0, p0, Lcom/mediatek/hdmi/HDMIObserver;->mHDMIState:I

    iget-object v3, p0, Lcom/mediatek/hdmi/HDMIObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v3, p0, Lcom/mediatek/hdmi/HDMIObserver;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/hdmi/HDMIObserver;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    iget v6, p0, Lcom/mediatek/hdmi/HDMIObserver;->mHDMIState:I

    iget v7, p0, Lcom/mediatek/hdmi/HDMIObserver;->mPrevHDMIState:I

    iget-object v8, p0, Lcom/mediatek/hdmi/HDMIObserver;->mHDMIName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    int-to-long v5, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #HDMIState:I
    .end local v1           #delay:I
    .end local v2           #newOrOld:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const-string v3, "hdmi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HDMIObserver: HDMI UEVENT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v3, "SWITCH_NAME"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, name:Ljava/lang/String;
    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, state:I
    const-string v3, "hdmi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HDMIObserver.onUEvent(), name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, v2}, Lcom/mediatek/hdmi/HDMIObserver;->update(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #name:Ljava/lang/String;
    .end local v2           #state:I
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "hdmi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HDMIObserver: Could not parse switch state from event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
