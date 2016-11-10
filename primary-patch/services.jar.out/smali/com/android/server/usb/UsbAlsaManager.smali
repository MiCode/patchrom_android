.class public final Lcom/android/server/usb/UsbAlsaManager;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    }
.end annotation


# static fields
.field private static final ALSA_DIRECTORY:Ljava/lang/String; = "/dev/snd/"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

.field private final mAlsaDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlsaObserver:Landroid/os/FileObserver;

.field private final mAudioDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/android/server/usb/UsbAudioDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioService:Landroid/media/IAudioService;

.field private final mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

.field private final mContext:Landroid/content/Context;

.field private final mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

.field private final mHasMidiFeature:Z

.field private final mMidiDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/android/server/usb/UsbMidiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-direct {v0}, Lcom/android/internal/alsa/AlsaCardsParser;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    new-instance v0, Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-direct {v0}, Lcom/android/internal/alsa/AlsaDevicesParser;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    new-instance v0, Lcom/android/server/usb/UsbAlsaManager$1;

    const-string v1, "/dev/snd/"

    const/16 v2, 0x300

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/usb/UsbAlsaManager$1;-><init>(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaObserver:Landroid/os/FileObserver;

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.midi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v0}, Lcom/android/internal/alsa/AlsaCardsParser;->scan()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->alsaFileAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->alsaFileRemoved(Ljava/lang/String;)V

    return-void
.end method

