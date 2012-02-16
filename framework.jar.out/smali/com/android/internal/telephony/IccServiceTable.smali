.class public abstract Lcom/android/internal/telephony/IccServiceTable;
.super Ljava/lang/Object;
.source "IccServiceTable.java"


# instance fields
.field protected final mServiceTable:[B


# direct methods
.method protected constructor <init>([B)V
    .locals 0
    .parameter "table"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/telephony/IccServiceTable;->mServiceTable:[B

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected abstract getValues()[Ljava/lang/Object;
.end method

.method protected isAvailable(I)Z
    .locals 6
    .parameter "service"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 43
    div-int/lit8 v1, p1, 0x8

    .line 44
    .local v1, offset:I
    iget-object v4, p0, Lcom/android/internal/telephony/IccServiceTable;->mServiceTable:[B

    array-length v4, v4

    if-lt v1, v4, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccServiceTable;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAvailable for service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fails, max service is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/IccServiceTable;->mServiceTable:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return v3

    .line 50
    :cond_0
    rem-int/lit8 v0, p1, 0x8

    .line 51
    .local v0, bit:I
    iget-object v4, p0, Lcom/android/internal/telephony/IccServiceTable;->mServiceTable:[B

    aget-byte v4, v4, v1

    shl-int v5, v2, v0

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccServiceTable;->getValues()[Ljava/lang/Object;

    move-result-object v7

    .line 56
    .local v7, values:[Ljava/lang/Object;
    iget-object v8, p0, Lcom/android/internal/telephony/IccServiceTable;->mServiceTable:[B

    array-length v5, v8

    .line 57
    .local v5, numBytes:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccServiceTable;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x5b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    mul-int/lit8 v9, v5, 0x8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]={ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 60
    .local v2, builder:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 61
    .local v0, addComma:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 62
    iget-object v8, p0, Lcom/android/internal/telephony/IccServiceTable;->mServiceTable:[B

    aget-byte v3, v8, v4

    .line 63
    .local v3, currentByte:B
    const/4 v1, 0x0

    .local v1, bit:I
    :goto_1
    const/16 v8, 0x8

    if-ge v1, v8, :cond_3

    .line 64
    const/4 v8, 0x1

    shl-int/2addr v8, v1

    and-int/2addr v8, v3

    if-eqz v8, :cond_0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    const-string v8, ", "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :goto_2
    mul-int/lit8 v8, v4, 0x8

    add-int v6, v8, v1

    .line 71
    .local v6, ordinal:I
    array-length v8, v7

    if-ge v6, v8, :cond_2

    .line 72
    aget-object v8, v7, v6

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .end local v6           #ordinal:I
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    .line 74
    .restart local v6       #ordinal:I
    :cond_2
    const/16 v8, 0x23

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 61
    .end local v6           #ordinal:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    .end local v1           #bit:I
    .end local v3           #currentByte:B
    :cond_4
    const-string v8, " }"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
