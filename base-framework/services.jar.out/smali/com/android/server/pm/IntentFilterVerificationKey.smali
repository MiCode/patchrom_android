.class Lcom/android/server/pm/IntentFilterVerificationKey;
.super Ljava/lang/Object;
.source "IntentFilterVerificationKey.java"


# instance fields
.field public className:Ljava/lang/String;

.field public domains:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "domains"    # [Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "host":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/IntentFilterVerificationKey;

    .local v0, "that":Lcom/android/server/pm/IntentFilterVerificationKey;
    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_6
    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, v0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    if-nez v3, :cond_7

    :cond_9
    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_a
    iget-object v3, v0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    goto :goto_1
.end method
