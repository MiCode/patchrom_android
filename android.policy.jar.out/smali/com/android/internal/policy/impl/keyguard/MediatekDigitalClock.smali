.class public Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;
.super Landroid/widget/LinearLayout;
.source "MediatekDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$FormatChangeObserver;,
        Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;
    }
.end annotation


# static fields
.field private static final HOURS:Ljava/lang/String; = "h"

.field private static final HOURS_24:Ljava/lang/String; = "kk"

.field private static final MINUTES:Ljava/lang/String; = ":mm"


# instance fields
.field private mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHoursFormat:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mTimeDisplayHours:Landroid/widget/TextView;

.field private mTimeDisplayMinutes:Landroid/widget/TextView;

.field private mTimeZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mLive:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk"

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mHoursFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;->setShowAmPm(Z)V

    return-void

    :cond_0
    const-string v0, "h"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateTime()V
    .locals 6

    .prologue
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mLive:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mTimeZoneId:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mTimeZoneId:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, fullTimeStr:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mHoursFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, newTime:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mTimeDisplayHours:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, ":mm"

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mTimeDisplayMinutes:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    .local v1, isMorning:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;->setIsMorning(Z)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;->getAmPmText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .end local v1           #isMorning:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v1, "PowerOffAlarm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttachedToWindow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mAttached:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mAttached:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mLive:Z

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$FormatChangeObserver;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mAttached:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mAttached:Z

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mLive:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x20e005a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mTimeDisplayHours:Landroid/widget/TextView;

    const v0, 0x20e005b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mTimeDisplayMinutes:Landroid/widget/TextView;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->setDateFormat()V

    return-void
.end method

.method setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mLive:Z

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mTimeZoneId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->updateTime()V

    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .parameter "hour"
    .parameter "minute"

    .prologue
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, c:Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->updateTime()V

    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->updateTime()V

    return-void
.end method
