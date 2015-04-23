.class Lcom/android/server/accounts/TokenCache$Key;
.super Ljava/lang/Object;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/TokenCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final packageName:Ljava/lang/String;

.field public final sigDigest:[B

.field public final tokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "tokenType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "sigDigest"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/android/server/accounts/TokenCache$Key;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/accounts/TokenCache$Key;

    .local v0, "cacheKey":Lcom/android/server/accounts/TokenCache$Key;
    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    iget-object v3, v0, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    iget-object v3, v0, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .end local v0    # "cacheKey":Lcom/android/server/accounts/TokenCache$Key;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
