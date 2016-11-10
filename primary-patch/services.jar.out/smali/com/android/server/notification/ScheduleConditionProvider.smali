.class public Lcom/android/server/notification/ScheduleConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "ScheduleConditionProvider.java"


# static fields
.field private static final ACTION_EVALUATE:Ljava/lang/String;

.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final NOT_SHOWN:Ljava/lang/String; = "..."

.field private static final REQUEST_CODE_EVALUATE:I = 0x1

.field private static final SIMPLE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.SCP"


# instance fields
.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private mNextAlarmTime:J

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private final mSubscriptions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    const-class v0, Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".EVALUATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    iput-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/notification/ScheduleConditionProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ScheduleConditionProvider$1;-><init>(Lcom/android/server/notification/ScheduleConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/ScheduleConditionProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ScheduleConditionProvider;

    .prologue
    invoke-direct {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions()V

    return-void
.end method

.method private createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;
    .locals 11
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "state"    # I

    .prologue
    const-string v10, "..."

    .local v10, "summary":Ljava/lang/String;
    const-string v8, "..."

    .local v8, "line1":Ljava/lang/String;
    const-string v9, "..."

    .local v9, "line2":Ljava/lang/String;
    new-instance v0, Landroid/service/notification/Condition;

    const-string v2, "..."

    const-string v3, "..."

    const-string v4, "..."

    const/4 v5, 0x0

    const/4 v7, 0x2

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method private evaluateSubscriptions()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    iget-object v3, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v8

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/server/notification/ScheduleConditionProvider;->setRegistered(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .local v6, "now":J
    iput-wide v12, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    iget-object v3, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, "conditionId":Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/server/notification/ScheduleConditionProvider;->toScheduleCalendar(Landroid/net/Uri;)Lcom/android/server/notification/ScheduleCalendar;

    move-result-object v0

    .local v0, "cal":Lcom/android/server/notification/ScheduleCalendar;
    if-eqz v0, :cond_3

    invoke-virtual {v0, v6, v7}, Lcom/android/server/notification/ScheduleCalendar;->isInSchedule(J)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "meetsSchedule"

    invoke-direct {p0, v1, v8, v3}, Lcom/android/server/notification/ScheduleConditionProvider;->notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0, v6, v7}, Lcom/android/server/notification/ScheduleCalendar;->getNextChangeTime(J)J

    move-result-wide v4

    .local v4, "nextChangeTime":J
    cmp-long v3, v4, v12

    if-lez v3, :cond_0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    iget-wide v10, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    cmp-long v3, v10, v12

    if-eqz v3, :cond_1

    iget-wide v10, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    cmp-long v3, v4, v10

    if-gez v3, :cond_0

    :cond_1
    iput-wide v4, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    goto :goto_1

    .end local v0    # "cal":Lcom/android/server/notification/ScheduleCalendar;
    .end local v1    # "conditionId":Landroid/net/Uri;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "nextChangeTime":J
    .end local v6    # "now":J
    :cond_2
    move v3, v9

    goto :goto_0

    .restart local v0    # "cal":Lcom/android/server/notification/ScheduleCalendar;
    .restart local v1    # "conditionId":Landroid/net/Uri;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "now":J
    :cond_3
    const-string v3, "!meetsSchedule"

    invoke-direct {p0, v1, v9, v3}, Lcom/android/server/notification/ScheduleConditionProvider;->notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    goto :goto_2

    .end local v0    # "cal":Lcom/android/server/notification/ScheduleCalendar;
    .end local v1    # "conditionId":Landroid/net/Uri;
    :cond_4
    iget-wide v8, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/server/notification/ScheduleConditionProvider;->updateAlarm(JJ)V

    return-void
.end method

.method private static meetsSchedule(Landroid/net/Uri;J)Z
    .locals 3
    .param p0, "conditionId"    # Landroid/net/Uri;
    .param p1, "time"    # J

    .prologue
    invoke-static {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->toScheduleCalendar(Landroid/net/Uri;)Lcom/android/server/notification/ScheduleCalendar;

    move-result-object v0

    .local v0, "cal":Lcom/android/server/notification/ScheduleCalendar;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ScheduleCalendar;->isInSchedule(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 3
    .param p1, "conditionId"    # Landroid/net/Uri;
    .param p2, "state"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCondition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    return-void
.end method

.method private setRegistered(Z)V
    .locals 4
    .param p1, "registered"    # Z

    .prologue
    iget-boolean v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v1, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ConditionProviders.SCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRegistered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    iget-boolean v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ScheduleConditionProvider;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private static toScheduleCalendar(Landroid/net/Uri;)Lcom/android/server/notification/ScheduleCalendar;
    .locals 3
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    .local v1, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v2, v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/server/notification/ScheduleCalendar;

    invoke-direct {v0}, Lcom/android/server/notification/ScheduleCalendar;-><init>()V

    .local v0, "sc":Lcom/android/server/notification/ScheduleCalendar;
    invoke-virtual {v0, v1}, Lcom/android/server/notification/ScheduleCalendar;->setSchedule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/ScheduleCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method private updateAlarm(JJ)V
    .locals 11
    .param p1, "now"    # J
    .param p3, "time"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, "alarms":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "time"

    invoke-virtual {v3, v4, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v2, v9, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    cmp-long v2, p3, p1

    if-lez v2, :cond_2

    sget-boolean v2, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ConditionProviders.SCP"

    const-string v3, "Scheduling evaluate for %s, in %s, now=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lcom/android/server/notification/ScheduleConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    sub-long v6, p3, p1

    invoke-static {v6, v7}, Lcom/android/server/notification/ScheduleConditionProvider;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    invoke-static {p1, p2}, Lcom/android/server/notification/ScheduleConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0, v8, p3, p4, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v2, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ConditionProviders.SCP"

    const-string v3, "Not scheduling evaluate"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/service/notification/IConditionProvider;

    return-object v0
.end method

.method public attachBase(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      mConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "      mRegistered="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "      mSubscriptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, "now":J
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .local v6, "conditionId":Landroid/net/Uri;
    const-string v0, "        "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6, v4, v5}, Lcom/android/server/notification/ScheduleConditionProvider;->meetsSchedule(Landroid/net/Uri;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "* "

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "  "

    goto :goto_1

    .end local v6    # "conditionId":Landroid/net/Uri;
    :cond_1
    const-string v1, "mNextAlarmTime"

    iget-wide v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/ScheduleConditionProvider;->dumpUpcomingTime(Ljava/io/PrintWriter;Ljava/lang/String;JJ)V

    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public isValidConditionId(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "id"    # Landroid/net/Uri;

    .prologue
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public onBootComplete()V
    .locals 0

    .prologue
    return-void
.end method

.method public onConnected()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.SCP"

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/server/notification/SystemConditionProviderService;->onDestroy()V

    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.SCP"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    return-void
.end method

.method public onRequestConditions(I)V
    .locals 3
    .param p1, "relevance"    # I

    .prologue
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestConditions relevance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 3
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "badCondition"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/ScheduleConditionProvider;->notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions()V

    goto :goto_0
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 3
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnsubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions()V

    return-void
.end method
