.class public Lorg/ksoap2/kobjects/isodate/IsoDate;
.super Ljava/lang/Object;
.source "IsoDate.java"


# static fields
.field public static final DATE:I = 0x1

.field public static final DATE_TIME:I = 0x3

.field public static final TIME:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dateToString(Ljava/util/Date;I)Ljava/lang/String;
    .locals 7
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "type"    # I

    .prologue
    const/16 v6, 0x3a

    const/16 v5, 0x2d

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .local v1, "c":Ljava/util/Calendar;
    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "buf":Ljava/lang/StringBuffer;
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .local v3, "year":I
    div-int/lit8 v4, v3, 0x64

    invoke-static {v0, v4}, Lorg/ksoap2/kobjects/isodate/IsoDate;->dd(Ljava/lang/StringBuffer;I)V

    rem-int/lit8 v4, v3, 0x64

    invoke-static {v0, v4}, Lorg/ksoap2/kobjects/isodate/IsoDate;->dd(Ljava/lang/StringBuffer;I)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0, v4}, Lorg/ksoap2/kobjects/isodate/IsoDate;->dd(Ljava/lang/StringBuffer;I)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v0, v4}, Lorg/ksoap2/kobjects/isodate/IsoDate;->dd(Ljava/lang/StringBuffer;I)V

    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    const-string v4, "T"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v3    # "year":I
    :cond_0
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v0, v4}, Lorg/ksoap2/kobjects/isodate/IsoDate;->dd(Ljava/lang/StringBuffer;I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v0, v4}, Lorg/ksoap2/kobjects/isodate/IsoDate;->dd(Ljava/lang/StringBuffer;I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v0, v4}, Lorg/ksoap2/kobjects/isodate/IsoDate;->dd(Ljava/lang/StringBuffer;I)V

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .local v2, "ms":I
    div-int/lit8 v4, v2, 0x64

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v4, v2, 0x64

    invoke-static {v0, v4}, Lorg/ksoap2/kobjects/isodate/IsoDate;->dd(Ljava/lang/StringBuffer;I)V

    const/16 v4, 0x5a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .end local v2    # "ms":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static dd(Ljava/lang/StringBuffer;I)V
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "i"    # I

    .prologue
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static stringToDate(Ljava/lang/String;I)Ljava/util/Date;
    .locals 13
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    const/4 v12, 0x2

    const/16 v11, 0xe

    const/4 v10, 0x5

    const/16 v9, 0xb

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "c":Ljava/util/Calendar;
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x7

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v0, v12, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0x8

    const/16 v6, 0xa

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v10, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x3

    if-ne p1, v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v9, :cond_1

    :cond_0
    invoke-virtual {v0, v9, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v11, v8}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_1
    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p0, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v9, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    const/4 v6, 0x3

    invoke-virtual {p0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    const/4 v6, 0x6

    const/16 v7, 0x8

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0x8

    .local v4, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_7

    const/4 v3, 0x0

    .local v3, "ms":I
    const/16 v2, 0x64

    .local v2, "f":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "d":C
    const/16 v5, 0x30

    if-lt v1, v5, :cond_2

    const/16 v5, 0x39

    if-le v1, v5, :cond_6

    :cond_2
    invoke-virtual {v0, v11, v3}, Ljava/util/Calendar;->set(II)V

    .end local v1    # "d":C
    .end local v2    # "f":I
    .end local v3    # "ms":I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_8

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GMT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_4
    :goto_4
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    goto/16 :goto_0

    .end local v4    # "pos":I
    :cond_5
    new-instance v5, Ljava/util/Date;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto/16 :goto_1

    .restart local v1    # "d":C
    .restart local v2    # "f":I
    .restart local v3    # "ms":I
    .restart local v4    # "pos":I
    :cond_6
    add-int/lit8 v5, v1, -0x30

    mul-int/2addr v5, v2

    add-int/2addr v3, v5

    div-int/lit8 v2, v2, 0xa

    goto :goto_2

    .end local v1    # "d":C
    .end local v2    # "f":I
    .end local v3    # "ms":I
    :cond_7
    invoke-virtual {v0, v11, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5a

    if-ne v5, v6, :cond_9

    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_4

    :cond_9
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "illegal time format!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
