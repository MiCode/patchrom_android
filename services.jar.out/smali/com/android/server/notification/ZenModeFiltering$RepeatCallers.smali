.class Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
.super Ljava/lang/Object;
.source "ZenModeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RepeatCallers"
.end annotation


# instance fields
.field private final mCalls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThresholdMinutes:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeFiltering$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/ZenModeFiltering$1;

    .prologue
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    .prologue
    iget v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->isRepeat(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized isRepeat(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget v8, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    if-gtz v8, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0090

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    :cond_0
    iget v8, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v8, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    :cond_2
    :try_start_1
    invoke-static {p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->peopleString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .local v3, "peopleString":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, "now":J
    iget-object v8, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_5

    iget-object v8, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .local v6, "time":J
    cmp-long v8, v6, v4

    if-gtz v8, :cond_3

    sub-long v8, v4, v6

    iget v10, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    mul-int/lit16 v10, v10, 0x3e8

    mul-int/lit8 v10, v10, 0x3c

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v6    # "time":J
    :cond_5
    iget-object v8, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "isRepeat":Z
    iget-object v8, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "isRepeat":Z
    .end local v3    # "peopleString":Ljava/lang/String;
    .end local v4    # "now":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private static peopleString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    invoke-static {p0}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "extraPeople":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_5

    aget-object v1, v0, v2

    .local v1, "extraPerson":Ljava/lang/String;
    if-nez v1, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    const/16 v5, 0x7c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v1    # "extraPerson":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
