.class public abstract Lcom/android/server/wifi/hotspot2/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final PLMNText:[Ljava/lang/String;

.field public static final UNSET_TIME:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "org"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "3gppnetwork"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mcc*"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mnc*"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "wlan"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/hotspot2/Utils;->PLMNText:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToBingoCard(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "dup":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "sbx":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "%02x "

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "%c"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->toAscii(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static bytesToBingoCard(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "len"    # I

    .prologue
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "dup":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->bytesToBingoCard(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Comparable",
            "<TT;>;TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "c1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TT;>;"
    .local p1, "c2":Ljava/lang/Comparable;, "TT;"
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static fromHex(CZ)I
    .locals 3
    .param p0, "ch"    # C
    .param p1, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, 0xa

    add-int/lit8 v0, v0, -0x61

    goto :goto_0

    :cond_1
    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    add-int/lit8 v0, p0, 0xa

    add-int/lit8 v0, v0, -0x41

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad hex-character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMccMnc(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "domain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    sget-object v7, Lcom/android/server/wifi/hotspot2/Utils;->PLMNText:[Ljava/lang/String;

    array-length v7, v7

    if-eq v5, v7, :cond_1

    move-object v4, v6

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1
    sget-object v5, Lcom/android/server/wifi/hotspot2/Utils;->PLMNText:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    sget-object v5, Lcom/android/server/wifi/hotspot2/Utils;->PLMNText:[Ljava/lang/String;

    aget-object v1, v5, v3

    .local v1, "expect":Ljava/lang/String;
    const-string v5, "*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "len":I
    :goto_2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v9, v1, v9, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v4, v6

    goto :goto_0

    .end local v2    # "len":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_2

    .restart local v2    # "len":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "expect":Ljava/lang/String;
    .end local v2    # "len":I
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "prefix":Ljava/lang/String;
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_5

    const/16 v5, 0x39

    if-le v0, v5, :cond_6

    :cond_5
    move-object v4, v6

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Odd length hex string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .local v0, "data":[B
    const/4 v2, 0x0

    .local v2, "position":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    const-string v0, "HS20"

    return-object v0
.end method

.method static isDecimal(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .end local v0    # "ch":C
    :goto_1
    return v2

    .restart local v0    # "ch":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "ch":C
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static parseMac(Ljava/lang/String;)J
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    .local v2, "mac":J
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v10}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    move-result v4

    .local v4, "nibble":I
    if-ltz v4, :cond_0

    const/4 v5, 0x4

    shl-long v6, v2, v5

    int-to-long v8, v4

    or-long v2, v6, v8

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "nibble":I
    :cond_1
    const/16 v5, 0xc

    if-lt v0, v5, :cond_2

    and-int/lit8 v5, v0, 0x1

    if-ne v5, v10, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad MAC address: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    return-wide v2
.end method

.method public static roamingConsortiumsToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "ois":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, "first":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .local v2, "oi":J
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v5

    const/16 v6, 0x28

    if-le v5, v6, :cond_1

    const-string v5, "%06x"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v5, "%010x"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v2    # "oi":J
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static roamingConsortiumsToString([J)Ljava/lang/String;
    .locals 7
    .param p0, "ois"    # [J

    .prologue
    if-nez p0, :cond_0

    const-string v6, "null"

    :goto_0
    return-object v6

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    array-length v6, p0

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-wide v4, v0, v1

    .local v4, "oi":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4    # "oi":J
    :cond_1
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static splitDomain(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "at":I
    if-ltz v1, :cond_1

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "labels":[Ljava/lang/String;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .local v4, "labelList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v3, v0, v2

    .local v3, "label":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "label":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method private static toAscii(I)C
    .locals 1
    .param p0, "b"    # I

    .prologue
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    int-to-char v0, p0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2e

    goto :goto_0
.end method

.method public static toHMS(J)Ljava/lang/String;
    .locals 18
    .param p0, "millis"    # J

    .prologue
    const-wide/16 v12, 0x0

    cmp-long v12, p0, v12

    if-ltz v12, :cond_0

    move-wide/from16 v8, p0

    .local v8, "time":J
    :goto_0
    const-wide/16 v12, 0x3e8

    div-long v10, v8, v12

    .local v10, "tmp":J
    const-wide/16 v12, 0x3e8

    mul-long/2addr v12, v10

    sub-long v4, v8, v12

    .local v4, "ms":J
    move-wide v8, v10

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v10

    sub-long v6, v8, v12

    .local v6, "s":J
    move-wide v8, v10

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v10

    sub-long v2, v8, v12

    .local v2, "m":J
    const-string v13, "%s%d:%02d:%02d.%03d"

    const/4 v12, 0x5

    new-array v14, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    cmp-long v12, p0, v16

    if-gez v12, :cond_1

    const-string v12, "-"

    :goto_1
    aput-object v12, v14, v15

    const/4 v12, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v12

    const/4 v12, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v12

    const/4 v12, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v12

    const/4 v12, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v12

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12

    .end local v2    # "m":J
    .end local v4    # "ms":J
    .end local v6    # "s":J
    .end local v8    # "time":J
    .end local v10    # "tmp":J
    :cond_0
    move-wide/from16 v0, p0

    neg-long v8, v0

    goto :goto_0

    .restart local v2    # "m":J
    .restart local v4    # "ms":J
    .restart local v6    # "s":J
    .restart local v8    # "time":J
    .restart local v10    # "tmp":J
    :cond_1
    const-string v12, ""

    goto :goto_1
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 9
    .param p0, "octets"    # [B

    .prologue
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-byte v3, v0, v1

    .local v3, "o":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    and-int/lit16 v8, v3, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "o":B
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 10
    .param p0, "data"    # [B

    .prologue
    if-nez p0, :cond_0

    const-string v6, "null"

    :goto_0
    return-object v6

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    array-length v6, p0

    mul-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .local v2, "first":Z
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-byte v1, v0, v3

    .local v1, "b":B
    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_2
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    and-int/lit16 v9, v1, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v1    # "b":B
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static toUTCString(J)Ljava/lang/String;
    .locals 8
    .param p0, "ms"    # J

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    const-string v1, "unset"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v1, "%4d/%02d/%02d %2d:%02d:%02dZ"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static toUnicodeEscapedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    const/16 v3, 0x7f

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "\\u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%04x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v0    # "ch":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
