.class Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimImsimLoaded;
.super Ljava/lang/Object;
.source "CdmaLteUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimImsimLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimImsimLoaded;-><init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "EF_CSIM_IMSIM"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter "ar"

    .prologue
    const/4 v12, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    move-object v1, v7

    check-cast v1, [B

    .local v1, data:[B
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CSIM_IMSIM="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    const/4 v7, 0x7

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0x80

    const/16 v10, 0x80

    if-ne v7, v10, :cond_1

    move v5, v8

    .local v5, provisioned:Z
    :goto_0
    if-eqz v5, :cond_2

    const/4 v7, 0x2

    aget-byte v7, v1, v7

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x8

    aget-byte v10, v1, v8

    and-int/lit16 v10, v10, 0xff

    add-int v3, v7, v10

    .local v3, first3digits:I
    const/4 v7, 0x5

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    aget-byte v10, v1, v12

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v7, v10

    shr-int/lit8 v6, v7, 0x6

    .local v6, second3digits:I
    aget-byte v7, v1, v12

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v2, v7, 0xf

    .local v2, digit7:I
    const/16 v7, 0x9

    if-le v2, v7, :cond_0

    const/4 v2, 0x0

    :cond_0
    aget-byte v7, v1, v12

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x8

    const/4 v10, 0x3

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    or-int v4, v7, v10

    .local v4, last3digits:I
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #calls: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->adjstMinDigits(I)I
    invoke-static {v7, v3}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$900(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;I)I

    move-result v3

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #calls: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->adjstMinDigits(I)I
    invoke-static {v7, v6}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$900(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #calls: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->adjstMinDigits(I)I
    invoke-static {v7, v4}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$900(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;I)I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%d"

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-static {v7, v10, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mMin:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$1002(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "min present="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mMin:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$1000(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #digit7:I
    .end local v3           #first3digits:I
    .end local v4           #last3digits:I
    .end local v6           #second3digits:I
    :goto_1
    return-void

    .end local v5           #provisioned:Z
    :cond_1
    move v5, v9

    goto/16 :goto_0

    .restart local v5       #provisioned:Z
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    const-string v8, "min not present"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
