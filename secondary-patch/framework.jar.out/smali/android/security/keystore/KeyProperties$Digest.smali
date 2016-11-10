.class public abstract Landroid/security/keystore/KeyProperties$Digest;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Digest"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "digests":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v3, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_0
    return-object v3

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "offset":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "digest":I
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static allToKeymaster([Ljava/lang/String;)[I
    .locals 7
    .param p0, "digests"    # [Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_2

    :cond_0
    sget-object v5, Llibcore/util/EmptyArray;->INT:[I

    :cond_1
    return-object v5

    :cond_2
    array-length v6, p0

    new-array v5, v6, [I

    .local v5, "result":[I
    const/4 v4, 0x0

    .local v4, "offset":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .local v1, "digest":Ljava/lang/String;
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static fromKeymaster(I)Ljava/lang/String;
    .locals 3
    .param p0, "digest"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "NONE"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "MD5"

    goto :goto_0

    :pswitch_2
    const-string v0, "SHA-1"

    goto :goto_0

    :pswitch_3
    const-string v0, "SHA-224"

    goto :goto_0

    :pswitch_4
    const-string v0, "SHA-256"

    goto :goto_0

    :pswitch_5
    const-string v0, "SHA-384"

    goto :goto_0

    :pswitch_6
    const-string v0, "SHA-512"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;
    .locals 3
    .param p0, "digest"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "NONE"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "MD5"

    goto :goto_0

    :pswitch_2
    const-string v0, "SHA1"

    goto :goto_0

    :pswitch_3
    const-string v0, "SHA224"

    goto :goto_0

    :pswitch_4
    const-string v0, "SHA256"

    goto :goto_0

    :pswitch_5
    const-string v0, "SHA384"

    goto :goto_0

    :pswitch_6
    const-string v0, "SHA512"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static toKeymaster(Ljava/lang/String;)I
    .locals 8
    .param p0, "digest"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string v7, "SHA-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_1
    const-string v7, "SHA-224"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto :goto_0

    :sswitch_2
    const-string v7, "SHA-256"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_3
    const-string v7, "SHA-384"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_4
    const-string v7, "SHA-512"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_5
    const-string v7, "NONE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :sswitch_6
    const-string v7, "MD5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto :goto_0

    :pswitch_0
    move v0, v1

    :goto_1
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v2

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x6

    goto :goto_1

    :pswitch_5
    move v0, v3

    goto :goto_1

    :pswitch_6
    move v0, v4

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5ad4aecd -> :sswitch_1
        -0x5ad4ae6e -> :sswitch_2
        -0x5ad4aa52 -> :sswitch_3
        -0x5ad4a3ab -> :sswitch_4
        0x1297e -> :sswitch_6
        0x24a738 -> :sswitch_5
        0x4b35330 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
