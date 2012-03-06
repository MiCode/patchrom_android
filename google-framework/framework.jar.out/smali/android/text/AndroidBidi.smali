.class Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[BIZ)I
    .locals 2
    .parameter "dir"
    .parameter "chs"
    .parameter "chInfo"
    .parameter "n"
    .parameter "haveInfo"

    .prologue
    .line 28
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 29
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 32
    :cond_1
    if-ltz p3, :cond_2

    array-length v1, p1

    if-lt v1, p3, :cond_2

    array-length v1, p2

    if-ge v1, p3, :cond_3

    .line 33
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 36
    :cond_3
    packed-switch p0, :pswitch_data_0

    .line 41
    :pswitch_0
    const/4 p0, 0x0

    .line 44
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/AndroidBidi;->runBidi(I[C[BIZ)I

    move-result v0

    .line 45
    .local v0, result:I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    .line 46
    :goto_1
    return v0

    .line 37
    .end local v0           #result:I
    :pswitch_1
    const/4 p0, 0x0

    goto :goto_0

    .line 38
    :pswitch_2
    const/4 p0, 0x1

    goto :goto_0

    .line 39
    :pswitch_3
    const/4 p0, -0x2

    goto :goto_0

    .line 40
    :pswitch_4
    const/4 p0, -0x1

    goto :goto_0

    .line 45
    .restart local v0       #result:I
    :cond_4
    const/4 v0, -0x1

    goto :goto_1

    .line 36
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .locals 23
    .parameter "dir"
    .parameter "levels"
    .parameter "lstart"
    .parameter "chars"
    .parameter "cstart"
    .parameter "len"

    .prologue
    .line 64
    const/16 v21, 0x1

    move/from16 v0, p0

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    .line 65
    .local v2, baseLevel:I
    :goto_0
    aget-byte v4, p1, p2

    .line 66
    .local v4, curLevel:I
    move v13, v4

    .line 67
    .local v13, minLevel:I
    const/16 v17, 0x1

    .line 68
    .local v17, runCount:I
    add-int/lit8 v7, p2, 0x1

    .local v7, i:I
    add-int v5, p2, p5

    .local v5, e:I
    :goto_1
    if-ge v7, v5, :cond_2

    .line 69
    aget-byte v9, p1, v7

    .line 70
    .local v9, level:I
    if-eq v9, v4, :cond_0

    .line 71
    move v4, v9

    .line 72
    add-int/lit8 v17, v17, 0x1

    .line 68
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 64
    .end local v2           #baseLevel:I
    .end local v4           #curLevel:I
    .end local v5           #e:I
    .end local v7           #i:I
    .end local v9           #level:I
    .end local v13           #minLevel:I
    .end local v17           #runCount:I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 77
    .restart local v2       #baseLevel:I
    .restart local v4       #curLevel:I
    .restart local v5       #e:I
    .restart local v7       #i:I
    .restart local v13       #minLevel:I
    .restart local v17       #runCount:I
    :cond_2
    move/from16 v19, p5

    .line 78
    .local v19, visLen:I
    and-int/lit8 v21, v4, 0x1

    and-int/lit8 v22, v2, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 80
    :cond_3
    add-int/lit8 v19, v19, -0x1

    if-ltz v19, :cond_4

    .line 81
    add-int v21, p4, v19

    aget-char v3, p3, v21

    .line 83
    .local v3, ch:C
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v3, v0, :cond_6

    .line 84
    add-int/lit8 v19, v19, -0x1

    .line 92
    .end local v3           #ch:C
    :cond_4
    :goto_2
    add-int/lit8 v19, v19, 0x1

    .line 93
    move/from16 v0, v19

    move/from16 v1, p5

    if-eq v0, v1, :cond_5

    .line 94
    add-int/lit8 v17, v17, 0x1

    .line 98
    :cond_5
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    if-ne v13, v2, :cond_8

    .line 100
    and-int/lit8 v21, v13, 0x1

    if-eqz v21, :cond_7

    .line 101
    sget-object v21, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 173
    :goto_3
    return-object v21

    .line 88
    .restart local v3       #ch:C
    :cond_6
    const/16 v21, 0x20

    move/from16 v0, v21

    if-eq v3, v0, :cond_3

    const/16 v21, 0x9

    move/from16 v0, v21

    if-eq v3, v0, :cond_3

    goto :goto_2

    .line 103
    .end local v3           #ch:C
    :cond_7
    sget-object v21, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    goto :goto_3

    .line 106
    :cond_8
    mul-int/lit8 v21, v17, 0x2

    move/from16 v0, v21

    new-array v8, v0, [I

    .line 107
    .local v8, ld:[I
    move v12, v13

    .line 108
    .local v12, maxLevel:I
    shl-int/lit8 v10, v13, 0x1a

    .line 113
    .local v10, levelBits:I
    const/4 v14, 0x1

    .line 114
    .local v14, n:I
    move/from16 v16, p2

    .line 115
    .local v16, prev:I
    move v4, v13

    .line 116
    move/from16 v7, p2

    add-int v5, p2, v19

    move v15, v14

    .end local v14           #n:I
    .local v15, n:I
    :goto_4
    if-ge v7, v5, :cond_b

    .line 117
    aget-byte v9, p1, v7

    .line 118
    .restart local v9       #level:I
    if-eq v9, v4, :cond_15

    .line 119
    move v4, v9

    .line 120
    if-le v9, v12, :cond_a

    .line 121
    move v12, v9

    .line 126
    :cond_9
    :goto_5
    add-int/lit8 v14, v15, 0x1

    .end local v15           #n:I
    .restart local v14       #n:I
    sub-int v21, v7, v16

    or-int v21, v21, v10

    aput v21, v8, v15

    .line 127
    add-int/lit8 v15, v14, 0x1

    .end local v14           #n:I
    .restart local v15       #n:I
    sub-int v21, v7, p2

    aput v21, v8, v14

    .line 128
    shl-int/lit8 v10, v4, 0x1a

    .line 129
    move/from16 v16, v7

    move v14, v15

    .line 116
    .end local v15           #n:I
    .restart local v14       #n:I
    :goto_6
    add-int/lit8 v7, v7, 0x1

    move v15, v14

    .end local v14           #n:I
    .restart local v15       #n:I
    goto :goto_4

    .line 122
    :cond_a
    if-ge v9, v13, :cond_9

    .line 123
    move v13, v9

    goto :goto_5

    .line 132
    .end local v9           #level:I
    :cond_b
    add-int v21, p2, v19

    sub-int v21, v21, v16

    or-int v21, v21, v10

    aput v21, v8, v15

    .line 133
    move/from16 v0, v19

    move/from16 v1, p5

    if-ge v0, v1, :cond_14

    .line 134
    add-int/lit8 v14, v15, 0x1

    .end local v15           #n:I
    .restart local v14       #n:I
    aput v19, v8, v14

    .line 135
    add-int/lit8 v14, v14, 0x1

    sub-int v21, p5, v19

    shl-int/lit8 v22, v2, 0x1a

    or-int v21, v21, v22

    aput v21, v8, v14

    .line 150
    :goto_7
    and-int/lit8 v21, v13, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_d

    .line 151
    add-int/lit8 v13, v13, 0x1

    .line 152
    if-le v12, v13, :cond_c

    const/16 v18, 0x1

    .line 156
    .local v18, swap:Z
    :goto_8
    if-eqz v18, :cond_13

    .line 157
    add-int/lit8 v9, v12, -0x1

    .restart local v9       #level:I
    :goto_9
    if-lt v9, v13, :cond_13

    .line 158
    const/4 v7, 0x0

    :goto_a
    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_12

    .line 159
    aget v21, v8, v7

    aget-byte v21, p1, v21

    move/from16 v0, v21

    if-lt v0, v9, :cond_11

    .line 160
    add-int/lit8 v5, v7, 0x2

    .line 161
    :goto_b
    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_f

    aget v21, v8, v5

    aget-byte v21, p1, v21

    move/from16 v0, v21

    if-lt v0, v9, :cond_f

    .line 162
    add-int/lit8 v5, v5, 0x2

    goto :goto_b

    .line 152
    .end local v9           #level:I
    .end local v18           #swap:Z
    :cond_c
    const/16 v18, 0x0

    goto :goto_8

    .line 154
    :cond_d
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_e

    const/16 v18, 0x1

    .restart local v18       #swap:Z
    :goto_c
    goto :goto_8

    .end local v18           #swap:Z
    :cond_e
    const/16 v18, 0x0

    goto :goto_c

    .line 164
    .restart local v9       #level:I
    .restart local v18       #swap:Z
    :cond_f
    move v11, v7

    .local v11, low:I
    add-int/lit8 v6, v5, -0x2

    .local v6, hi:I
    :goto_d
    if-ge v11, v6, :cond_10

    .line 165
    aget v20, v8, v11

    .local v20, x:I
    aget v21, v8, v6

    aput v21, v8, v11

    aput v20, v8, v6

    .line 166
    add-int/lit8 v21, v11, 0x1

    aget v20, v8, v21

    add-int/lit8 v21, v11, 0x1

    add-int/lit8 v22, v6, 0x1

    aget v22, v8, v22

    aput v22, v8, v21

    add-int/lit8 v21, v6, 0x1

    aput v20, v8, v21

    .line 164
    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v6, v6, -0x2

    goto :goto_d

    .line 168
    .end local v20           #x:I
    :cond_10
    add-int/lit8 v7, v5, 0x2

    .line 158
    .end local v6           #hi:I
    .end local v11           #low:I
    :cond_11
    add-int/lit8 v7, v7, 0x2

    goto :goto_a

    .line 157
    :cond_12
    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 173
    .end local v9           #level:I
    :cond_13
    new-instance v21, Landroid/text/Layout$Directions;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Landroid/text/Layout$Directions;-><init>([I)V

    goto/16 :goto_3

    .end local v14           #n:I
    .end local v18           #swap:Z
    .restart local v15       #n:I
    :cond_14
    move v14, v15

    .end local v15           #n:I
    .restart local v14       #n:I
    goto :goto_7

    .end local v14           #n:I
    .restart local v9       #level:I
    .restart local v15       #n:I
    :cond_15
    move v14, v15

    .end local v15           #n:I
    .restart local v14       #n:I
    goto/16 :goto_6
.end method

.method private static native runBidi(I[C[BIZ)I
.end method
