.class public Lcom/android/server/wifi/WifiParser;
.super Ljava/lang/Object;
.source "WifiParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiParser$IE;
    }
.end annotation


# static fields
.field private static final IEEE_RSN_IE:I = 0x30

.field private static final VENDOR_SPECIFIC_IE:I = 0xdd

.field private static final WPA_IE_VENDOR_TYPE:I = 0x50f201


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse_akm([Lcom/android/server/wifi/WifiParser$IE;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 21
    .param p0, "full_IE"    # [Lcom/android/server/wifi/WifiParser$IE;
    .param p1, "ieee_cap"    # Ljava/util/BitSet;

    .prologue
    const/4 v13, 0x0

    .local v13, "privacy":Z
    const/4 v6, 0x0

    .local v6, "error":Z
    if-nez p1, :cond_1

    const/4 v5, 0x0

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    if-nez p0, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/16 v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    const-string v5, ""

    .local v5, "capabilities":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "rsne_found":Z
    const/16 v18, 0x0

    .local v18, "wpa_found":Z
    move-object/from16 v3, p0

    .local v3, "arr$":[Lcom/android/server/wifi/WifiParser$IE;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v11, :cond_3

    aget-object v10, v3, v9

    .local v10, "ie":Lcom/android/server/wifi/WifiParser$IE;
    const-string v15, ""

    .local v15, "security":Ljava/lang/String;
    iget v0, v10, Lcom/android/server/wifi/WifiParser$IE;->id:I

    move/from16 v19, v0

    const/16 v20, 0x30

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    const/4 v14, 0x1

    iget-object v0, v10, Lcom/android/server/wifi/WifiParser$IE;->data:[B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "buf":Ljava/nio/ByteBuffer;
    iget-object v0, v10, Lcom/android/server/wifi/WifiParser$IE;->data:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v16, v0

    .local v16, "total_len":I
    const/4 v12, 0x2

    .local v12, "offset":I
    sub-int v19, v16, v12

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    const-string v15, ""

    const/4 v6, 0x1

    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v10    # "ie":Lcom/android/server/wifi/WifiParser$IE;
    .end local v12    # "offset":I
    .end local v15    # "security":Ljava/lang/String;
    .end local v16    # "total_len":I
    :cond_3
    :goto_2
    if-nez v14, :cond_4

    if-nez v18, :cond_4

    if-eqz v13, :cond_4

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "[WEP]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    if-eqz v6, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    .restart local v10    # "ie":Lcom/android/server/wifi/WifiParser$IE;
    .restart local v12    # "offset":I
    .restart local v15    # "security":Ljava/lang/String;
    .restart local v16    # "total_len":I
    :cond_5
    const/16 v17, 0x0

    .local v17, "val":I
    const/16 v19, 0x100

    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    const-string v15, ""

    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v12, v12, 0x2

    add-int/lit8 v19, v16, -0x4

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    const-string v15, ""

    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v12, v12, 0x4

    const-string v15, "[WPA2"

    add-int/lit8 v19, v16, -0x8

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    const-string v15, ""

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v17

    add-int/lit8 v19, v16, -0x8

    mul-int/lit8 v20, v17, 0x4

    add-int/lit8 v20, v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    const-string v15, ""

    const/4 v6, 0x1

    goto :goto_2

    :cond_9
    mul-int/lit8 v19, v17, 0x4

    add-int/lit8 v19, v19, 0x2

    add-int/lit8 v12, v19, 0x8

    sub-int v19, v16, v12

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    const-string v15, ""

    const/4 v6, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v17

    sub-int v19, v16, v12

    mul-int/lit8 v20, v17, 0x4

    add-int/lit8 v20, v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    const-string v15, ""

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v12, v12, 0x2

    if-nez v17, :cond_c

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "-EAP"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_c
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v8, v0, :cond_13

    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .local v2, "akm":I
    const/4 v7, 0x0

    .local v7, "found":Z
    sparse-switch v2, :sswitch_data_0

    :goto_4
    add-int/lit8 v12, v12, 0x4

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :sswitch_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-eqz v7, :cond_d

    const-string v19, "+"

    :goto_5
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v7, 0x1

    goto :goto_4

    :cond_d
    const-string v19, "-EAP"

    goto :goto_5

    :sswitch_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-eqz v7, :cond_e

    const-string v19, "+"

    :goto_6
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v7, 0x1

    goto :goto_4

    :cond_e
    const-string v19, "-PSK"

    goto :goto_6

    :sswitch_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-eqz v7, :cond_f

    const-string v19, "+"

    :goto_7
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v7, 0x1

    goto :goto_4

    :cond_f
    const-string v19, "-FT/EAP"

    goto :goto_7

    :sswitch_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-eqz v7, :cond_10

    const-string v19, "+"

    :goto_8
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_10
    const-string v19, "-FT/PSK"

    goto :goto_8

    :sswitch_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-eqz v7, :cond_11

    const-string v19, "+"

    :goto_9
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_11
    const-string v19, "-PSK-SHA256"

    goto :goto_9

    :sswitch_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-eqz v7, :cond_12

    const-string v19, "+"

    :goto_a
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_12
    const-string v19, "-EAP-SHA256"

    goto :goto_a

    .end local v2    # "akm":I
    .end local v7    # "found":Z
    :cond_13
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v8    # "i":I
    .end local v12    # "offset":I
    .end local v16    # "total_len":I
    .end local v17    # "val":I
    :cond_14
    iget v0, v10, Lcom/android/server/wifi/WifiParser$IE;->id:I

    move/from16 v19, v0

    const/16 v20, 0xdd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    iget-object v0, v10, Lcom/android/server/wifi/WifiParser$IE;->data:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v16, v0

    .restart local v16    # "total_len":I
    const/4 v12, 0x2

    .restart local v12    # "offset":I
    sub-int v19, v16, v12

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    const-string v15, ""

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_15
    iget-object v0, v10, Lcom/android/server/wifi/WifiParser$IE;->data:[B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v19

    const v20, 0x1f25000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_17

    const-string v15, ""

    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v12    # "offset":I
    .end local v16    # "total_len":I
    :cond_16
    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    .restart local v12    # "offset":I
    .restart local v16    # "total_len":I
    :cond_17
    const-string v15, "[WPA"

    sub-int v19, v16, v12

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_18

    const-string v15, ""

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_18
    const/16 v17, 0x0

    .restart local v17    # "val":I
    const/16 v19, 0x100

    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_19

    const-string v15, ""

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_19
    add-int/lit8 v12, v12, 0x2

    add-int/lit8 v19, v16, -0x4

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1a

    const-string v15, ""

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_1a
    add-int/lit8 v12, v12, 0x4

    add-int/lit8 v19, v16, -0x8

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1b

    const-string v15, ""

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_1b
    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v17

    add-int/lit8 v19, v16, -0x8

    mul-int/lit8 v20, v17, 0x4

    add-int/lit8 v20, v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1c

    const-string v15, ""

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_1c
    mul-int/lit8 v19, v17, 0x4

    add-int/lit8 v19, v19, 0x2

    add-int/lit8 v12, v19, 0x8

    sub-int v19, v16, v12

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1d

    const-string v15, ""

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_1d
    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v17

    sub-int v19, v16, v12

    mul-int/lit8 v20, v17, 0x4

    add-int/lit8 v20, v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1e

    const-string v15, ""

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_1e
    add-int/lit8 v12, v12, 0x2

    if-nez v17, :cond_1f

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "-EAP"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_1f
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_c
    move/from16 v0, v17

    if-ge v8, v0, :cond_22

    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .restart local v2    # "akm":I
    const/4 v7, 0x0

    .restart local v7    # "found":Z
    sparse-switch v2, :sswitch_data_1

    :goto_d
    add-int/lit8 v12, v12, 0x4

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :sswitch_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-eqz v7, :cond_20

    const-string v19, "+"

    :goto_e
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v7, 0x1

    goto :goto_d

    :cond_20
    const-string v19, "-EAP"

    goto :goto_e

    :sswitch_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-eqz v7, :cond_21

    const-string v19, "+"

    :goto_f
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v7, 0x1

    goto :goto_d

    :cond_21
    const-string v19, "-PSK"

    goto :goto_f

    .end local v2    # "akm":I
    .end local v7    # "found":Z
    :cond_22
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_b

    nop

    :sswitch_data_0
    .sparse-switch
        0x1ac0f00 -> :sswitch_0
        0x2ac0f00 -> :sswitch_1
        0x3ac0f00 -> :sswitch_2
        0x4ac0f00 -> :sswitch_3
        0x5ac0f00 -> :sswitch_5
        0x6ac0f00 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1f25000 -> :sswitch_6
        0x2f25000 -> :sswitch_7
    .end sparse-switch
.end method
