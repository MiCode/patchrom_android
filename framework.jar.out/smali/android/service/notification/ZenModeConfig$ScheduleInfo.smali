.class public Landroid/service/notification/ZenModeConfig$ScheduleInfo;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScheduleInfo"
.end annotation


# instance fields
.field public days:[I

.field public endHour:I

.field public endMinute:I

.field public startHour:I

.field public startMinute:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    new-instance v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .local v0, "rt":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_0
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    instance-of v2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .local v0, "other":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    # invokes: Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->access$200([I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    # invokes: Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->access$200([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method
