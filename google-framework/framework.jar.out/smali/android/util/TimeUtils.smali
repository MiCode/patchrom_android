.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "TimeUtils"

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 144
    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroid/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 1
    .parameter "amt"
    .parameter "suffix"
    .parameter "always"
    .parameter "zeropad"

    .prologue
    .line 147
    const/16 v0, 0x63

    if-gt p0, v0, :cond_0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    if-lt p3, v0, :cond_1

    .line 148
    :cond_0
    add-int/lit8 v0, p1, 0x3

    .line 156
    :goto_0
    return v0

    .line 150
    :cond_1
    const/16 v0, 0x9

    if-gt p0, v0, :cond_2

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    if-lt p3, v0, :cond_3

    .line 151
    :cond_2
    add-int/lit8 v0, p1, 0x2

    goto :goto_0

    .line 153
    :cond_3
    if-nez p2, :cond_4

    if-lez p0, :cond_5

    .line 154
    :cond_4
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    .line 156
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 3
    .parameter "time"
    .parameter "now"
    .parameter "pw"

    .prologue
    .line 277
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 278
    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 281
    :cond_0
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    goto :goto_0
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 1
    .parameter "duration"
    .parameter "pw"

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 273
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 5
    .parameter "duration"
    .parameter "pw"
    .parameter "fieldLen"

    .prologue
    .line 264
    sget-object v2, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    .line 265
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 266
    .local v0, len:I
    new-instance v1, Ljava/lang/String;

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    monitor-exit v2

    .line 268
    return-void

    .line 267
    .end local v0           #len:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 4
    .parameter "duration"
    .parameter "builder"

    .prologue
    .line 256
    sget-object v2, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    .line 257
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 258
    .local v0, len:I
    sget-object v1, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 259
    monitor-exit v2

    .line 260
    return-void

    .line 259
    .end local v0           #len:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .locals 21
    .parameter "duration"
    .parameter "fieldLen"

    .prologue
    .line 184
    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    array-length v4, v4

    move/from16 v0, p2

    if-ge v4, v0, :cond_0

    .line 185
    move/from16 v0, p2

    new-array v4, v0, [C

    sput-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 188
    :cond_0
    sget-object v2, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 190
    .local v2, formatStr:[C
    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-nez v4, :cond_2

    .line 191
    const/4 v5, 0x0

    .line 192
    .local v5, pos:I
    add-int/lit8 p2, p2, -0x1

    move/from16 v16, v5

    .line 193
    .end local v5           #pos:I
    .local v16, pos:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    .line 194
    add-int/lit8 v5, v16, 0x1

    .end local v16           #pos:I
    .restart local v5       #pos:I
    const/16 v4, 0x20

    aput-char v4, v2, v16

    move/from16 v16, v5

    .end local v5           #pos:I
    .restart local v16       #pos:I
    goto :goto_0

    .line 196
    :cond_1
    const/16 v4, 0x30

    aput-char v4, v2, v16

    .line 197
    add-int/lit8 v4, v16, 0x1

    .line 251
    .end local v16           #pos:I
    :goto_1
    return v4

    .line 201
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-lez v4, :cond_6

    .line 202
    const/16 v17, 0x2b

    .line 208
    .local v17, prefix:C
    :goto_2
    const-wide/16 v6, 0x3e8

    rem-long v6, p0, v6

    long-to-int v13, v6

    .line 209
    .local v13, millis:I
    const-wide/16 v6, 0x3e8

    div-long v6, p0, v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v18, v0

    .line 210
    .local v18, seconds:I
    const/4 v3, 0x0

    .local v3, days:I
    const/4 v12, 0x0

    .local v12, hours:I
    const/4 v14, 0x0

    .line 212
    .local v14, minutes:I
    const v4, 0x15180

    move/from16 v0, v18

    if-le v0, v4, :cond_3

    .line 213
    const v4, 0x15180

    div-int v3, v18, v4

    .line 214
    const v4, 0x15180

    mul-int/2addr v4, v3

    sub-int v18, v18, v4

    .line 216
    :cond_3
    const/16 v4, 0xe10

    move/from16 v0, v18

    if-le v0, v4, :cond_4

    .line 217
    move/from16 v0, v18

    div-int/lit16 v12, v0, 0xe10

    .line 218
    mul-int/lit16 v4, v12, 0xe10

    sub-int v18, v18, v4

    .line 220
    :cond_4
    const/16 v4, 0x3c

    move/from16 v0, v18

    if-le v0, v4, :cond_5

    .line 221
    div-int/lit8 v14, v18, 0x3c

    .line 222
    mul-int/lit8 v4, v14, 0x3c

    sub-int v18, v18, v4

    .line 225
    :cond_5
    const/4 v5, 0x0

    .line 227
    .restart local v5       #pos:I
    if-eqz p2, :cond_b

    .line 228
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v15

    .line 229
    .local v15, myLen:I
    const/4 v6, 0x1

    if-lez v15, :cond_7

    const/4 v4, 0x1

    :goto_3
    const/4 v7, 0x2

    invoke-static {v12, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 230
    const/4 v6, 0x1

    if-lez v15, :cond_8

    const/4 v4, 0x1

    :goto_4
    const/4 v7, 0x2

    invoke-static {v14, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 231
    const/4 v6, 0x1

    if-lez v15, :cond_9

    const/4 v4, 0x1

    :goto_5
    const/4 v7, 0x2

    move/from16 v0, v18

    invoke-static {v0, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 232
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lez v15, :cond_a

    const/4 v4, 0x3

    :goto_6
    invoke-static {v13, v6, v7, v4}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v15, v4

    .line 233
    :goto_7
    move/from16 v0, p2

    if-ge v15, v0, :cond_b

    .line 234
    const/16 v4, 0x20

    aput-char v4, v2, v5

    .line 235
    add-int/lit8 v5, v5, 0x1

    .line 236
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 204
    .end local v3           #days:I
    .end local v5           #pos:I
    .end local v12           #hours:I
    .end local v13           #millis:I
    .end local v14           #minutes:I
    .end local v15           #myLen:I
    .end local v17           #prefix:C
    .end local v18           #seconds:I
    :cond_6
    const/16 v17, 0x2d

    .line 205
    .restart local v17       #prefix:C
    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    goto/16 :goto_2

    .line 229
    .restart local v3       #days:I
    .restart local v5       #pos:I
    .restart local v12       #hours:I
    .restart local v13       #millis:I
    .restart local v14       #minutes:I
    .restart local v15       #myLen:I
    .restart local v18       #seconds:I
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 230
    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 231
    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    .line 232
    :cond_a
    const/4 v4, 0x0

    goto :goto_6

    .line 240
    .end local v15           #myLen:I
    :cond_b
    aput-char v17, v2, v5

    .line 241
    add-int/lit8 v5, v5, 0x1

    .line 243
    move/from16 v19, v5

    .line 244
    .local v19, start:I
    if-eqz p2, :cond_c

    const/16 v20, 0x1

    .line 245
    .local v20, zeropad:Z
    :goto_8
    const/16 v4, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    .line 246
    const/16 v8, 0x68

    move/from16 v0, v19

    if-eq v5, v0, :cond_d

    const/4 v10, 0x1

    :goto_9
    if-eqz v20, :cond_e

    const/4 v11, 0x2

    :goto_a
    move-object v6, v2

    move v7, v12

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    .line 247
    const/16 v8, 0x6d

    move/from16 v0, v19

    if-eq v5, v0, :cond_f

    const/4 v10, 0x1

    :goto_b
    if-eqz v20, :cond_10

    const/4 v11, 0x2

    :goto_c
    move-object v6, v2

    move v7, v14

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    .line 248
    const/16 v8, 0x73

    move/from16 v0, v19

    if-eq v5, v0, :cond_11

    const/4 v10, 0x1

    :goto_d
    if-eqz v20, :cond_12

    const/4 v11, 0x2

    :goto_e
    move-object v6, v2

    move/from16 v7, v18

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    .line 249
    const/16 v8, 0x6d

    const/4 v10, 0x1

    if-eqz v20, :cond_13

    move/from16 v0, v19

    if-eq v5, v0, :cond_13

    const/4 v11, 0x3

    :goto_f
    move-object v6, v2

    move v7, v13

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    .line 250
    const/16 v4, 0x73

    aput-char v4, v2, v5

    .line 251
    add-int/lit8 v4, v5, 0x1

    goto/16 :goto_1

    .line 244
    .end local v20           #zeropad:Z
    :cond_c
    const/16 v20, 0x0

    goto :goto_8

    .line 246
    .restart local v20       #zeropad:Z
    :cond_d
    const/4 v10, 0x0

    goto :goto_9

    :cond_e
    const/4 v11, 0x0

    goto :goto_a

    .line 247
    :cond_f
    const/4 v10, 0x0

    goto :goto_b

    :cond_10
    const/4 v11, 0x0

    goto :goto_c

    .line 248
    :cond_11
    const/4 v10, 0x0

    goto :goto_d

    :cond_12
    const/4 v11, 0x0

    goto :goto_e

    .line 249
    :cond_13
    const/4 v11, 0x0

    goto :goto_f
.end method

.method public static getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .locals 17
    .parameter "offset"
    .parameter "dst"
    .parameter "when"
    .parameter "country"

    .prologue
    .line 46
    if-nez p4, :cond_0

    .line 47
    const/4 v4, 0x0

    .line 112
    :goto_0
    return-object v4

    .line 50
    :cond_0
    const/4 v2, 0x0

    .line 52
    .local v2, best:Ljava/util/TimeZone;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    .line 53
    .local v13, r:Landroid/content/res/Resources;
    const v15, 0x10f000d

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 54
    .local v12, parser:Landroid/content/res/XmlResourceParser;
    new-instance v8, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 56
    .local v8, d:Ljava/util/Date;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 57
    .local v4, current:Ljava/util/TimeZone;
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, currentName:Ljava/lang/String;
    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v7

    .line 59
    .local v7, currentOffset:I
    invoke-virtual {v4, v8}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v5

    .line 62
    .local v5, currentDst:Z
    :try_start_0
    const-string/jumbo v15, "timezones"

    invoke-static {v12, v15}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 65
    :cond_1
    :goto_1
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 67
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 68
    .local v10, element:Ljava/lang/String;
    if-eqz v10, :cond_2

    const-string/jumbo v15, "timezone"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    if-nez v15, :cond_3

    .line 109
    :cond_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .end local v10           #element:Ljava/lang/String;
    :goto_2
    move-object v4, v2

    .line 112
    goto :goto_0

    .line 72
    .restart local v10       #element:Ljava/lang/String;
    :cond_3
    const/4 v15, 0x0

    :try_start_1
    const-string v16, "code"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, code:Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 75
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 76
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v11

    .line 82
    .local v11, maybe:Ljava/lang/String;
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    if-eqz v15, :cond_4

    .line 83
    move/from16 v0, p0

    if-ne v7, v0, :cond_4

    move/from16 v0, p1

    if-ne v5, v0, :cond_4

    .line 109
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 93
    :cond_4
    if-nez v2, :cond_1

    .line 94
    :try_start_2
    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v14

    .line 96
    .local v14, tz:Ljava/util/TimeZone;
    move-wide/from16 v0, p2

    invoke-virtual {v14, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v15

    move/from16 v0, p0

    if-ne v15, v0, :cond_1

    invoke-virtual {v14, v8}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v15

    move/from16 v0, p1

    if-ne v15, v0, :cond_1

    .line 98
    move-object v2, v14

    goto :goto_1

    .line 104
    .end local v3           #code:Ljava/lang/String;
    .end local v10           #element:Ljava/lang/String;
    .end local v11           #maybe:Ljava/lang/String;
    .end local v14           #tz:Ljava/util/TimeZone;
    :catch_0
    move-exception v9

    .line 105
    .local v9, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string v15, "TimeUtils"

    const-string v16, "Got exception while getting preferred time zone."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 106
    .end local v9           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v9

    .line 107
    .local v9, e:Ljava/io/IOException;
    :try_start_4
    const-string v15, "TimeUtils"

    const-string v16, "Got exception while getting preferred time zone."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 109
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v15

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    throw v15
.end method

.method public static getTimeZoneDatabaseVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static printField([CICIZI)I
    .locals 3
    .parameter "formatStr"
    .parameter "amt"
    .parameter "suffix"
    .parameter "pos"
    .parameter "always"
    .parameter "zeropad"

    .prologue
    .line 161
    if-nez p4, :cond_0

    if-lez p1, :cond_7

    .line 162
    :cond_0
    move v1, p3

    .line 163
    .local v1, startPos:I
    if-eqz p4, :cond_1

    const/4 v2, 0x3

    if-ge p5, v2, :cond_2

    :cond_1
    const/16 v2, 0x63

    if-le p1, v2, :cond_3

    .line 164
    :cond_2
    div-int/lit8 v0, p1, 0x64

    .line 165
    .local v0, dig:I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 166
    add-int/lit8 p3, p3, 0x1

    .line 167
    mul-int/lit8 v2, v0, 0x64

    sub-int/2addr p1, v2

    .line 169
    .end local v0           #dig:I
    :cond_3
    if-eqz p4, :cond_4

    const/4 v2, 0x2

    if-ge p5, v2, :cond_5

    :cond_4
    const/16 v2, 0x9

    if-gt p1, v2, :cond_5

    if-eq v1, p3, :cond_6

    .line 170
    :cond_5
    div-int/lit8 v0, p1, 0xa

    .line 171
    .restart local v0       #dig:I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 172
    add-int/lit8 p3, p3, 0x1

    .line 173
    mul-int/lit8 v2, v0, 0xa

    sub-int/2addr p1, v2

    .line 175
    .end local v0           #dig:I
    :cond_6
    add-int/lit8 v2, p1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 176
    add-int/lit8 p3, p3, 0x1

    .line 177
    aput-char p2, p0, p3

    .line 178
    add-int/lit8 p3, p3, 0x1

    .line 180
    .end local v1           #startPos:I
    :cond_7
    return p3
.end method
