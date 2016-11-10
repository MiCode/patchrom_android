.class Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;
.super Ljava/lang/Object;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsComputer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    }
.end annotation


# static fields
.field private static final DEFAULT_BASE_PERIOD_MS:I = 0x1388

.field private static final DEFAULT_REPORT_THRESHOLD_NUM_SCANS:I = 0xa

.field private static final DEFAULT_REPORT_THRESHOLD_PERCENT:I = 0x64

.field private static final MAX_CHANNELS:I = 0x20


# instance fields
.field mChannelToBucketMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private final mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

.field final synthetic this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;)V
    .locals 11

    .prologue
    const/16 v7, 0x19

    const/4 v4, 0x1

    const/16 v10, 0xa

    const/4 v9, 0x5

    const/4 v8, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    invoke-direct {v3, p0, v4, v8, v9}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    aput-object v3, v2, v8

    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    invoke-direct {v3, p0, v9, v9, v10}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    aput-object v3, v2, v4

    const/4 v3, 0x2

    new-instance v4, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    invoke-direct {v4, p0, v10, v10, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    const/16 v5, 0x1e

    const/16 v6, 0x37

    invoke-direct {v4, p0, v5, v7, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    const/16 v5, 0x3c

    const/16 v6, 0x37

    const/16 v7, 0xf0

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    aput-object v4, v2, v3

    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    const/16 v4, 0x12c

    const/16 v5, 0xf0

    const/16 v6, 0x1f4

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    aput-object v3, v2, v9

    const/4 v3, 0x6

    new-instance v4, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    const/16 v5, 0x258

    const/16 v6, 0x1f4

    const/16 v7, 0x5dc

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    const/16 v5, 0x708

    const/16 v6, 0x5dc

    const v7, 0xfa000

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    new-instance v2, Lcom/android/server/wifi/WifiNative$ScanSettings;

    invoke-direct {v2}, Lcom/android/server/wifi/WifiNative$ScanSettings;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl;->mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;
    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$500(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_ap_cache_per_scan:I

    iput v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    const/16 v3, 0x1388

    iput v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    const/16 v3, 0x64

    iput v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iput v10, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl;->mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;
    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$500(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_buckets:I

    new-array v3, v3, [Lcom/android/server/wifi/WifiNative$BucketSettings;

    iput-object v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v0, Lcom/android/server/wifi/WifiNative$BucketSettings;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$BucketSettings;-><init>()V

    .local v0, "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iput v1, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    iput v8, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    const/16 v2, 0x20

    new-array v2, v2, [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    iput-object v2, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    iput v8, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Lcom/android/server/wifi/WifiScanningServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiScanningServiceImpl$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;)V

    return-void
.end method

.method private getBestBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I
    .locals 12
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    const/4 v10, -0x1

    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .local v3, "channels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    if-nez v3, :cond_0

    iget v9, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    invoke-static {v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$1900(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    const-string v9, "No channels to scan!!"

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$000(Ljava/lang/String;)V

    move v8, v10

    :goto_0
    return v8

    :cond_1
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    array-length v8, v9

    .local v8, "mostFrequentBucketIndex":I
    move-object v0, v3

    .local v0, "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v4, v0, v6

    .local v4, "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    iget v11, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    iget v11, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "bucket":I
    if-ge v2, v8, :cond_2

    move v8, v2

    .end local v2    # "bucket":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_3
    const/4 v1, -0x1

    .local v1, "bestBucketIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    array-length v9, v9

    if-ge v5, v9, :cond_4

    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    aget-object v2, v9, v5

    .local v2, "bucket":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    iget v9, v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;->periodMinInSecond:I

    mul-int/lit16 v9, v9, 0x3e8

    iget v11, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-gt v9, v11, :cond_5

    iget v9, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    iget v11, v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;->periodMaxInSecond:I

    mul-int/lit16 v11, v11, 0x3e8

    if-ge v9, v11, :cond_5

    move v1, v5

    .end local v2    # "bucket":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    :cond_4
    if-ge v8, v1, :cond_7

    move-object v0, v3

    array-length v7, v0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_6

    aget-object v4, v0, v6

    .restart local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    iget v10, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .restart local v2    # "bucket":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v2    # "bucket":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "returning mf bucket number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$300(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    if-eq v1, v10, :cond_9

    move-object v0, v3

    array-length v7, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v7, :cond_8

    aget-object v4, v0, v6

    .restart local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    iget v10, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .end local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "returning best bucket number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$300(Ljava/lang/String;)V

    move v8, v1

    goto/16 :goto_0

    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find suitable bucket for period "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$000(Ljava/lang/String;)V

    move v8, v10

    goto/16 :goto_0
.end method


# virtual methods
.method addScanRequestToBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I
    .locals 16
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->getBestBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    move-result v4

    .local v4, "bucketIndex":I
    const/4 v13, -0x1

    if-ne v4, v13, :cond_0

    const-string v13, "Ignoring invalid settings"

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$000(Ljava/lang/String;)V

    const/4 v13, -0x1

    :goto_0
    return v13

    :cond_0
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .local v7, "desiredChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v13, :cond_1

    if-eqz v7, :cond_1

    array-length v13, v7

    if-nez v13, :cond_2

    :cond_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    invoke-static {v13}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$1900(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v13, "No channels to scan!!"

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$000(Ljava/lang/String;)V

    const/4 v13, -0x1

    goto :goto_0

    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "merging "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " channels "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " for period "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " maxScans "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$300(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v13, v13, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v3, v13, v4

    .local v3, "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iget v13, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    if-nez v13, :cond_5

    iget v13, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    if-nez v13, :cond_5

    const/4 v1, 0x1

    .local v1, "added":Z
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "existing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " channels "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$300(Ljava/lang/String;)V

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .local v12, "newChannels":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/wifi/WifiScanner$ChannelSpec;>;"
    move-object v2, v7

    .local v2, "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_2
    if-ge v10, v11, :cond_7

    aget-object v6, v2, v10

    .local v6, "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v8, 0x0

    .local v8, "found":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    iget v13, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    if-ge v9, v13, :cond_3

    iget v13, v6, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    iget-object v14, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    aget-object v14, v14, v9

    iget v14, v14, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    if-ne v13, v14, :cond_6

    const/4 v8, 0x1

    :cond_3
    if-nez v8, :cond_4

    invoke-virtual {v12, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v1    # "added":Z
    .end local v2    # "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v6    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v8    # "found":Z
    .end local v9    # "i":I
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "newChannels":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/wifi/WifiScanner$ChannelSpec;>;"
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .restart local v1    # "added":Z
    .restart local v2    # "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .restart local v6    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .restart local v8    # "found":Z
    .restart local v9    # "i":I
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "newChannels":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/wifi/WifiScanner$ChannelSpec;>;"
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .end local v6    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v8    # "found":Z
    .end local v9    # "i":I
    :cond_7
    move-object/from16 v0, p1

    iget v13, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v13, :cond_8

    iget v13, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    array-length v14, v14

    if-le v13, v14, :cond_e

    :cond_8
    const/4 v13, 0x0

    iput v13, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    iget-object v13, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->getBandFromChannels([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I
    invoke-static {v13}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$2000([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I

    move-result v13

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->getBandFromChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;)I
    invoke-static {v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$2100([Landroid/net/wifi/WifiScanner$ChannelSpec;)I

    move-result v14

    or-int/2addr v13, v14

    iput v13, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    const/4 v13, 0x0

    new-array v13, v13, [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    iput-object v13, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "switching to using band "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$300(Ljava/lang/String;)V

    .end local v10    # "i$":I
    :cond_9
    iget v13, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    if-ge v13, v14, :cond_a

    move-object/from16 v0, p1

    iget v13, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    iput v13, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    :cond_a
    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    aget-object v13, v13, v4

    iget v13, v13, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;->periodInSecond:I

    mul-int/lit16 v13, v13, 0x3e8

    iput v13, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v14, v13, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    :cond_b
    move-object/from16 v0, p1

    iget v13, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v13, v13, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    if-le v13, v14, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    iput v14, v13, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    :cond_c
    move-object/from16 v0, p1

    iget v13, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v13, v13, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    if-le v13, v14, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    iput v14, v13, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    :cond_d
    iget v13, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    goto/16 :goto_0

    .restart local v10    # "i$":I
    :cond_e
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .restart local v6    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adding new channel spec "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v6, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$300(Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/wifi/WifiNative$ChannelSettings;

    invoke-direct {v5}, Lcom/android/server/wifi/WifiNative$ChannelSettings;-><init>()V

    .local v5, "channelSettings":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    iget v13, v6, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    iput v13, v5, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    iget-object v13, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    iget v14, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    aput-object v5, v13, v14

    iget v13, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v15, v5, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public compressBuckets()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "num_buckets":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v3, v3, v0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iput v1, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    iput v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    :cond_4
    return-void
.end method

.method public getComputedSettings()Lcom/android/server/wifi/WifiNative$ScanSettings;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    return-object v0
.end method

.method prepChannelMap(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 0
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->getBestBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    return-void
.end method
