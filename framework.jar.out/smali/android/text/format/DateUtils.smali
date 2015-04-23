.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field public static final FORMAT_12HOUR:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_24HOUR:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_CAP_AMPM:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_MIDNIGHT:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_NOON:I = 0x200

.field public static final FORMAT_NO_NOON_MIDNIGHT:I = 0xa00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_LONG:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_MEDIUM:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORT:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTER:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTEST:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field public static final WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L

.field private static sElapsedFormatHMMSS:Ljava/lang/String;

.field private static sElapsedFormatMMSS:Ljava/lang/String;

.field private static sLastConfig:Landroid/content/res/Configuration;

.field private static final sLock:Ljava/lang/Object;

.field private static sNowTime:Landroid/text/format/Time;

.field private static sThenTime:Landroid/text/format/Time;

.field public static final sameMonthTable:[I

.field public static final sameYearTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    sput-object v1, Landroid/text/format/DateUtils;->sameYearTable:[I

    sput-object v1, Landroid/text/format/DateUtils;->sameMonthTable:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "flags"    # I

    .prologue
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v1, "f":Ljava/util/Formatter;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "startMillis"    # J
    .param p4, "endMillis"    # J
    .param p6, "flags"    # I

    .prologue
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "startMillis"    # J
    .param p4, "endMillis"    # J
    .param p6, "flags"    # I
    .param p7, "timeZone"    # Ljava/lang/String;

    .prologue
    and-int/lit16 v2, p6, 0xc1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x80

    :goto_0
    or-int/2addr p6, v2

    :cond_0
    invoke-static/range {p2 .. p7}, Llibcore/icu/DateIntervalFormat;->formatDateRange(JJILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "range":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .end local v1    # "range":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x40

    goto :goto_0

    .restart local v1    # "range":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "impossible":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J
    .param p3, "flags"    # I

    .prologue
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move v6, p3

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(J)Ljava/lang/CharSequence;
    .locals 12
    .param p0, "millis"    # J

    .prologue
    const-wide/32 v10, 0x36ee80

    const-wide/32 v6, 0xea60

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "res":Landroid/content/res/Resources;
    cmp-long v4, p0, v10

    if-ltz v4, :cond_0

    const-wide/32 v4, 0x1b7740

    add-long/2addr v4, p0

    div-long/2addr v4, v10

    long-to-int v0, v4

    .local v0, "hours":I
    const v4, 0x1140004

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v0    # "hours":I
    :goto_0
    return-object v4

    :cond_0
    cmp-long v4, p0, v6

    if-ltz v4, :cond_1

    const-wide/16 v4, 0x7530

    add-long/2addr v4, p0

    div-long/2addr v4, v6

    long-to-int v1, v4

    .local v1, "minutes":I
    const v4, 0x1140003

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v1    # "minutes":I
    :cond_1
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, p0

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    .local v3, "seconds":I
    const v4, 0x1140002

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "elapsedSeconds"    # J

    .prologue
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 13
    .param p0, "recycle"    # Ljava/lang/StringBuilder;
    .param p1, "elapsedSeconds"    # J

    .prologue
    const-wide/16 v2, 0x0

    .local v2, "hours":J
    const-wide/16 v4, 0x0

    .local v4, "minutes":J
    const-wide/16 v6, 0x0

    .local v6, "seconds":J
    const-wide/16 v8, 0xe10

    cmp-long v8, p1, v8

    if-ltz v8, :cond_0

    const-wide/16 v8, 0xe10

    div-long v2, p1, v8

    const-wide/16 v8, 0xe10

    mul-long/2addr v8, v2

    sub-long/2addr p1, v8

    :cond_0
    const-wide/16 v8, 0x3c

    cmp-long v8, p1, v8

    if-ltz v8, :cond_1

    const-wide/16 v8, 0x3c

    div-long v4, p1, v8

    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v4

    sub-long/2addr p1, v8

    :cond_1
    move-wide v6, p1

    move-object v1, p0

    .local v1, "sb":Ljava/lang/StringBuilder;
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    const/16 v8, 0x8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    new-instance v0, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v0, v1, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v0, "f":Ljava/util/Formatter;
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_3

    sget-object v8, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    return-object v8

    .end local v0    # "f":Ljava/util/Formatter;
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .restart local v0    # "f":Ljava/util/Formatter;
    :cond_3
    sget-object v8, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method public static final formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "then"    # J
    .param p2, "now"    # J
    .param p4, "dateStyle"    # I
    .param p5, "timeStyle"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .local v2, "thenCal":Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .local v3, "thenDate":Ljava/util/Date;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .local v1, "nowCal":Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .local v0, "f":Ljava/text/DateFormat;
    :goto_0
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .end local v0    # "f":Ljava/text/DateFormat;
    :cond_0
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0    # "f":Ljava/text/DateFormat;
    goto :goto_0
.end method

.method public static getAMPMString(I)Ljava/lang/String;
    .locals 2
    .param p0, "ampm"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    add-int/lit8 v1, p0, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDayOfWeekString(II)Ljava/lang/String;
    .locals 3
    .param p0, "dayOfWeek"    # I
    .param p1, "abbrev"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .local v0, "d":Llibcore/icu/LocaleData;
    sparse-switch p1, :sswitch_data_0

    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .local v1, "names":[Ljava/lang/String;
    :goto_0
    aget-object v2, v1, p0

    return-object v2

    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getMonthString(II)Ljava/lang/String;
    .locals 3
    .param p0, "month"    # I
    .param p1, "abbrev"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .local v0, "d":Llibcore/icu/LocaleData;
    sparse-switch p1, :sswitch_data_0

    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .local v1, "names":[Ljava/lang/String;
    :goto_0
    aget-object v2, v1, p0

    return-object v2

    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .locals 13
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "minResolution"    # J
    .param p5, "transitionResolution"    # J
    .param p7, "flags"    # I

    .prologue
    move/from16 v0, p7

    and-int/lit16 v2, v0, 0xc1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x80

    :goto_0
    or-int p7, p7, v2

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide v4, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p7

    invoke-static/range {v2 .. v12}, Llibcore/icu/RelativeDateTimeFormatter;->getRelativeDateTimeString(Ljava/util/Locale;Ljava/util/TimeZone;JJJJI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const/16 v2, 0x40

    goto :goto_0
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "startTime"    # J

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "minResolution"    # J

    .prologue
    const v6, 0x10014

    .local v6, "flags":I
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "minResolution"    # J
    .param p6, "flags"    # I

    .prologue
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-static/range {v0 .. v8}, Llibcore/icu/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "millis"    # J

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 17
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "millis"    # J
    .param p3, "withPreposition"    # Z

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, "now":J
    sub-long v4, v10, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    .local v14, "span":J
    const-class v13, Landroid/text/format/DateUtils;

    monitor-enter v13

    :try_start_0
    sget-object v3, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v3, :cond_0

    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    sput-object v3, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    :cond_0
    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v3, :cond_1

    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    sput-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    :cond_1
    sget-object v3, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v3, v10, v11}, Landroid/text/format/Time;->set(J)V

    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    const-wide/32 v4, 0x5265c00

    cmp-long v3, v14, v4

    if-gez v3, :cond_3

    sget-object v3, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->weekDay:I

    sget-object v4, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->weekDay:I

    if-ne v3, v4, :cond_3

    const/4 v8, 0x1

    .local v8, "flags":I
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p1

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .local v12, "result":Ljava/lang/String;
    const v2, 0x1040323

    .local v2, "prepositionId":I
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .local v9, "res":Landroid/content/res/Resources;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    invoke-virtual {v9, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_2
    monitor-exit v13

    return-object v12

    .end local v2    # "prepositionId":I
    .end local v8    # "flags":I
    .end local v12    # "result":Ljava/lang/String;
    :cond_3
    sget-object v3, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    sget-object v4, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_4

    const v8, 0x20014

    .restart local v8    # "flags":I
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p1

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "result":Ljava/lang/String;
    const v2, 0x1040322

    .restart local v2    # "prepositionId":I
    goto :goto_0

    .end local v2    # "prepositionId":I
    .end local v8    # "flags":I
    .end local v12    # "result":Ljava/lang/String;
    :cond_4
    const v8, 0x10010

    .restart local v8    # "flags":I
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p1

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "result":Ljava/lang/String;
    const v2, 0x1040322

    .restart local v2    # "prepositionId":I
    goto :goto_0

    .end local v2    # "prepositionId":I
    .end local v8    # "flags":I
    .end local v12    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static initFormatStrings()V
    .locals 2

    .prologue
    sget-object v1, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static initFormatStringsLocked()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, "cfg":Landroid/content/res/Configuration;
    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sput-object v0, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    const v2, 0x1040336

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    const v2, 0x1040337

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static isToday(J)Z
    .locals 6
    .param p0, "when"    # J

    .prologue
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .local v3, "time":Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    iget v2, v3, Landroid/text/format/Time;->year:I

    .local v2, "thenYear":I
    iget v0, v3, Landroid/text/format/Time;->month:I

    .local v0, "thenMonth":I
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    .local v1, "thenMonthDay":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    iget v4, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->month:I

    if-ne v0, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
