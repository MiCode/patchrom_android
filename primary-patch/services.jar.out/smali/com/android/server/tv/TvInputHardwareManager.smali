.class Lcom/android/server/tv/TvInputHardwareManager;
.super Ljava/lang/Object;
.source "TvInputHardwareManager.java"

# interfaces
.implements Lcom/android/server/tv/TvInputHal$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;,
        Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;,
        Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;,
        Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;,
        Lcom/android/server/tv/TvInputHardwareManager$Listener;,
        Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;,
        Lcom/android/server/tv/TvInputHardwareManager$Connection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/tv/TvInputHardwareManager$Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mCurrentMaxIndex:I

.field private final mHal:Lcom/android/server/tv/TvInputHal;

.field private final mHandler:Landroid/os/Handler;

.field private final mHardwareInputIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHardwareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

.field private final mHdmiDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

.field private final mHdmiInputIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdmiStateMap:Landroid/util/SparseBooleanArray;

.field private final mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

.field private final mInputMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingHdmiDeviceEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/tv/TvInputHardwareManager$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/tv/TvInputHardwareManager$Listener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/tv/TvInputHal;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputHal;-><init>(Lcom/android/server/tv/TvInputHal$Callback;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputHardwareManager$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHal;->init()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->updateVolume()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/tv/TvInputHardwareManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->getMediaStreamVolume()F

    move-result v0

    return v0
.end method

.method static synthetic access$1800([II)Z
    .locals 1
    .param p0, "x0"    # [I
    .param p1, "x1"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->intArrayContains([II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/tv/TvInputHardwareManager;I)Landroid/media/tv/TvInputHardwareInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/tv/TvInputHardwareManager;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->convertConnectedToState(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/tv/TvInputHardwareManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->handleVolumeChange(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private buildHardwareListLocked()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z
    .locals 3
    .param p1, "connection"    # Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .param p2, "callingUid"    # I
    .param p3, "resolvedUserId"    # I

    .prologue
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getCallingUidLocked()Ljava/lang/Integer;

    move-result-object v0

    .local v0, "connectionCallingUid":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getResolvedUserIdLocked()Ljava/lang/Integer;

    move-result-object v1

    .local v1, "connectionResolvedUserId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private convertConnectedToState(Z)I
    .locals 1
    .param p1, "connected"    # Z

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private findDeviceIdForInputIdLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getInfoLocked()Landroid/media/tv/TvInputInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v1    # "i":I
    :goto_1
    return v1

    .restart local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;
    .locals 4
    .param p1, "port"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .local v0, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .end local v0    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMediaStreamVolume()F
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private handleVolumeChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v5, v7

    :goto_0
    packed-switch v5, :pswitch_data_0

    sget-object v5, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string v5, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :sswitch_1
    const-string v5, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :pswitch_0
    const-string v5, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .local v4, "streamType":I
    if-ne v4, v8, :cond_1

    const-string v5, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "index":I
    iget v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    if-eq v3, v5, :cond_1

    iput v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    .end local v3    # "index":I
    :cond_2
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-virtual {v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    move-result-object v1

    .local v1, "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->onMediaStreamVolumeChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .end local v2    # "i":I
    .end local v4    # "streamType":I
    :pswitch_1
    const-string v5, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .restart local v4    # "streamType":I
    if-eq v4, v8, :cond_2

    goto :goto_1

    .restart local v2    # "i":I
    :cond_4
    :try_start_1
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73abbf83 -> :sswitch_0
        0x727c71d1 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<TT;>;TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "i":I
    :goto_1
    return v0

    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static intArrayContains([II)Z
    .locals 5
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .local v1, "element":I
    if-ne v1, p1, :cond_0

    const/4 v4, 0x1

    .end local v1    # "element":I
    :goto_1
    return v4

    .restart local v1    # "element":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "element":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private processPendingHdmiDeviceEventsLocked()V
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .local v3, "msg":Landroid/os/Message;
    iget-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v1

    .local v1, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .end local v0    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v1    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private updateVolume()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    return-void
.end method


# virtual methods
.method public acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;II)Landroid/media/tv/ITvInputHardware;
    .locals 8
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/media/tv/ITvInputHardwareCallback;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "callingUid"    # I
    .param p5, "resolvedUserId"    # I

    .prologue
    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v0, :cond_1

    sget-object v3, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid deviceId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    :goto_0
    return-object v2

    :cond_1
    invoke-direct {p0, v0, p4, p5}, Lcom/android/server/tv/TvInputHardwareManager;->checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :try_start_1
    invoke-interface {p2}, Landroid/media/tv/ITvInputHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .end local v1    # "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareLocked()Landroid/media/tv/ITvInputHardware;

    move-result-object v2

    monitor-exit v7

    goto :goto_0

    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .restart local v1    # "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->release()V

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public addHardwareTvInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 11
    .param p1, "deviceId"    # I
    .param p2, "info"    # Landroid/media/tv/TvInputInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "oldInputId":Ljava/lang/String;
    if-eqz v4, :cond_0

    sget-object v8, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trying to override previous registration: old = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", new = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v1

    .local v1, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    if-nez v1, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "inputId":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/tv/TvInputHardwareManager;->convertConnectedToState(Z)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v8, v9, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v7

    .end local v1    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v3    # "inputId":Ljava/lang/String;
    :goto_1
    return-void

    :cond_3
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-eqz v0, :cond_4

    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLocked()[Landroid/media/tv/TvStreamConfig;

    move-result-object v10

    array-length v10, v10

    if-lez v10, :cond_5

    :goto_2
    invoke-direct {p0, v5}, Lcom/android/server/tv/TvInputHardwareManager;->convertConnectedToState(Z)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v5, v6, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    monitor-exit v7

    goto :goto_1

    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v2    # "i":I
    .end local v4    # "oldInputId":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .restart local v2    # "i":I
    .restart local v4    # "oldInputId":Ljava/lang/String;
    :cond_5
    move v5, v6

    goto :goto_2
.end method

.method public addHdmiTvInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "info"    # Landroid/media/tv/TvInputInfo;

    .prologue
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v3

    const/16 v4, 0x3ef

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") has non-HDMI type."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    .local v1, "parentId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-static {v3, v1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v2

    .local v2, "parentIndex":I
    if-gez v2, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") has invalid parentId."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1    # "parentId":Ljava/lang/String;
    .end local v2    # "parentIndex":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "parentId":Ljava/lang/String;
    .restart local v2    # "parentIndex":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "oldInputId":Ljava/lang/String;
    if-eqz v0, :cond_2

    sget-object v3, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to override previous registration: old = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z
    .locals 9
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "config"    # Landroid/media/tv/TvStreamConfig;
    .param p4, "callingUid"    # I
    .param p5, "resolvedUserId"    # I

    .prologue
    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    move-result v1

    .local v1, "deviceId":I
    if-gez v1, :cond_0

    sget-object v5, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid inputId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    :goto_0
    return v3

    :cond_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    move-result-object v2

    .local v2, "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;

    move-result-object v4

    .local v4, "runnable":Ljava/lang/Runnable;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V

    :cond_1
    # invokes: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    invoke-static {v2, p2, p3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$500(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result v3

    .local v3, "result":Z
    if-eqz v3, :cond_2

    new-instance v5, Lcom/android/server/tv/TvInputHardwareManager$2;

    invoke-direct {v5, p0, v2, p3}, Lcom/android/server/tv/TvInputHardwareManager$2;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)V

    invoke-virtual {v0, v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V

    :cond_2
    monitor-exit v6

    goto :goto_0

    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v1    # "deviceId":I
    .end local v2    # "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .end local v3    # "result":Z
    .end local v4    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .restart local v1    # "deviceId":I
    .restart local v2    # "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;II)Ljava/util/List;
    .locals 11
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "resolvedUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "configsList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvStreamConfig;>;"
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    move-result v4

    .local v4, "deviceId":I
    if-gez v4, :cond_0

    sget-object v7, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid inputId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    :goto_0
    return-object v2

    :cond_0
    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .local v3, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v3}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLocked()[Landroid/media/tv/TvStreamConfig;

    move-result-object v0

    .local v0, "arr$":[Landroid/media/tv/TvStreamConfig;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v1, v0, v5

    .local v1, "config":Landroid/media/tv/TvStreamConfig;
    invoke-virtual {v1}, Landroid/media/tv/TvStreamConfig;->getType()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v1    # "config":Landroid/media/tv/TvStreamConfig;
    :cond_2
    monitor-exit v8

    goto :goto_0

    .end local v0    # "arr$":[Landroid/media/tv/TvStreamConfig;
    .end local v3    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v4    # "deviceId":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public getHardwareList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHdmiDeviceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    .prologue
    const/16 v3, 0x1f4

    if-ne p1, v3, :cond_0

    const-string v3, "hdmi_control"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;

    move-result-object v2

    .local v2, "hdmiControlService":Landroid/hardware/hdmi/IHdmiControlService;
    if-eqz v2, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    invoke-interface {v2, v3}, Landroid/hardware/hdmi/IHdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    invoke-interface {v2, v3}, Landroid/hardware/hdmi/IHdmiControlService;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    invoke-interface {v2, v3}, Landroid/hardware/hdmi/IHdmiControlService;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-interface {v2}, Landroid/hardware/hdmi/IHdmiControlService;->getInputDevices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->updateVolume()V

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "hdmiControlService":Landroid/hardware/hdmi/IHdmiControlService;
    :cond_0
    return-void

    .restart local v2    # "hdmiControlService":Landroid/hardware/hdmi/IHdmiControlService;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    const-string v4, "Error registering listeners to HdmiControlService:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v3, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    const-string v4, "HdmiControlService is not available"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V
    .locals 6
    .param p1, "info"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p2, "configs"    # [Landroid/media/tv/TvStreamConfig;

    .prologue
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-direct {v0, p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V

    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v0, p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->buildHardwareListLocked()V

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->processPendingHdmiDeviceEventsLocked()V

    :cond_0
    monitor-exit v2

    return-void

    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDeviceUnavailable(I)V
    .locals 10
    .param p1, "deviceId"    # I

    .prologue
    iget-object v9, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v0, :cond_0

    sget-object v1, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceUnavailable: Cannot find a connection with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->buildHardwareListLocked()V

    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v7

    .local v7, "info":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {v7}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .local v6, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v1

    invoke-virtual {v7}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v6    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v7    # "info":Landroid/media/tv/TvInputHardwareInfo;
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .restart local v7    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onFirstFrameCaptured(II)V
    .locals 6
    .param p1, "deviceId"    # I
    .param p2, "streamId"    # I

    .prologue
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v0, :cond_0

    sget-object v2, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FirstFrameCaptured: Cannot find a connection with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;

    move-result-object v1

    .local v1, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onStreamConfigurationChanged(I[Landroid/media/tv/TvStreamConfig;)V
    .locals 10
    .param p1, "deviceId"    # I
    .param p2, "configs"    # [Landroid/media/tv/TvStreamConfig;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .local v1, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v1, :cond_0

    sget-object v4, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StreamConfigurationChanged: Cannot find a connection with "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V

    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "inputId":Ljava/lang/String;
    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    array-length v9, p2

    if-lez v9, :cond_3

    :goto_1
    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputHardwareManager;->convertConnectedToState(Z)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v7, v8, v4, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getCallbackLocked()Landroid/media/tv/ITvInputHardwareCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "callback":Landroid/media/tv/ITvInputHardwareCallback;
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputHardwareCallback;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_2
    :try_start_2
    monitor-exit v6

    goto :goto_0

    .end local v0    # "callback":Landroid/media/tv/ITvInputHardwareCallback;
    .end local v1    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v3    # "inputId":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .restart local v3    # "inputId":Ljava/lang/String;
    :cond_3
    move v4, v5

    goto :goto_1

    .restart local v0    # "callback":Landroid/media/tv/ITvInputHardwareCallback;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    sget-object v4, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    const-string v5, "error in onStreamConfigurationChanged"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
    .locals 7
    .param p1, "deviceId"    # I
    .param p2, "hardware"    # Landroid/media/tv/ITvInputHardware;
    .param p3, "callingUid"    # I
    .param p4, "resolvedUserId"    # I

    .prologue
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v0, :cond_0

    sget-object v1, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid deviceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareLocked()Landroid/media/tv/ITvInputHardware;

    move-result-object v1

    if-ne v1, p2, :cond_1

    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/tv/TvInputHardwareManager;->checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    monitor-exit v6

    goto :goto_0

    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeTvInput(Ljava/lang/String;)V
    .locals 4
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-static {v2, p1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v1

    .local v1, "hardwareIndex":I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-static {v2, p1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v0

    .local v0, "deviceIndex":I
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    monitor-exit v3

    return-void

    .end local v0    # "deviceIndex":I
    .end local v1    # "hardwareIndex":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
