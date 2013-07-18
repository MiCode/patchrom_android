.class public Lcom/android/internal/policy/impl/keyguard/Alarms;
.super Ljava/lang/Object;
.source "Alarms.java"


# static fields
.field public static final ALARM_ALERT_ACTION:Ljava/lang/String; = "com.android.deskclock.ALARM_ALERT"

.field public static final ALARM_ALERT_SILENT:Ljava/lang/String; = "silent"

.field public static final ALARM_DISMISS_ACTION:Ljava/lang/String; = "com.android.deskclock.ALARM_DISMISS"

.field public static final ALARM_DONE_ACTION:Ljava/lang/String; = "com.android.deskclock.ALARM_DONE"

.field public static final ALARM_INTENT_EXTRA:Ljava/lang/String; = "intent.extra.alarm"

.field public static final ALARM_KILLED:Ljava/lang/String; = "alarm_killed"

.field public static final ALARM_KILLED_TIMEOUT:Ljava/lang/String; = "alarm_killed_timeout"

.field public static final ALARM_RAW_DATA:Ljava/lang/String; = "intent.extra.alarm_raw"

.field public static final ALARM_SNOOZE_ACTION:Ljava/lang/String; = "com.android.deskclock.ALARM_SNOOZE"

.field public static final ALARM_SNOOZE_CANCELLED:Ljava/lang/String; = "com.android.deskclock.ALARM_SNOOZE_CANCELLED"

.field public static final CANCEL_SNOOZE:Ljava/lang/String; = "cancel_snooze"

.field private static final DM12:Ljava/lang/String; = "E h:mm aa"

.field private static final DM24:Ljava/lang/String; = "E kk:mm"

.field static final INVALID_ALARM_ID:I = -0x1

.field private static final M12:Ljava/lang/String; = "h:mm aa"

.field static final M24:Ljava/lang/String; = "kk:mm"

.field public static final NEXT_ALARM_TIME_SET:Ljava/lang/String; = "com.android.deskclock.NEXT_ALARM_TIME_SET"

.field static final PREFERENCES:Ljava/lang/String; = "AlarmClock"

.field private static final PREF_SNOOZE_IDS:Ljava/lang/String; = "snooze_ids"

.field private static final PREF_SNOOZE_TIME:Ljava/lang/String; = "snooze_time"

