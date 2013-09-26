.class Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimSpnLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/RuimRecords;Lcom/android/internal/telephony/cdma/RuimRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "EF_CSIM_SPN"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v8, 0x1

    const/16 v4, 0x20

    const/4 v9, 0x0

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    .local v0, data:[B
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CSIM_SPN="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    aget-byte v7, v0, v9

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    move v7, v8

    :goto_0
    iput-boolean v7, v10, Lcom/android/internal/telephony/cdma/RuimRecords;->mCsimSpnDisplayCondition:Z

    aget-byte v2, v0, v8

    .local v2, encoding:I
    const/4 v7, 0x2

    aget-byte v3, v0, v7

    .local v3, language:I
    new-array v6, v4, [B

    .local v6, spnData:[B
    array-length v7, v0

    add-int/lit8 v7, v7, -0x3

    if-ge v7, v4, :cond_0

    array-length v7, v0

    add-int/lit8 v4, v7, -0x3

    .local v4, len:I
    :cond_0
    const/4 v7, 0x3

    invoke-static {v0, v7, v6, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    .local v5, numBytes:I
    :goto_1
    array-length v7, v6

    if-ge v5, v7, :cond_1

    aget-byte v7, v6, v5

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0xff

    if-ne v7, v8, :cond_3

    :cond_1
    if-nez v5, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    const-string v8, ""

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$202(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    return-void

    .end local v2           #encoding:I
    .end local v3           #language:I
    .end local v4           #len:I
    .end local v5           #numBytes:I
    .end local v6           #spnData:[B
    :cond_2
    move v7, v9

    goto :goto_0

    .restart local v2       #encoding:I
    .restart local v3       #language:I
    .restart local v4       #len:I
    .restart local v5       #numBytes:I
    .restart local v6       #spnData:[B
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    const-string v8, "SPN encoding not supported"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "spn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$600(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "spnCondition="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    iget-boolean v9, v9, Lcom/android/internal/telephony/cdma/RuimRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    const-string v7, "gsm.sim.operator.alpha"

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$700(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "ISO-8859-1"

    invoke-direct {v8, v6, v9, v5, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$302(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "spn decode error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_3

    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    const/4 v8, 0x0

    mul-int/lit8 v9, v5, 0x8

    div-int/lit8 v9, v9, 0x7

    invoke-static {v6, v8, v9}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$402(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    :pswitch_3
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "utf-16"

    invoke-direct {v8, v6, v9, v5, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$502(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
