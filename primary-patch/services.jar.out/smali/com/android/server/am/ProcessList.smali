.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x3

.field static final CACHED_APP_MAX_ADJ:I = 0xf

.field static final CACHED_APP_MIN_ADJ:I = 0x9

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field static final HOME_APP_ADJ:I = 0x6

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static final MAX_CACHED_APPS:I = 0x20

.field private static final MAX_EMPTY_APPS:I

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x11

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PERSISTENT_SERVICE_ADJ:I = -0xb

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static final SYSTEM_ADJ:I = -0x10

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TRIM_CACHED_APPS:I

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_EMPTY_APPS:I

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final UNKNOWN_ADJ:I = 0x10

.field static final VISIBLE_APP_ADJ:I = 0x1

.field private static final sFirstAwakePssTimes:[J

.field private static sLmkdOutputStream:Ljava/io/OutputStream;

.field private static sLmkdSocket:Landroid/net/LocalSocket;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstAwakePssTimes:[J

.field private static final sTestSameAwakePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x11

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->computeEmptyProcessLimit(I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    rsub-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    new-array v0, v1, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    new-array v0, v1, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    new-array v0, v1, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    new-array v0, v1, [J

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_1
    .array-data 8
        0x1d4c0
        0x1d4c0
        0x2710
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
    .end array-data

    :array_2
    .array-data 8
        0xdbba0
        0xdbba0
        0x1d4c0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0x124f80
        0x124f80
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
    .end array-data

    :array_3
    .array-data 8
        0xbb8
        0xbb8
        0xbb8
        0x4e20
        0x4e20
        0x4e20
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_4
    .array-data 8
        0x3a98
        0x3a98
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v2, 0x6

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    invoke-direct {p0, v6, v6, v6}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_2
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .prologue
    const/4 v1, 0x0

    .local v1, "j":I
    const/16 v0, 0xa

    .local v0, "fact":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    .prologue
    if-ne p2, p3, :cond_1

    if-nez p1, :cond_0

    .end local p0    # "prefix":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "prefix":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1
    .param p0, "totalProcessLimit"    # I

    .prologue
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static computeNextPssTime(IZZZJ)J
    .locals 4
    .param p0, "procState"    # I
    .param p1, "first"    # Z
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    .prologue
    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    .local v0, "table":[J
    :goto_0
    aget-wide v2, v0, p0

    add-long/2addr v2, p4

    return-wide v2

    .end local v0    # "table":[J
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_0
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 6
    .param p0, "setAdj"    # I

    .prologue
    const/16 v5, -0xb

    const/16 v4, -0xc

    const/16 v3, -0x10

    const/16 v1, -0x11

    const/4 v2, 0x0

    const/16 v0, 0x9

    if-lt p0, v0, :cond_0

    const-string v0, "cch"

    const-string v1, "  "

    const/16 v2, 0x9

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x8

    if-lt p0, v0, :cond_1

    const-string v0, "svcb "

    const/16 v1, 0x8

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-lt p0, v0, :cond_2

    const-string v0, "prev "

    const/4 v1, 0x7

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-lt p0, v0, :cond_3

    const-string v0, "home "

    const/4 v1, 0x6

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-lt p0, v0, :cond_4

    const-string v0, "svc  "

    const/4 v1, 0x5

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-lt p0, v0, :cond_5

    const-string v0, "hvy  "

    const/4 v1, 0x4

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    if-lt p0, v0, :cond_6

    const-string v0, "bkup "

    const/4 v1, 0x3

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    if-lt p0, v0, :cond_7

    const-string v0, "prcp "

    const/4 v1, 0x2

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    if-lt p0, v0, :cond_8

    const-string v0, "vis  "

    const/4 v1, 0x1

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    if-ltz p0, :cond_9

    const-string v0, "fore "

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    if-lt p0, v5, :cond_a

    const-string v0, "psvc "

    invoke-static {v0, v2, p0, v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    if-lt p0, v4, :cond_b

    const-string v0, "pers "

    invoke-static {v0, v2, p0, v4}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_b
    if-lt p0, v3, :cond_c

    const-string v0, "sys  "

    invoke-static {v0, v2, p0, v3}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_c
    if-lt p0, v1, :cond_d

    const-string v0, "ntv  "

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "curProcState"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "??"

    .local v0, "procState":Ljava/lang/String;
    :goto_0
    return-object v0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_0
    const-string v0, "N "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1
    const-string v0, "P "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2
    const-string v0, "PU"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3
    const-string v0, "T "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_4
    const-string v0, "SB"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_5
    const-string v0, "SF"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string v0, "TS"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_7
    const-string v0, "IF"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_8
    const-string v0, "IB"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string v0, "BU"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_a
    const-string v0, "HW"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_b
    const-string v0, "S "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string v0, "R "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_d
    const-string v0, "HO"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_e
    const-string v0, "LA"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_f
    const-string v0, "CA"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_10
    const-string v0, "Ca"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_11
    const-string v0, "CE"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
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
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .locals 2
    .param p0, "test"    # Z

    .prologue
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x2710

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3a98

    goto :goto_0
.end method

.method private static openLmkdSocket()Z
    .locals 5

    .prologue
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v3, "lmkd"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .local v0, "ex":Ljava/io/IOException;
    :goto_0
    return v1

    .end local v0    # "ex":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v1, "ActivityManager"

    const-string v2, "lowmemorykiller daemon socket open failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .prologue
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final remove(I)V
    .locals 2
    .param p0, "pid"    # I

    .prologue
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static final setOomAdj(III)V
    .locals 10
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    .prologue
    const/16 v1, 0x10

    if-ne p2, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .local v4, "start":J
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .local v2, "now":J
    sub-long v6, v2, v4

    const-wide/16 v8, 0xfa

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    const-string v1, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SLOW OOM ADJ: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateOomLevels(IIZ)V
    .locals 24
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x15e

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x43af0000    # 350.0f

    div-float v18, v19, v20

    .local v18, "scaleMem":F
    const v10, 0x5dc00

    .local v10, "minSize":I
    const v9, 0xfa000

    .local v9, "maxSize":I
    mul-int v19, p1, p2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v10

    move/from16 v20, v0

    sub-float v19, v19, v20

    const v20, 0x9c400

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v17, v19, v20

    .local v17, "scaleDisp":F
    cmpl-float v19, v18, v17

    if-lez v19, :cond_2

    move/from16 v16, v18

    .local v16, "scale":F
    :goto_0
    const/16 v19, 0x0

    cmpg-float v19, v16, v19

    if-gez v19, :cond_3

    const/16 v16, 0x0

    :cond_0
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10e0009

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .local v12, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10e0008

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .local v11, "minfree_abs":I
    sget-object v19, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_4

    const/4 v7, 0x1

    .local v7, "is64bit":Z
    :goto_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    move-object/from16 v19, v0

    aget v8, v19, v6

    .local v8, "low":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    move-object/from16 v19, v0

    aget v5, v19, v6

    .local v5, "high":I
    if-eqz v7, :cond_1

    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v6, v0, :cond_5

    mul-int/lit8 v19, v5, 0x3

    div-int/lit8 v5, v19, 0x2

    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    sub-int v21, v5, v8

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    aput v20, v19, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v5    # "high":I
    .end local v6    # "i":I
    .end local v7    # "is64bit":Z
    .end local v8    # "low":I
    .end local v11    # "minfree_abs":I
    .end local v12    # "minfree_adj":I
    .end local v16    # "scale":F
    :cond_2
    move/from16 v16, v17

    goto :goto_0

    .restart local v16    # "scale":F
    :cond_3
    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v19, v16, v19

    if-lez v19, :cond_0

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_1

    .restart local v11    # "minfree_abs":I
    .restart local v12    # "minfree_adj":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .restart local v5    # "high":I
    .restart local v6    # "i":I
    .restart local v7    # "is64bit":Z
    .restart local v8    # "low":I
    :cond_5
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v6, v0, :cond_1

    mul-int/lit8 v19, v5, 0x7

    div-int/lit8 v5, v19, 0x4

    goto :goto_4

    .end local v5    # "high":I
    .end local v8    # "low":I
    :cond_6
    if-ltz v11, :cond_7

    const/4 v6, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    int-to-float v0, v11

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v21, v0

    aget v21, v21, v6

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    aput v20, v19, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    if-eqz v12, :cond_9

    const/4 v6, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    aget v20, v19, v6

    int-to-float v0, v12

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v22, v0

    aget v22, v22, v6

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    aput v20, v19, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    aget v19, v19, v6

    if-gez v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v20, v19, v6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    const/16 v19, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v20

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    const-wide/16 v22, 0x3

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    mul-int v19, p1, p2

    mul-int/lit8 v19, v19, 0x4

    mul-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    div-int/lit16 v13, v0, 0x400

    .local v13, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10e000b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .local v15, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10e000a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .local v14, "reserve_abs":I
    if-ltz v14, :cond_a

    move v13, v14

    :cond_a
    if-eqz v15, :cond_b

    add-int/2addr v13, v15

    if-gez v13, :cond_b

    const/4 v13, 0x0

    :cond_b
    if-eqz p3, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int/lit8 v19, v19, 0x1

    mul-int/lit8 v19, v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "buf":Ljava/nio/ByteBuffer;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    aget v19, v19, v6

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x1000

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    aget v19, v19, v6

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_c
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    const-string v19, "sys.sysctl.extra_free_kbytes"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    :cond_d
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocket()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "ActivityManager"

    const-string v3, "Error writing to lowmemorykiller socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    goto :goto_1

    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    goto :goto_1

    .restart local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 4
    .param p1, "adjustment"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    :goto_1
    return-wide v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    goto :goto_1
.end method
