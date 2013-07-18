.class Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;
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
    name = "EfCsimLiLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/RuimRecords;Lcom/android/internal/telephony/cdma/RuimRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;-><init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "EF_CSIM_LI"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    const/16 v6, 0x68

    const/16 v5, 0x20

    const/16 v4, 0x65

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v2, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$102(Lcom/android/internal/telephony/cdma/RuimRecords;[B)[B

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-byte v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    aput-byte v5, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aput-byte v5, v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    aput-byte v4, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x6e

    aput-byte v3, v1, v2

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    const/16 v2, 0x66

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x72

    aput-byte v3, v1, v2

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    aput-byte v4, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x73

    aput-byte v3, v1, v2

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    const/16 v2, 0x6a

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x61

    aput-byte v3, v1, v2

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    const/16 v2, 0x6b

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x6f

    aput-byte v3, v1, v2

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    const/16 v2, 0x7a

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aput-byte v6, v1, v2

    goto/16 :goto_1

    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    aput-byte v6, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aput-byte v4, v1, v2

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF_LI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
