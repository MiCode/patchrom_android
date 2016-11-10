.class Lcom/android/server/wifi/WifiLogger$BugReport;
.super Ljava/lang/Object;
.source "WifiLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BugReport"
.end annotation


# instance fields
.field alertData:[B

.field errorCode:I

.field fwMemoryDump:[B

.field kernelTimeNanos:J

.field ringBuffers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[[B>;"
        }
    .end annotation
.end field

.field systemTimeMs:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger$BugReport;->ringBuffers:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiLogger$1;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger$BugReport;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 18

    .prologue
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .local v5, "c":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->systemTimeMs:J

    invoke-virtual {v5, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v14, "system time = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%tm-%td %tH:%tM:%tS.%tL"

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    const/16 v17, 0x1

    aput-object v5, v16, v17

    const/16 v17, 0x2

    aput-object v5, v16, v17

    const/16 v17, 0x3

    aput-object v5, v16, v17

    const/16 v17, 0x4

    aput-object v5, v16, v17

    const/16 v17, 0x5

    aput-object v5, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->kernelTimeNanos:J

    const-wide/32 v16, 0xf4240

    div-long v10, v14, v16

    .local v10, "kernelTimeMs":J
    const-string v14, "kernel time = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/16 v16, 0x3e8

    div-long v16, v10, v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/16 v16, 0x3e8

    rem-long v16, v10, v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->alertData:[B

    if-nez v14, :cond_0

    const-string v14, "reason = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->errorCode:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->ringBuffers:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[[B>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, "ringName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    .local v3, "buffers":[[B
    const-string v14, "ring-buffer = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    .local v13, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v14, v3

    if-ge v7, v14, :cond_1

    aget-object v14, v3, v7

    array-length v14, v14

    add-int/2addr v13, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v3    # "buffers":[[B
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[[B>;"
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "ringName":Ljava/lang/String;
    .end local v13    # "size":I
    :cond_0
    const-string v14, "errorCode = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->errorCode:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "data \n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->alertData:[B

    # invokes: Lcom/android/server/wifi/WifiLogger;->compressToBase64([B)Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/wifi/WifiLogger;->access$000([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .restart local v3    # "buffers":[[B
    .restart local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[[B>;"
    .restart local v7    # "i":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v12    # "ringName":Ljava/lang/String;
    .restart local v13    # "size":I
    :cond_1
    new-array v2, v13, [B

    .local v2, "buffer":[B
    const/4 v9, 0x0

    .local v9, "index":I
    const/4 v7, 0x0

    :goto_3
    array-length v14, v3

    if-ge v7, v14, :cond_2

    aget-object v14, v3, v7

    const/4 v15, 0x0

    aget-object v16, v3, v7

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v14, v15, v2, v9, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    aget-object v14, v3, v7

    array-length v14, v14

    add-int/2addr v9, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    # invokes: Lcom/android/server/wifi/WifiLogger;->compressToBase64([B)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiLogger;->access$000([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v2    # "buffer":[B
    .end local v3    # "buffers":[[B
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[[B>;"
    .end local v7    # "i":I
    .end local v9    # "index":I
    .end local v12    # "ringName":Ljava/lang/String;
    .end local v13    # "size":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->fwMemoryDump:[B

    if-eqz v14, :cond_4

    const-string v14, "FW Memory dump \n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->fwMemoryDump:[B

    # invokes: Lcom/android/server/wifi/WifiLogger;->compressToBase64([B)Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/wifi/WifiLogger;->access$000([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14
.end method