.method private alsaFileAdded(Ljava/lang/String;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .local v7, "type":I
    const/4 v2, -0x1

    .local v2, "card":I
    const/4 v4, -0x1

    .local v4, "device":I
    const-string v8, "pcmC"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "p"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v7, 0x1

    :cond_0
    :goto_0
    if-eqz v7, :cond_4

    const/16 v8, 0x43

    :try_start_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "c_index":I
    const/16 v8, 0x44

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .local v3, "d_index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "end":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    :cond_1
    add-int/lit8 v6, v6, -0x1

    :cond_2
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    iget-object v9, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_1
    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    new-instance v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    invoke-direct {v0, p0, v7, v2, v4}, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;-><init>(Lcom/android/server/usb/UsbAlsaManager;III)V

    .local v0, "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    sget-object v8, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding ALSA device "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .end local v0    # "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    :cond_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "c_index":I
    .end local v3    # "d_index":I
    .end local v6    # "end":I
    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string v8, "c"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x2

    goto :goto_0

    :cond_6
    const-string v8, "midiC"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x3

    goto :goto_0

    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not parse ALSA file name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "c_index":I
    .restart local v3    # "d_index":I
    .restart local v6    # "end":I
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8
.end method

.method private alsaFileRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    .local v0, "device":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALSA device removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v2

    return-void

    .end local v0    # "device":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V
    .locals 10
    .param p1, "audioDevice"    # Lcom/android/server/usb/UsbAudioDevice;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    const-string v4, "no AudioService"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "usb_audio_automatic_routing_disabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .local v9, "isDisabled":I
    if-nez v9, :cond_0

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    .local v2, "state":I
    :cond_2
    iget v6, p1, Lcom/android/server/usb/UsbAudioDevice;->mCard:I

    .local v6, "alsaCard":I
    iget v7, p1, Lcom/android/server/usb/UsbAudioDevice;->mDevice:I

    .local v7, "alsaDevice":I
    if-ltz v6, :cond_3

    if-gez v7, :cond_4

    :cond_3
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid alsa card or device alsaCard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " alsaDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-static {v6, v7}, Lcom/android/server/audio/AudioService;->makeAlsaAddressString(II)Ljava/lang/String;

    move-result-object v3

    .local v3, "address":Ljava/lang/String;
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/usb/UsbAudioDevice;->mHasPlayback:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    if-ne p1, v0, :cond_6

    const/16 v1, 0x2000

    .local v1, "device":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    iget-object v4, p1, Lcom/android/server/usb/UsbAudioDevice;->mDeviceName:Ljava/lang/String;

    sget-object v5, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "device":I
    :cond_5
    iget-boolean v0, p1, Lcom/android/server/usb/UsbAudioDevice;->mHasCapture:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    if-ne p1, v0, :cond_7

    const v1, -0x7ffff800

    .restart local v1    # "device":I
    :goto_2
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    iget-object v4, p1, Lcom/android/server/usb/UsbAudioDevice;->mDeviceName:Ljava/lang/String;

    sget-object v5, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "device":I
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    const-string v4, "RemoteException in setWiredDeviceConnectionState"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_6
    const/16 v1, 0x4000

    goto :goto_1

    :cond_7
    const v1, -0x7ffff000

    goto :goto_2
.end method

.method private waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    .locals 18
    .param p1, "card"    # I
    .param p2, "device"    # I
    .param p3, "type"    # I

    .prologue
    new-instance v6, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;-><init>(Lcom/android/server/usb/UsbAlsaManager;III)V

    .local v6, "testDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    const/16 v5, 0x9c4

    .local v5, "kWaitTime":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    monitor-enter v12

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/16 v16, 0x9c4

    add-long v8, v14, v16

    .local v8, "timeout":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    monitor-exit v12

    .end local v6    # "testDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    :goto_0
    return-object v6

    .restart local v6    # "testDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    sub-long v10, v8, v14

    .local v10, "waitTime":J
    const-wide/16 v14, 0x0

    cmp-long v7, v10, v14

    if-lez v7, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v7, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    cmp-long v7, v8, v14

    if-gtz v7, :cond_0

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v7, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "waitForAlsaDevice failed for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v7, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    const-string v13, "usb: InterruptedException while waiting for ALSA file."

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "timeout":J
    .end local v10    # "waitTime":J
    :catchall_0
    move-exception v7

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    const-string v2, "USB Audio Devices:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_0
    const-string v2, "USB MIDI Devices:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .restart local v0    # "device":Landroid/hardware/usb/UsbDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_1
    return-void
.end method

.method public getConnectedDevices()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/usb/UsbAudioDevice;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbAudioDevice;>;"
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/UsbAudioDevice;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/UsbAudioDevice;>;"
    :cond_0
    return-object v0
.end method

.method public logDevices(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public logDevicesList(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method selectAudioCard(I)Lcom/android/server/usb/UsbAudioDevice;
    .locals 10
    .param p1, "card"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaCardsParser;->isCardUsb(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-virtual {v1}, Lcom/android/internal/alsa/AlsaDevicesParser;->scan()V

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaDevicesParser;->getDefaultDeviceNum(I)I

    move-result v2

    .local v2, "device":I
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaDevicesParser;->hasPlaybackDevices(I)Z

    move-result v3

    .local v3, "hasPlayback":Z
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaDevicesParser;->hasCaptureDevices(I)Z

    move-result v4

    .local v4, "hasCapture":Z
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaCardsParser;->isCardUsb(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v7

    :goto_1
    const/high16 v9, -0x80000000

    or-int v5, v1, v9

    .local v5, "deviceClass":I
    if-eqz v3, :cond_2

    invoke-direct {p0, p1, v2, v8}, Lcom/android/server/usb/UsbAlsaManager;->waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_2
    if-eqz v4, :cond_3

    invoke-direct {p0, p1, v2, v7}, Lcom/android/server/usb/UsbAlsaManager;->waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_3
    new-instance v0, Lcom/android/server/usb/UsbAudioDevice;

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbAudioDevice;-><init>(IIZZI)V

    .local v0, "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaCardsParser;->getCardRecordFor(I)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    move-result-object v6

    .local v6, "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget-object v1, v6, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/usb/UsbAudioDevice;->mDeviceName:Ljava/lang/String;

    iget-object v1, v6, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/usb/UsbAudioDevice;->mDeviceDescription:Ljava/lang/String;

    invoke-direct {p0, v0, v8}, Lcom/android/server/usb/UsbAlsaManager;->notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V

    goto :goto_0

    .end local v0    # "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    .end local v5    # "deviceClass":I
    .end local v6    # "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :cond_4
    move v1, v8

    goto :goto_1
.end method

.method selectDefaultDevice()Lcom/android/server/usb/UsbAudioDevice;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v0}, Lcom/android/internal/alsa/AlsaCardsParser;->scan()V

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v0}, Lcom/android/internal/alsa/AlsaCardsParser;->getDefaultCard()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaManager;->selectAudioCard(I)Lcom/android/server/usb/UsbAudioDevice;

    move-result-object v0

    return-object v0
.end method

.method setAccessoryAudioState(ZII)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "card"    # I
    .param p3, "device"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/server/usb/UsbAudioDevice;

    const/4 v5, 0x2

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbAudioDevice;-><init>(IIZZI)V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    invoke-direct {p0, v0, v3}, Lcom/android/server/usb/UsbAlsaManager;->notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    invoke-direct {p0, v0, v4}, Lcom/android/server/usb/UsbAlsaManager;->notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    goto :goto_0
.end method

.method setPeripheralMidiState(ZII)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "card"    # I
    .param p3, "device"    # I

    .prologue
    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    if-nez v2, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "properties":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "r":Landroid/content/res/Resources;
    const-string v2, "name"

    const v3, 0x1040585

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "manufacturer"

    const v3, 0x1040586

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "product"

    const v3, 0x1040587

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "alsa_card"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "alsa_device"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, p2, p3}, Lcom/android/server/usb/UsbMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    goto :goto_0

    .end local v0    # "properties":Landroid/os/Bundle;
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_2
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    goto :goto_0
.end method

.method public systemReady()V
    .locals 4

    .prologue
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/snd/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbAlsaManager;->alsaFileAdded(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method usbDeviceAdded(Landroid/hardware/usb/UsbDevice;)V
    .locals 24
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    const/4 v10, 0x0

    .local v10, "isAudioDevice":Z
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v9

    .local v9, "interfaceCount":I
    const/4 v15, 0x0

    .local v15, "ntrfaceIndex":I
    :goto_0
    if-nez v10, :cond_1

    if-ge v15, v9, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v14

    .local v14, "ntrface":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v14}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .end local v14    # "ntrface":Landroid/hardware/usb/UsbInterface;
    :cond_1
    if-nez v10, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/alsa/AlsaCardsParser;->getScanRecords()Ljava/util/ArrayList;

    move-result-object v16

    .local v16, "prevScanRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/alsa/AlsaCardsParser;->scan()V

    const/4 v4, -0x1

    .local v4, "addedCard":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/alsa/AlsaCardsParser;->getNewCardRecords(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v13

    .local v13, "newScanRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_6

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/internal/alsa/AlsaCardsParser;->isCardUsb(I)Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/usb/UsbAlsaManager;->selectAudioCard(I)Lcom/android/server/usb/UsbAudioDevice;

    move-result-object v6

    .local v6, "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/internal/alsa/AlsaDevicesParser;->hasMIDIDevices(I)Z

    move-result v8

    .local v8, "hasMidi":Z
    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/internal/alsa/AlsaDevicesParser;->getDefaultDeviceNum(I)I

    move-result v7

    .local v7, "device":I
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v7, v1}, Lcom/android/server/usb/UsbAlsaManager;->waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    move-result-object v5

    .local v5, "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    if-eqz v5, :cond_2

    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .local v18, "properties":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v11

    .local v11, "manufacturer":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v17

    .local v17, "product":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v20

    .local v20, "version":Ljava/lang/String;
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_7

    :cond_5
    move-object/from16 v12, v17

    .local v12, "name":Ljava/lang/String;
    :goto_3
    const-string v21, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "manufacturer"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "product"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "version"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "serial_number"

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "alsa_card"

    iget v0, v5, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v21, "alsa_device"

    iget v0, v5, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v21, "usb_device"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    iget v0, v5, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    move/from16 v22, v0

    iget v0, v5, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usb/UsbMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;

    move-result-object v19

    .local v19, "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .end local v5    # "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    .end local v6    # "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    .end local v7    # "device":I
    .end local v8    # "hasMidi":Z
    .end local v11    # "manufacturer":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v17    # "product":Ljava/lang/String;
    .end local v18    # "properties":Landroid/os/Bundle;
    .end local v19    # "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    .end local v20    # "version":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/alsa/AlsaCardsParser;->getDefaultUsbCard()I

    move-result v4

    goto/16 :goto_2

    .restart local v5    # "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    .restart local v6    # "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    .restart local v7    # "device":I
    .restart local v8    # "hasMidi":Z
    .restart local v11    # "manufacturer":Ljava/lang/String;
    .restart local v17    # "product":Ljava/lang/String;
    .restart local v18    # "properties":Landroid/os/Bundle;
    .restart local v20    # "version":Ljava/lang/String;
    :cond_7
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_9

    :cond_8
    move-object v12, v11

    .restart local v12    # "name":Ljava/lang/String;
    goto/16 :goto_3

    .end local v12    # "name":Ljava/lang/String;
    :cond_9
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "name":Ljava/lang/String;
    goto/16 :goto_3
.end method

.method usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V
    .locals 3
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAudioDevice;

    .local v0, "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/server/usb/UsbAudioDevice;->mHasPlayback:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/server/usb/UsbAudioDevice;->mHasPlayback:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/usb/UsbAlsaManager;->notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V

    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaManager;->selectDefaultDevice()Lcom/android/server/usb/UsbAudioDevice;

    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbMidiDevice;

    .local v1, "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    if-eqz v1, :cond_2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_2
    return-void
.end method
