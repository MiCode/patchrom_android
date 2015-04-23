.class public Landroid/os/Debug$MemoryInfo;
.super Ljava/lang/Object;
.source "Debug.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Debug$MemoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEAP_DALVIK:I = 0x1

.field public static final HEAP_NATIVE:I = 0x2

.field public static final HEAP_UNKNOWN:I = 0x0

.field public static final NUM_CATEGORIES:I = 0x7

.field public static final NUM_DVK_STATS:I = 0x8

.field public static final NUM_OTHER_STATS:I = 0x11

.field public static final OTHER_APK:I = 0x8

.field public static final OTHER_ART:I = 0xc

.field public static final OTHER_ASHMEM:I = 0x3

.field public static final OTHER_CURSOR:I = 0x2

.field public static final OTHER_DALVIK_ACCOUNTING:I = 0x14

.field public static final OTHER_DALVIK_CODE_CACHE:I = 0x15

.field public static final OTHER_DALVIK_INDIRECT_REFERENCE_TABLE:I = 0x18

.field public static final OTHER_DALVIK_LARGE:I = 0x12

.field public static final OTHER_DALVIK_LINEARALLOC:I = 0x13

.field public static final OTHER_DALVIK_NON_MOVING:I = 0x17

.field public static final OTHER_DALVIK_NORMAL:I = 0x11

.field public static final OTHER_DALVIK_OTHER:I = 0x0

.field public static final OTHER_DALVIK_ZYGOTE:I = 0x16

.field public static final OTHER_DEX:I = 0xa

.field public static final OTHER_GL:I = 0xf

.field public static final OTHER_GL_DEV:I = 0x4

.field public static final OTHER_GRAPHICS:I = 0xe

.field public static final OTHER_JAR:I = 0x7

.field public static final OTHER_OAT:I = 0xb

.field public static final OTHER_OTHER_MEMTRACK:I = 0x10

.field public static final OTHER_SO:I = 0x6

.field public static final OTHER_STACK:I = 0x1

.field public static final OTHER_TTF:I = 0x9

.field public static final OTHER_UNKNOWN_DEV:I = 0x5

.field public static final OTHER_UNKNOWN_MAP:I = 0xd

.field public static final offsetPrivateClean:I = 0x4

.field public static final offsetPrivateDirty:I = 0x2

.field public static final offsetPss:I = 0x0

.field public static final offsetSharedClean:I = 0x5

.field public static final offsetSharedDirty:I = 0x3

.field public static final offsetSwappablePss:I = 0x1

.field public static final offsetSwappedOut:I = 0x6


# instance fields
.field public dalvikPrivateClean:I

.field public dalvikPrivateDirty:I

.field public dalvikPss:I

.field public dalvikSharedClean:I

.field public dalvikSharedDirty:I

.field public dalvikSwappablePss:I

.field public dalvikSwappedOut:I

.field public nativePrivateClean:I

.field public nativePrivateDirty:I

.field public nativePss:I

.field public nativeSharedClean:I

.field public nativeSharedDirty:I

.field public nativeSwappablePss:I

.field public nativeSwappedOut:I

.field public otherPrivateClean:I

.field public otherPrivateDirty:I

.field public otherPss:I

.field public otherSharedClean:I

.field public otherSharedDirty:I

.field private otherStats:[I

.field public otherSwappablePss:I

.field public otherSwappedOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/os/Debug$MemoryInfo$1;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo$1;-><init>()V

    sput-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xaf

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xaf

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/Debug$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/os/Debug$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/os/Debug$MemoryInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getOtherLabel(I)Ljava/lang/String;
    .locals 1
    .param p0, "which"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "????"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Dalvik Other"

    goto :goto_0

    :pswitch_1
    const-string v0, "Stack"

    goto :goto_0

    :pswitch_2
    const-string v0, "Cursor"

    goto :goto_0

    :pswitch_3
    const-string v0, "Ashmem"

    goto :goto_0

    :pswitch_4
    const-string v0, "Gfx dev"

    goto :goto_0

    :pswitch_5
    const-string v0, "Other dev"

    goto :goto_0

    :pswitch_6
    const-string v0, ".so mmap"

    goto :goto_0

    :pswitch_7
    const-string v0, ".jar mmap"

    goto :goto_0

    :pswitch_8
    const-string v0, ".apk mmap"

    goto :goto_0

    :pswitch_9
    const-string v0, ".ttf mmap"

    goto :goto_0

    :pswitch_a
    const-string v0, ".dex mmap"

    goto :goto_0

    :pswitch_b
    const-string v0, ".oat mmap"

    goto :goto_0

    :pswitch_c
    const-string v0, ".art mmap"

    goto :goto_0

    :pswitch_d
    const-string v0, "Other mmap"

    goto :goto_0

    :pswitch_e
    const-string v0, "EGL mtrack"

    goto :goto_0

    :pswitch_f
    const-string v0, "GL mtrack"

    goto :goto_0

    :pswitch_10
    const-string v0, "Other mtrack"

    goto :goto_0

    :pswitch_11
    const-string v0, ".Heap"

    goto :goto_0

    :pswitch_12
    const-string v0, ".LOS"

    goto :goto_0

    :pswitch_13
    const-string v0, ".LinearAlloc"

    goto :goto_0

    :pswitch_14
    const-string v0, ".GC"

    goto :goto_0

    :pswitch_15
    const-string v0, ".JITCache"

    goto :goto_0

    :pswitch_16
    const-string v0, ".Zygote"

    goto :goto_0

    :pswitch_17
    const-string v0, ".NonMoving"

    goto :goto_0

    :pswitch_18
    const-string v0, ".IndirectRef"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getMemoryStat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "statName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :sswitch_0
    const-string v1, "summary.java-heap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "summary.native-heap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "summary.code"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "summary.stack"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "summary.graphics"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "summary.private-other"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "summary.system"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "summary.total-pss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "summary.total-swap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x61279191 -> :sswitch_0
        -0x4e9a1b81 -> :sswitch_7
        -0x40ca2e02 -> :sswitch_5
        -0x3dffd466 -> :sswitch_1
        -0x283e7dc0 -> :sswitch_3
        0x20bda977 -> :sswitch_6
        0x61c51735 -> :sswitch_2
        0x78312fd3 -> :sswitch_4
        0x7b5815c4 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getMemoryStats()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "summary.java-heap"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "summary.native-heap"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "summary.code"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "summary.stack"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "summary.graphics"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "summary.private-other"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "summary.system"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "summary.total-pss"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "summary.total-swap"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getOtherPrivate(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getOtherPrivateClean(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x7

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getOtherPrivateDirty(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x7

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getOtherPss(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x7

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getOtherSharedClean(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x7

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getOtherSharedDirty(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x7

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getOtherSwappablePss(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x7

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getOtherSwappedOut(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x7

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public getSummaryCode()I
    .locals 2

    .prologue
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSummaryGraphics()I
    .locals 2

    .prologue
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSummaryJavaHeap()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSummaryNativeHeap()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    return v0
.end method

.method public getSummaryPrivateOther()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSummaryStack()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v0

    return v0
.end method

.method public getSummarySystem()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSummaryTotalPss()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    return v0
.end method

.method public getSummaryTotalSwap()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v0

    return v0
.end method

.method public getTotalPrivateClean()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPrivateDirty()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPss()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalSharedClean()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalSharedDirty()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalSwappablePss()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalSwappedOut()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalUss()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