.field private static final TAG:Ljava/lang/String; = "PowerOffAlarm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAlarm(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/Alarm;)J
    .locals 6
    .parameter "context"
    .parameter "alarm"

    .prologue
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/Alarms;->createContentValues(Lcom/android/internal/policy/impl/keyguard/Alarm;)Landroid/content/ContentValues;

    move-result-object v3

    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .local v2, uri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p1, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/Alarms;->calculateAlarm(Lcom/android/internal/policy/impl/keyguard/Alarm;)J

    move-result-wide v0

    .local v0, timeInMillis:J
    iget-boolean v4, p1, Lcom/android/internal/policy/impl/keyguard/Alarm;->enabled:Z

    if-eqz v4, :cond_0

    invoke-static {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/Alarms;->clearSnoozeIfNeeded(Landroid/content/Context;J)V

    :cond_0
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->setNextAlert(Landroid/content/Context;)V

    return-wide v0
.end method

.method private static calculateAlarm(Lcom/android/internal/policy/impl/keyguard/Alarm;)J
    .locals 3
    .parameter "alarm"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->hour:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->minutes:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/Alarms;->calculateAlarm(IILcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static calculateAlarm(IILcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;)Ljava/util/Calendar;
    .locals 9
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .local v1, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .local v2, nowHour:I
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .local v3, nowMinute:I
    if-lt p0, v2, :cond_0

    if-ne p0, v2, :cond_1

    if-gt p1, v3, :cond_1

    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    :cond_1
    invoke-virtual {v1, v7, p0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1, v8, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p2, v1}, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->getNextAlarm(Ljava/util/Calendar;)I

    move-result v0

    .local v0, addDays:I
    if-lez v0, :cond_2

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->add(II)V

    :cond_2
    return-object v1
.end method

.method private static calculateNextAlert(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Alarm;
    .locals 19
    .parameter "context"

    .prologue
    const-wide v8, 0x7fffffffffffffffL

    .local v8, minTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, now:J
    const-string v15, "AlarmClock"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .local v12, prefs:Landroid/content/SharedPreferences;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .local v5, alarms:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/internal/policy/impl/keyguard/Alarm;>;"
    const-string v15, "snooze_ids"

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v14

    .local v14, snoozedIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, snoozedAlarm:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .local v4, alarmId:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-static {v15, v4}, Lcom/android/internal/policy/impl/keyguard/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/internal/policy/impl/keyguard/Alarm;

    move-result-object v2

    .local v2, a:Lcom/android/internal/policy/impl/keyguard/Alarm;
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2           #a:Lcom/android/internal/policy/impl/keyguard/Alarm;
    .end local v4           #alarmId:I
    .end local v13           #snoozedAlarm:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/policy/impl/keyguard/Alarms;->getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_2

    :cond_1
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/Alarm;

    invoke-direct {v2, v6}, Lcom/android/internal/policy/impl/keyguard/Alarm;-><init>(Landroid/database/Cursor;)V

    .restart local v2       #a:Lcom/android/internal/policy/impl/keyguard/Alarm;
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-nez v15, :cond_1

    .end local v2           #a:Lcom/android/internal/policy/impl/keyguard/Alarm;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v3, 0x0

    .local v3, alarm:Lcom/android/internal/policy/impl/keyguard/Alarm;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/Alarm;

    .restart local v2       #a:Lcom/android/internal/policy/impl/keyguard/Alarm;
    iget-wide v15, v2, Lcom/android/internal/policy/impl/keyguard/Alarm;->time:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_5

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/Alarms;->calculateAlarm(Lcom/android/internal/policy/impl/keyguard/Alarm;)J

    move-result-wide v15

    iput-wide v15, v2, Lcom/android/internal/policy/impl/keyguard/Alarm;->time:J

    :cond_5
    invoke-static {v12, v2}, Lcom/android/internal/policy/impl/keyguard/Alarms;->updateAlarmTimeForSnooze(Landroid/content/SharedPreferences;Lcom/android/internal/policy/impl/keyguard/Alarm;)Z

    iget-wide v15, v2, Lcom/android/internal/policy/impl/keyguard/Alarm;->time:J

    cmp-long v15, v15, v10

    if-gez v15, :cond_6

    const-string v15, "PowerOffAlarm"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Disabling expired alarm set for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-wide v0, v2, Lcom/android/internal/policy/impl/keyguard/Alarm;->time:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Lcom/android/internal/policy/impl/keyguard/Alarms;->formatTime(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v15}, Lcom/android/internal/policy/impl/keyguard/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/Alarm;Z)V

    goto :goto_1

    .end local v2           #a:Lcom/android/internal/policy/impl/keyguard/Alarm;
    .end local v3           #alarm:Lcom/android/internal/policy/impl/keyguard/Alarm;
    :catchall_0
    move-exception v15

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v15

    .restart local v2       #a:Lcom/android/internal/policy/impl/keyguard/Alarm;
    .restart local v3       #alarm:Lcom/android/internal/policy/impl/keyguard/Alarm;
    :cond_6
    iget-wide v15, v2, Lcom/android/internal/policy/impl/keyguard/Alarm;->time:J

    cmp-long v15, v15, v8

    if-gez v15, :cond_4

    iget-wide v8, v2, Lcom/android/internal/policy/impl/keyguard/Alarm;->time:J

    move-object v3, v2

    goto :goto_1

    .end local v2           #a:Lcom/android/internal/policy/impl/keyguard/Alarm;
    :cond_7
    return-object v3
.end method

.method private static clearAllSnoozePreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 7
    .parameter "context"
    .parameter "prefs"

    .prologue
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .local v2, nm:Landroid/app/NotificationManager;
    const-string v5, "snooze_ids"

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .local v4, snoozedIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, snoozeId:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/Alarms;->getAlarmPrefSnoozeTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .end local v3           #snoozeId:Ljava/lang/String;
    :cond_0
    const-string v5, "snooze_ids"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static clearSnoozeIfNeeded(Landroid/content/Context;J)V
    .locals 10
    .parameter "context"
    .parameter "alarmTime"

    .prologue
    const-string v7, "AlarmClock"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v7, "snooze_ids"

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    .local v6, snoozedIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, snoozedAlarm:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/Alarms;->getAlarmPrefSnoozeTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-interface {v2, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .local v3, snoozeTime:J
    cmp-long v7, p1, v3

    if-gez v7, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, alarmId:I
    invoke-static {p0, v2, v0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->clearSnoozePreference(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    goto :goto_0

    .end local v0           #alarmId:I
    .end local v3           #snoozeTime:J
    .end local v5           #snoozedAlarm:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static clearSnoozePreference(Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    .locals 6
    .parameter "context"
    .parameter "prefs"
    .parameter "id"

    .prologue
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, alarmStr:Ljava/lang/String;
    const-string v4, "snooze_ids"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .local v3, snoozedIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .local v2, nm:Landroid/app/NotificationManager;
    invoke-virtual {v2, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .end local v2           #nm:Landroid/app/NotificationManager;
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v4, "snooze_ids"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->getAlarmPrefSnoozeTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static createContentValues(Lcom/android/internal/policy/impl/keyguard/Alarm;)Landroid/content/ContentValues;
    .locals 5
    .parameter "alarm"

    .prologue
    new-instance v2, Landroid/content/ContentValues;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .local v2, values:Landroid/content/ContentValues;
    const-wide/16 v0, 0x0

    .local v0, time:J
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->calculateAlarm(Lcom/android/internal/policy/impl/keyguard/Alarm;)J

    move-result-wide v0

    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const-string v3, "_id"

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string v4, "enabled"

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->enabled:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "hour"

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "minutes"

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->minutes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "alarmtime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "daysofweek"

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->getCoded()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "vibrate"

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->vibrate:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "message"

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "alert"

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->alert:Landroid/net/Uri;

    if-nez v3, :cond_3

    const-string v3, "silent"

    :goto_1
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static deleteAlarm(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "alarmId"

    .prologue
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/keyguard/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)V

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static disableAlert(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, am:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .local v1, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {p0, v4}, Lcom/android/internal/policy/impl/keyguard/Alarms;->setStatusBarIcon(Landroid/content/Context;Z)V

    const-string v2, ""

    invoke-static {p0, v2}, Lcom/android/internal/policy/impl/keyguard/Alarms;->saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static disableExpiredAlarms(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/Alarms;->getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    .local v1, cur:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, now:J
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/Alarm;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/Alarm;-><init>(Landroid/database/Cursor;)V

    .local v0, alarm:Lcom/android/internal/policy/impl/keyguard/Alarm;
    iget-wide v4, v0, Lcom/android/internal/policy/impl/keyguard/Alarm;->time:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/android/internal/policy/impl/keyguard/Alarm;->time:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    const-string v4, "PowerOffAlarm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disabling expired alarm set for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/internal/policy/impl/keyguard/Alarm;->time:J

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/Alarms;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Lcom/android/internal/policy/impl/keyguard/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/Alarm;Z)V

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .end local v0           #alarm:Lcom/android/internal/policy/impl/keyguard/Alarm;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method static disableSnoozeAlert(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    const-string v1, "AlarmClock"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/Alarms;->hasAlarmBeenSnoozed(Landroid/content/SharedPreferences;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0, p1}, Lcom/android/internal/policy/impl/keyguard/Alarms;->clearSnoozePreference(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    :cond_0
    return-void
.end method

.method public static enableAlarm(Landroid/content/Context;IZ)V
    .locals 0
    .parameter "context"
    .parameter "id"
    .parameter "enabled"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/Alarms;->enableAlarmInternal(Landroid/content/Context;IZ)V

    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->setNextAlert(Landroid/content/Context;)V

    return-void
.end method

.method private static enableAlarmInternal(Landroid/content/Context;IZ)V
    .locals 1
    .parameter "context"
    .parameter "id"
    .parameter "enabled"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/internal/policy/impl/keyguard/Alarm;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/internal/policy/impl/keyguard/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/Alarm;Z)V

    return-void
.end method

.method private static enableAlarmInternal(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/Alarm;Z)V
    .locals 8
    .parameter "context"
    .parameter "alarm"
    .parameter "enabled"

    .prologue
    const/4 v7, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "enabled"

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_3

    const-wide/16 v1, 0x0

    .local v1, time:J
    iget-object v4, p1, Lcom/android/internal/policy/impl/keyguard/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/Alarms;->calculateAlarm(Lcom/android/internal/policy/impl/keyguard/Alarm;)J

    move-result-wide v1

    :cond_1
    const-string v4, "alarmtime"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .end local v1           #time:J
    :goto_2
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v5, p1, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    iget v4, p1, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    invoke-static {p0, v4}, Lcom/android/internal/policy/impl/keyguard/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method private static enableAlert(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/Alarm;J)V
    .locals 10
    .parameter "context"
    .parameter "alarm"
    .parameter "atTimeInMillis"

    .prologue
    const/4 v9, 0x0

    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, am:Landroid/app/AlarmManager;
    const-string v6, "PowerOffAlarm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "** setAlert id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " atTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .local v3, out:Landroid/os/Parcel;
    invoke-virtual {p1, v3, v9}, Lcom/android/internal/policy/impl/keyguard/Alarm;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    const-string v6, "intent.extra.alarm_raw"

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-static {p0, v9, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v9, p2, p3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/android/internal/policy/impl/keyguard/Alarms;->setStatusBarIcon(Landroid/content/Context;Z)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .local v1, c:Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {p0, v1}, Lcom/android/internal/policy/impl/keyguard/Alarms;->formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    .local v5, timeString:Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/android/internal/policy/impl/keyguard/Alarms;->saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "E kk:mm"

    .local v0, format:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .end local v0           #format:Ljava/lang/String;
    :cond_0
    const-string v0, "E h:mm aa"

    goto :goto_0

    .restart local v0       #format:Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 2
    .parameter "millis"

    .prologue
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static formatTime(Landroid/content/Context;IILcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    invoke-static {p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/Alarms;->calculateAlarm(IILcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    .local v0, c:Ljava/util/Calendar;
    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "kk:mm"

    .local v0, format:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .end local v0           #format:Ljava/lang/String;
    :cond_0
    const-string v0, "h:mm aa"

    goto :goto_0

    .restart local v0       #format:Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method public static get24HourMode(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getAlarm(Landroid/content/ContentResolver;I)Lcom/android/internal/policy/impl/keyguard/Alarm;
    .locals 8
    .parameter "contentResolver"
    .parameter "alarmId"

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .local v6, alarm:Lcom/android/internal/policy/impl/keyguard/Alarm;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v6, Lcom/android/internal/policy/impl/keyguard/Alarm;

    .end local v6           #alarm:Lcom/android/internal/policy/impl/keyguard/Alarm;
    invoke-direct {v6, v7}, Lcom/android/internal/policy/impl/keyguard/Alarm;-><init>(Landroid/database/Cursor;)V

    .restart local v6       #alarm:Lcom/android/internal/policy/impl/keyguard/Alarm;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v6
.end method

.method private static getAlarmPrefSnoozeTimeKey(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->getAlarmPrefSnoozeTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAlarmPrefSnoozeTimeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "snooze_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .parameter "contentResolver"

    .prologue
    const/4 v3, 0x0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v5, "hour, minutes ASC, _id DESC"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getAlarmsCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v6, "hour, minutes ASC, _id DESC"

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .parameter "contentResolver"

    .prologue
    const/4 v4, 0x0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v3, "enabled=1"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static hasAlarmBeenSnoozed(Landroid/content/SharedPreferences;I)Z
    .locals 3
    .parameter "prefs"
    .parameter "alarmId"

    .prologue
    const-string v1, "snooze_ids"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .local v0, snoozedIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "timeString"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static saveSnoozeAlert(Landroid/content/Context;IJ)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "time"

    .prologue
    const-string v3, "AlarmClock"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, prefs:Landroid/content/SharedPreferences;
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    invoke-static {p0, v1}, Lcom/android/internal/policy/impl/keyguard/Alarms;->clearAllSnoozePreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    :goto_0
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->setNextAlert(Landroid/content/Context;)V

    return-void

    :cond_0
    const-string v3, "snooze_ids"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .local v2, snoozedIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "snooze_ids"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/Alarms;->getAlarmPrefSnoozeTimeKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static setAlarm(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/Alarm;)J
    .locals 10
    .parameter "context"
    .parameter "alarm"

    .prologue
    const/4 v9, 0x0

    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/Alarms;->createContentValues(Lcom/android/internal/policy/impl/keyguard/Alarm;)Landroid/content/ContentValues;

    move-result-object v5

    .local v5, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v7, p1, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6, v5, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    int-to-long v1, v6

    .local v1, rowsUpdated:J
    const-wide/16 v6, 0x1

    cmp-long v6, v1, v6

    if-gez v6, :cond_0

    const-string v6, "PowerOffAlarm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error updating alarm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #rowsUpdated:J
    :goto_0
    return-wide v1

    .restart local v1       #rowsUpdated:J
    :cond_0
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/Alarms;->calculateAlarm(Lcom/android/internal/policy/impl/keyguard/Alarm;)J

    move-result-wide v3

    .local v3, timeInMillis:J
    iget-boolean v6, p1, Lcom/android/internal/policy/impl/keyguard/Alarm;->enabled:Z

    if-eqz v6, :cond_1

    iget v6, p1, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    invoke-static {p0, v6}, Lcom/android/internal/policy/impl/keyguard/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)V

    invoke-static {p0, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Alarms;->clearSnoozeIfNeeded(Landroid/content/Context;J)V

    :cond_1
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->setNextAlert(Landroid/content/Context;)V

    move-wide v1, v3

    goto :goto_0
.end method

.method public static setNextAlert(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->calculateNextAlert(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Alarm;

    move-result-object v0

    .local v0, alarm:Lcom/android/internal/policy/impl/keyguard/Alarm;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/android/internal/policy/impl/keyguard/Alarm;->time:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/Alarms;->enableAlert(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/Alarm;J)V

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.deskclock.NEXT_ALARM_TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->disableAlert(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static setStatusBarIcon(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "enabled"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, alarmChanged:Landroid/content/Intent;
    const-string v1, "alarmSet"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static updateAlarmTimeForSnooze(Landroid/content/SharedPreferences;Lcom/android/internal/policy/impl/keyguard/Alarm;)Z
    .locals 5
    .parameter "prefs"
    .parameter "alarm"

    .prologue
    iget v2, p1, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    invoke-static {p0, v2}, Lcom/android/internal/policy/impl/keyguard/Alarms;->hasAlarmBeenSnoozed(Landroid/content/SharedPreferences;I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget v2, p1, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/Alarms;->getAlarmPrefSnoozeTimeKey(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .local v0, time:J
    iput-wide v0, p1, Lcom/android/internal/policy/impl/keyguard/Alarm;->time:J

    const/4 v2, 0x1

    goto :goto_0
.end method
