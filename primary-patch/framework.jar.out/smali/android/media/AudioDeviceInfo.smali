.class public final Landroid/media/AudioDeviceInfo;
.super Ljava/lang/Object;
.source "AudioDeviceInfo.java"


# static fields
.field private static final EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

.field private static final INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

.field public static final TYPE_AUX_LINE:I = 0x13

.field public static final TYPE_BLUETOOTH_A2DP:I = 0x8

.field public static final TYPE_BLUETOOTH_SCO:I = 0x7

.field public static final TYPE_BUILTIN_EARPIECE:I = 0x1

.field public static final TYPE_BUILTIN_MIC:I = 0xf

.field public static final TYPE_BUILTIN_SPEAKER:I = 0x2

.field public static final TYPE_DOCK:I = 0xd

.field public static final TYPE_FM:I = 0xe

.field public static final TYPE_FM_TUNER:I = 0x10

.field public static final TYPE_HDMI:I = 0x9

.field public static final TYPE_HDMI_ARC:I = 0xa

.field public static final TYPE_IP:I = 0x14

.field public static final TYPE_LINE_ANALOG:I = 0x5

.field public static final TYPE_LINE_DIGITAL:I = 0x6

.field public static final TYPE_TELEPHONY:I = 0x12

.field public static final TYPE_TV_TUNER:I = 0x11

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_USB_ACCESSORY:I = 0xc

.field public static final TYPE_USB_DEVICE:I = 0xb

.field public static final TYPE_WIRED_HEADPHONES:I = 0x4

.field public static final TYPE_WIRED_HEADSET:I = 0x3


# instance fields
.field private final mPort:Landroid/media/AudioDevicePort;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0xd

    const/4 v4, 0x7

    const/16 v3, 0x8

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x100

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x200

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x400

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x800

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x2000

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x4000

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, 0x10000

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, 0x20000

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, 0x40000

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, 0x80000

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, 0x100000

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, 0x200000

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, 0x800000

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7ffffffc

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7ffffff8

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7ffffff0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7fffffe0

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7fffffc0

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7fffff80

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7ffffe00

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7ffffc00

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7ffff800

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7ffff000

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7fffe000

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7fffc000

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7fff8000

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, -0x7fff0000

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, -0x7ffe0000

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, -0x7ff80000

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/high16 v2, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/high16 v2, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x80

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const/high16 v2, 0x40000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x800

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const/high16 v2, 0x100000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    const v2, -0x7ffffffc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    const v2, -0x7fffe000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const v2, -0x7fffc000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x13

    const/high16 v2, 0x200000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    const/high16 v2, 0x800000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method constructor <init>(Landroid/media/AudioDevicePort;)V
    .locals 0
    .param p1, "port"    # Landroid/media/AudioDevicePort;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    return-void
.end method

.method public static convertDeviceTypeToInternalDevice(I)I
    .locals 2
    .param p0, "deviceType"    # I

    .prologue
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public static convertInternalDeviceToDeviceType(I)I
    .locals 2
    .param p0, "intDevice"    # I

    .prologue
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelCounts()[I
    .locals 11

    .prologue
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .local v2, "countSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getChannelMasks()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v8, v0

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v8, :cond_1

    aget v9, v0, v4

    .local v9, "mask":I
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v9}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v10

    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v9}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v10

    goto :goto_1

    .end local v9    # "mask":I
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getChannelIndexMasks()[I

    move-result-object v0

    array-length v8, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_2

    aget v7, v0, v4

    .local v7, "index_mask":I
    invoke-static {v7}, Ljava/lang/Integer;->bitCount(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v7    # "index_mask":I
    :cond_2
    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v10

    new-array v3, v10, [I

    .local v3, "counts":[I
    const/4 v5, 0x0

    .local v5, "index":I
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "count":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    aput v1, v3, v5

    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_3

    .end local v1    # "count":I
    :cond_3
    return-object v3
.end method

.method public getChannelIndexMasks()[I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->channelIndexMasks()[I

    move-result-object v0

    return-object v0
.end method

.method public getChannelMasks()[I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v0

    return-object v0
.end method

.method public getEncodings()[I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->handle()Landroid/media/AudioHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioHandle;->id()I

    move-result v0

    return v0
.end method

.method public getProductName()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->name()Ljava/lang/String;

    move-result-object v0

    .local v0, "portName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "portName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "portName":Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSampleRates()[I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 3

    .prologue
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public isSink()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->role()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSource()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->role()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
