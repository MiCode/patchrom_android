.class Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AggregatedStats"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mCreated:J

.field private mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

.field public numAutoCancel:I

.field public numBlocked:I

.field public numForegroundService:I

.field public numInterrupt:I

.field public numOngoing:I

.field public numPeopleCacheHit:I

.field public numPeopleCacheMiss:I

.field public numPostedByApp:I

.field public numPriorityHigh:I

.field public numPriorityLow:I

.field public numPriorityMax:I

.field public numPriorityMin:I

.field public numPrivate:I

.field public numRemovedByApp:I

.field public numSecret:I

.field public numUpdatedByApp:I

.field public numWithActions:I

.field public numWithBigPicture:I

.field public numWithBigText:I

.field public numWithInbox:I

.field public numWithInfoText:I

.field public numWithLargeIcon:I

.field public numWithMediaSession:I

.field public numWithStaredPeople:I

.field public numWithSubText:I

.field public numWithText:I

.field public numWithTitle:I

.field public numWithValidPeople:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mCreated:J

    return-void
.end method

.method private maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0
    .param p1, "dump"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    if-lez p3, :cond_0

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AggregatedStats{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numPostedByApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numUpdatedByApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numRemovedByApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numPeopleCacheHit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numWithStaredPeople="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numWithValidPeople="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numPeopleCacheMiss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numBlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public countApiUse(Lcom/android/server/notification/NotificationRecord;)V
    .locals 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .local v2, "n":Landroid/app/Notification;
    iget-object v3, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    :cond_0
    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    :cond_1
    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    :cond_2
    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    :cond_3
    iget v3, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_4

    iget v3, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    iget-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v3, :cond_4

    iget-object v3, v2, Landroid/app/Notification;->vibrate:[J

    if-eqz v3, :cond_5

    :cond_4
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    :cond_5
    iget v3, v2, Landroid/app/Notification;->visibility:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    iget v3, v2, Landroid/app/Notification;->priority:I

    packed-switch v3, :pswitch_data_1

    :goto_1
    :pswitch_0
    iget-object v3, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "Key":Ljava/lang/String;
    const-string v3, "android.bigText"

    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    goto :goto_2

    .end local v0    # "Key":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :pswitch_1
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    goto :goto_0

    :pswitch_2
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    goto :goto_0

    :pswitch_3
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMax:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMax:I

    goto :goto_1

    :pswitch_4
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityHigh:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityHigh:I

    goto :goto_1

    :pswitch_5
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityLow:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityLow:I

    goto :goto_1

    :pswitch_6
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMin:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMin:I

    goto :goto_1

    .restart local v0    # "Key":Ljava/lang/String;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_7
    const-string v3, "android.picture"

    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    goto :goto_2

    :cond_8
    const-string v3, "android.largeIcon"

    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    goto :goto_2

    :cond_9
    const-string v3, "android.textLines"

    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    goto :goto_2

    :cond_a
    const-string v3, "android.mediaSession"

    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    goto/16 :goto_2

    :cond_b
    const-string v3, "android.title"

    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    goto/16 :goto_2

    :cond_c
    const-string v3, "android.text"

    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    goto/16 :goto_2

    :cond_d
    const-string v3, "android.subText"

    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    goto/16 :goto_2

    :cond_e
    const-string v3, "android.infoText"

    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    goto/16 :goto_2

    .end local v0    # "Key":Ljava/lang/String;
    :cond_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpJson()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .local v0, "dump":Lorg/json/JSONObject;
    const-string v1, "key"

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "duration"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mCreated:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "numPostedByApp"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numUpdatedByApp"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numRemovedByApp"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numPeopleCacheHit"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numPeopleCacheMiss"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numWithStaredPeople"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numWithValidPeople"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numBlocked"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numWithActions"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numPrivate"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numSecret"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numPriorityMax"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMax:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numPriorityHigh"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityHigh:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numPriorityLow"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityLow:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numPriorityMin"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMin:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numInterrupt"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numWithBigText"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numWithBigPicture"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numForegroundService"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numOngoing"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numAutoCancel"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numWithLargeIcon"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numWithInbox"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numWithMediaSession"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numWithTitle"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numWithText"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numWithSubText"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "numWithInfoText"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-object v0
.end method

.method public emit()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    :cond_0
    const-string v0, "note_post"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_update"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_remove"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_with_people"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_with_stars"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "people_cache_hit"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "people_cache_miss"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_blocked"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_with_actions"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_private"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_secret"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_prio_max"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMax:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMax:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_prio_high"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityHigh:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityHigh:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_prio_low"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityLow:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityLow:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_prio_min"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMin:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMin:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_interupt"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_big_text"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_big_pic"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_fg"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_ongoing"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_auto"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_large_icon"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_inbox"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_media"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_title"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_text"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_sub_text"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    const-string v0, "note_info_text"

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMax:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMax:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityHigh:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityHigh:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityLow:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityLow:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMin:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPriorityMin:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    return-void
.end method

.method maybeCount(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
