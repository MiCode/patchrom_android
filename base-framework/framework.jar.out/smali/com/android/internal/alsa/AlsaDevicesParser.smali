.class public Lcom/android/internal/alsa/AlsaDevicesParser;
.super Ljava/lang/Object;
.source "AlsaDevicesParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AlsaDevicesParser"

.field private static final kDevicesFilePath:Ljava/lang/String; = "/proc/asound/devices"

.field private static final kEndIndex_CardNum:I = 0x8

.field private static final kEndIndex_DeviceNum:I = 0xb

.field private static final kIndex_CardDeviceField:I = 0x5

.field private static final kStartIndex_CardNum:I = 0x6

.field private static final kStartIndex_DeviceNum:I = 0x9

.field private static final kStartIndex_Type:I = 0xe

.field private static mTokenizer:Lcom/android/internal/alsa/LineTokenizer;


# instance fields
.field private mDeviceRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHasCaptureDevices:Z

.field private mHasMIDIDevices:Z

.field private mHasPlaybackDevices:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lcom/android/internal/alsa/LineTokenizer;

    const-string v1, " :[]-"

    invoke-direct {v0, v1}, Lcom/android/internal/alsa/LineTokenizer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/alsa/AlsaDevicesParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasCaptureDevices:Z

    iput-boolean v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasPlaybackDevices:Z

    iput-boolean v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasMIDIDevices:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000()Lcom/android/internal/alsa/LineTokenizer;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/alsa/AlsaDevicesParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/alsa/AlsaDevicesParser;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasMIDIDevices:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/alsa/AlsaDevicesParser;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasCaptureDevices:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/alsa/AlsaDevicesParser;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasPlaybackDevices:Z

    return p1
.end method

.method private isLineDeviceRecord(Ljava/lang/String;)Z
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Log(Ljava/lang/String;)V
    .locals 0
    .param p1, "heading"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public getDefaultDeviceNum(I)I
    .locals 1
    .param p1, "card"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public hasCaptureDevices()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasCaptureDevices:Z

    return v0
.end method

.method public hasCaptureDevices(I)Z
    .locals 3
    .param p1, "card"    # I

    .prologue
    iget-object v2, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    .local v0, "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    if-nez v2, :cond_0

    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .end local v0    # "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasMIDIDevices()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasMIDIDevices:Z

    return v0
.end method

.method public hasMIDIDevices(I)Z
    .locals 4
    .param p1, "card"    # I

    .prologue
    iget-object v2, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    .local v0, "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .end local v0    # "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasPlaybackDevices()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasPlaybackDevices:Z

    return v0
.end method

.method public hasPlaybackDevices(I)Z
    .locals 4
    .param p1, "card"    # I

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    .local v0, "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    iget v3, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    if-ne v3, p1, :cond_0

    iget v3, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    if-nez v3, :cond_0

    iget v3, v0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    if-ne v3, v2, :cond_0

    .end local v0    # "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public scan()V
    .locals 7

    .prologue
    iget-object v6, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Ljava/io/File;

    const-string v6, "/proc/asound/devices"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "devicesFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .local v5, "reader":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string v4, ""

    .local v4, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v4}, Lcom/android/internal/alsa/AlsaDevicesParser;->isLineDeviceRecord(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    invoke-direct {v1, p0}, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;-><init>(Lcom/android/internal/alsa/AlsaDevicesParser;)V

    .local v1, "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    invoke-virtual {v1, v4}, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->parse(Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
