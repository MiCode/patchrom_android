.class Lcom/android/server/accounts/TokenCache;
.super Ljava/lang/Object;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/TokenCache$TokenLruCache;,
        Lcom/android/server/accounts/TokenCache$Key;,
        Lcom/android/server/accounts/TokenCache$Value;
    }
.end annotation


# static fields
.field private static final MAX_CACHE_CHARS:I = 0xfa00


# instance fields
.field private mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/accounts/TokenCache$TokenLruCache;

    invoke-direct {v0}, Lcom/android/server/accounts/TokenCache$TokenLruCache;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    return-void
.end method


# virtual methods
.method public get(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "tokenType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "sigDigest"    # [B

    .prologue
    new-instance v2, Lcom/android/server/accounts/TokenCache$Key;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/accounts/TokenCache$Key;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V

    .local v2, "k":Lcom/android/server/accounts/TokenCache$Key;
    iget-object v4, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    invoke-virtual {v4, v2}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accounts/TokenCache$Value;

    .local v3, "v":Lcom/android/server/accounts/TokenCache$Value;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "currentTime":J
    if-eqz v3, :cond_0

    iget-wide v4, v3, Lcom/android/server/accounts/TokenCache$Value;->expiryEpochMillis:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    iget-object v4, v3, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    :goto_0
    return-object v4

    :cond_0
    if-eqz v3, :cond_1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/android/server/accounts/TokenCache;->remove(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "tokenType"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "sigDigest"    # [B
    .param p6, "expiryMillis"    # J

    .prologue
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, p6

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/server/accounts/TokenCache$Key;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/server/accounts/TokenCache$Key;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V

    .local v0, "k":Lcom/android/server/accounts/TokenCache$Key;
    new-instance v1, Lcom/android/server/accounts/TokenCache$Value;

    invoke-direct {v1, p2, p6, p7}, Lcom/android/server/accounts/TokenCache$Value;-><init>(Ljava/lang/String;J)V

    .local v1, "v":Lcom/android/server/accounts/TokenCache$Value;
    iget-object v2, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->putToken(Lcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;)V

    goto :goto_0
.end method

.method public remove(Landroid/accounts/Account;)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    iget-object v0, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->evict(Landroid/accounts/Account;)V

    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->evict(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
