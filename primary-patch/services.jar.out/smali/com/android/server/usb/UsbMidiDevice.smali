.class public final Lcom/android/server/usb/UsbMidiDevice;
.super Ljava/lang/Object;
.source "UsbMidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final TAG:Ljava/lang/String; = "UsbMidiDevice"


# instance fields
.field private final mAlsaCard:I

.field private final mAlsaDevice:I

.field private final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

.field private mFileDescriptors:[Ljava/io/FileDescriptor;

.field private final mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

.field private mInputStreams:[Ljava/io/FileInputStream;

.field private mIsOpen:Z

.field private final mLock:Ljava/lang/Object;

.field private mOutputStreams:[Ljava/io/FileOutputStream;

.field private mPipeFD:I

.field private mPollFDs:[Landroid/system/StructPollfd;

.field private mServer:Landroid/media/midi/MidiDeviceServer;

.field private final mSubdeviceCount:I


# direct methods
.method private constructor <init>(III)V
    .locals 5
    .param p1, "card"    # I
    .param p2, "device"    # I
    .param p3, "subdeviceCount"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mPipeFD:I

    new-instance v2, Lcom/android/server/usb/UsbMidiDevice$1;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbMidiDevice$1;-><init>(Lcom/android/server/usb/UsbMidiDevice;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    iput p1, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    iput p2, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    iput p3, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    move v0, p3

    .local v0, "inputCount":I
    new-array v2, v0, [Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    const/4 v1, 0x0

    .local v1, "port":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    new-instance v3, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;-><init>(Lcom/android/server/usb/UsbMidiDevice;Lcom/android/server/usb/UsbMidiDevice$1;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbMidiDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbMidiDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .prologue
    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbMidiDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .prologue
    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    return-object v0
.end method

.method private closeLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/midi/MidiEventScheduler;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    aget-object v1, v1, v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    aget-object v1, v1, v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbMidiDevice;->nativeClose([Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "properties"    # Landroid/os/Bundle;
    .param p2, "card"    # I
    .param p3, "device"    # I

    .prologue
    const/4 v2, 0x0

    invoke-static {p2, p3}, Lcom/android/server/usb/UsbMidiDevice;->nativeGetSubdeviceCount(II)I

    move-result v1

    .local v1, "subDeviceCount":I
    if-gtz v1, :cond_1

    const-string v3, "UsbMidiDevice"

    const-string v4, "nativeGetSubdeviceCount failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/server/usb/UsbMidiDevice;

    invoke-direct {v0, p2, p3, v1}, Lcom/android/server/usb/UsbMidiDevice;-><init>(III)V

    .local v0, "midiDevice":Lcom/android/server/usb/UsbMidiDevice;
    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/UsbMidiDevice;->register(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const-string v3, "UsbMidiDevice"

    const-string v4, "createDeviceServer failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0
.end method

.method private native nativeClose([Ljava/io/FileDescriptor;)V
.end method

.method private static native nativeGetSubdeviceCount(II)I
.end method

.method private native nativeOpen(III)[Ljava/io/FileDescriptor;
.end method

.method private openLocked()Z
    .locals 15

    .prologue
    iget v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    iget v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    iget v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usb/UsbMidiDevice;->nativeOpen(III)[Ljava/io/FileDescriptor;

    move-result-object v7

    .local v7, "fileDescriptors":[Ljava/io/FileDescriptor;
    if-nez v7, :cond_0

    const-string v0, "UsbMidiDevice"

    const-string v1, "nativeOpen failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-object v7, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    array-length v9, v7

    .local v9, "inputCount":I
    array-length v0, v7

    add-int/lit8 v10, v0, -0x1

    .local v10, "outputCount":I
    new-array v0, v9, [Landroid/system/StructPollfd;

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    new-array v0, v9, [Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_1

    aget-object v6, v7, v8

    .local v6, "fd":Ljava/io/FileDescriptor;
    new-instance v12, Landroid/system/StructPollfd;

    invoke-direct {v12}, Landroid/system/StructPollfd;-><init>()V

    .local v12, "pollfd":Landroid/system/StructPollfd;
    iput-object v6, v12, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    sget v0, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v0, v0

    iput-short v0, v12, Landroid/system/StructPollfd;->events:S

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    aput-object v12, v0, v8

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v1, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v12    # "pollfd":Landroid/system/StructPollfd;
    :cond_1
    new-array v0, v10, [Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    new-array v0, v10, [Lcom/android/internal/midi/MidiEventScheduler;

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v10, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    aget-object v2, v7, v8

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v1, v0, v8

    new-instance v14, Lcom/android/internal/midi/MidiEventScheduler;

    invoke-direct {v14}, Lcom/android/internal/midi/MidiEventScheduler;-><init>()V

    .local v14, "scheduler":Lcom/android/internal/midi/MidiEventScheduler;
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aput-object v14, v0, v8

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    aget-object v0, v0, v8

    invoke-virtual {v14}, Lcom/android/internal/midi/MidiEventScheduler;->getReceiver()Landroid/media/midi/MidiReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v14    # "scheduler":Lcom/android/internal/midi/MidiEventScheduler;
    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v11

    .local v11, "outputReceivers":[Landroid/media/midi/MidiReceiver;
    new-instance v0, Lcom/android/server/usb/UsbMidiDevice$2;

    const-string v1, "UsbMidiDevice input thread"

    invoke-direct {v0, p0, v1, v11}, Lcom/android/server/usb/UsbMidiDevice$2;-><init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V

    invoke-virtual {v0}, Lcom/android/server/usb/UsbMidiDevice$2;->start()V

    const/4 v13, 0x0

    .local v13, "port":I
    :goto_3
    if-ge v13, v10, :cond_3

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v3, v0, v13

    .local v3, "eventSchedulerF":Lcom/android/internal/midi/MidiEventScheduler;
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    aget-object v4, v0, v13

    .local v4, "outputStreamF":Ljava/io/FileOutputStream;
    move v5, v13

    .local v5, "portF":I
    new-instance v0, Lcom/android/server/usb/UsbMidiDevice$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsbMidiDevice output thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbMidiDevice$3;-><init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V

    invoke-virtual {v0}, Lcom/android/server/usb/UsbMidiDevice$3;->start()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .end local v3    # "eventSchedulerF":Lcom/android/internal/midi/MidiEventScheduler;
    .end local v4    # "outputStreamF":Ljava/io/FileOutputStream;
    .end local v5    # "portF":I
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private register(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const-string v1, "midi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiManager;

    .local v0, "midiManager":Landroid/media/midi/MidiManager;
    if-nez v0, :cond_1

    const-string v1, "UsbMidiDevice"

    const-string v2, "No MidiManager in UsbMidiDevice.create()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    iget v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    iget-object v7, p0, Lcom/android/server/usb/UsbMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v7}, Landroid/media/midi/MidiManager;->createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;ILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-nez v1, :cond_0

    move v6, v8

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
