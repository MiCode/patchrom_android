.class public Lcom/android/server/notification/ScheduleCalendar;
.super Ljava/lang/Object;
.source "ScheduleCalendar.java"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mDays:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private addDays(JI)J
    .locals 3
    .param p1, "time"    # J
    .param p3, "days"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getDayOfWeek(J)I
    .locals 3
    .param p1, "time"    # J

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private getNextTime(JII)J
    .locals 3
    .param p1, "now"    # J
    .param p3, "hr"    # I
    .param p4, "min"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v0

    .local v0, "time":J
    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide v0

    .end local v0    # "time":J
    :cond_0
    return-wide v0
.end method

.method private getTime(JII)J
    .locals 3
    .param p1, "millis"    # J
    .param p3, "hour"    # I
    .param p4, "min"    # I

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private isInSchedule(IJJJ)Z
    .locals 4
    .param p1, "daysOffset"    # I
    .param p2, "time"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J

    .prologue
    const/4 v1, 0x7

    .local v1, "n":I
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/ScheduleCalendar;->getDayOfWeek(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v3, p1, 0x7

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x7

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v0, v2, 0x1

    .local v0, "day":I
    invoke-direct {p0, p4, p5, p1}, Lcom/android/server/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide p4

    invoke-direct {p0, p6, p7, p1}, Lcom/android/server/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide p6

    iget-object v2, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    cmp-long v2, p2, p4

    if-ltz v2, :cond_0

    cmp-long v2, p2, p6

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateDays()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getNextChangeTime(J)J
    .locals 7
    .param p1, "now"    # J

    .prologue
    iget-object v4, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    return-wide v4

    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v5, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/server/notification/ScheduleCalendar;->getNextTime(JII)J

    move-result-wide v2

    .local v2, "nextStart":J
    iget-object v4, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v5, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/server/notification/ScheduleCalendar;->getNextTime(JII)J

    move-result-wide v0

    .local v0, "nextEnd":J
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0
.end method

.method public isInSchedule(J)Z
    .locals 11
    .param p1, "time"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v8

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v4

    .local v4, "start":J
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v6

    .local v6, "end":J
    cmp-long v0, v6, v4

    if-gtz v0, :cond_2

    invoke-direct {p0, v6, v7, v9}, Lcom/android/server/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide v6

    :cond_2
    const/4 v1, -0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    move v1, v8

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v9

    goto :goto_0

    :cond_4
    move v0, v8

    goto :goto_0
.end method

.method public nextScheduleStart(J)J
    .locals 9
    .param p1, "time"    # J

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-wide v4, v6

    :cond_1
    :goto_0
    return-wide v4

    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v8, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v8, v8, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-direct {p0, p1, p2, v1, v8}, Lcom/android/server/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v2

    .local v2, "start":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_4

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide v4

    .local v4, "t":J
    cmp-long v1, v4, p1

    if-lez v1, :cond_3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/notification/ScheduleCalendar;->isInSchedule(J)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v4    # "t":J
    :cond_4
    move-wide v4, v6

    goto :goto_0
.end method

.method public setSchedule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V
    .locals 1
    .param p1, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {p0}, Lcom/android/server/notification/ScheduleCalendar;->updateDays()V

    goto :goto_0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScheduleCalendar[mDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
