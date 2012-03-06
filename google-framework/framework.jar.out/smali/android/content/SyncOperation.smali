.class public Landroid/content/SyncOperation;
.super Ljava/lang/Object;
.source "SyncOperation.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final allowParallelSyncs:Z

.field public authority:Ljava/lang/String;

.field public backoff:Ljava/lang/Long;

.field public delayUntil:J

.field public earliestRunTime:J

.field public effectiveRunTime:J

.field public expedited:Z

.field public extras:Landroid/os/Bundle;

.field public final key:Ljava/lang/String;

.field public pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

.field public syncSource:I


# direct methods
.method public constructor <init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JJJZ)V
    .locals 4
    .parameter "account"
    .parameter "source"
    .parameter "authority"
    .parameter "extras"
    .parameter "delayInMs"
    .parameter "backoff"
    .parameter "delayUntil"
    .parameter "allowParallelSyncs"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    .line 44
    iput p2, p0, Landroid/content/SyncOperation;->syncSource:I

    .line 45
    iput-object p3, p0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    .line 46
    iput-boolean p11, p0, Landroid/content/SyncOperation;->allowParallelSyncs:Z

    .line 47
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v2, p0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 48
    const-string/jumbo v2, "upload"

    invoke-direct {p0, v2}, Landroid/content/SyncOperation;->removeFalseExtra(Ljava/lang/String;)V

    .line 49
    const-string v2, "force"

    invoke-direct {p0, v2}, Landroid/content/SyncOperation;->removeFalseExtra(Ljava/lang/String;)V

    .line 50
    const-string v2, "ignore_settings"

    invoke-direct {p0, v2}, Landroid/content/SyncOperation;->removeFalseExtra(Ljava/lang/String;)V

    .line 51
    const-string v2, "ignore_backoff"

    invoke-direct {p0, v2}, Landroid/content/SyncOperation;->removeFalseExtra(Ljava/lang/String;)V

    .line 52
    const-string v2, "do_not_retry"

    invoke-direct {p0, v2}, Landroid/content/SyncOperation;->removeFalseExtra(Ljava/lang/String;)V

    .line 53
    const-string v2, "discard_deletions"

    invoke-direct {p0, v2}, Landroid/content/SyncOperation;->removeFalseExtra(Ljava/lang/String;)V

    .line 54
    const-string v2, "expedited"

    invoke-direct {p0, v2}, Landroid/content/SyncOperation;->removeFalseExtra(Ljava/lang/String;)V

    .line 55
    const-string v2, "deletions_override"

    invoke-direct {p0, v2}, Landroid/content/SyncOperation;->removeFalseExtra(Ljava/lang/String;)V

    .line 56
    iput-wide p9, p0, Landroid/content/SyncOperation;->delayUntil:J

    .line 57
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Landroid/content/SyncOperation;->backoff:Ljava/lang/Long;

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 59
    .local v0, now:J
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gez v2, :cond_0

    .line 60
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/SyncOperation;->expedited:Z

    .line 61
    iput-wide v0, p0, Landroid/content/SyncOperation;->earliestRunTime:J

    .line 66
    :goto_0
    invoke-virtual {p0}, Landroid/content/SyncOperation;->updateEffectiveRunTime()V

    .line 67
    invoke-direct {p0}, Landroid/content/SyncOperation;->toKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/SyncOperation;->key:Ljava/lang/String;

    .line 68
    return-void

    .line 63
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/content/SyncOperation;->expedited:Z

    .line 64
    add-long v2, v0, p5

    iput-wide v2, p0, Landroid/content/SyncOperation;->earliestRunTime:J

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/SyncOperation;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iget-object v0, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iput-object v0, p0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    .line 78
    iget v0, p1, Landroid/content/SyncOperation;->syncSource:I

    iput v0, p0, Landroid/content/SyncOperation;->syncSource:I

    .line 79
    iget-object v0, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    .line 80
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 81
    iget-boolean v0, p1, Landroid/content/SyncOperation;->expedited:Z

    iput-boolean v0, p0, Landroid/content/SyncOperation;->expedited:Z

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncOperation;->earliestRunTime:J

    .line 83
    iget-object v0, p1, Landroid/content/SyncOperation;->backoff:Ljava/lang/Long;

    iput-object v0, p0, Landroid/content/SyncOperation;->backoff:Ljava/lang/Long;

    .line 84
    iget-wide v0, p1, Landroid/content/SyncOperation;->delayUntil:J

    iput-wide v0, p0, Landroid/content/SyncOperation;->delayUntil:J

    .line 85
    iget-boolean v0, p1, Landroid/content/SyncOperation;->allowParallelSyncs:Z

    iput-boolean v0, p0, Landroid/content/SyncOperation;->allowParallelSyncs:Z

    .line 86
    invoke-virtual {p0}, Landroid/content/SyncOperation;->updateEffectiveRunTime()V

    .line 87
    invoke-direct {p0}, Landroid/content/SyncOperation;->toKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncOperation;->key:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public static extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "bundle"
    .parameter "sb"

    .prologue
    .line 130
    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 134
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    return-void
.end method

.method private removeFalseExtra(Ljava/lang/String;)V
    .locals 2
    .parameter "extraName"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method private toKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " account {name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, " extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v1, p0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v1, v0}, Landroid/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 7
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 146
    move-object v0, p1

    check-cast v0, Landroid/content/SyncOperation;

    .line 148
    .local v0, other:Landroid/content/SyncOperation;
    iget-boolean v3, p0, Landroid/content/SyncOperation;->expedited:Z

    iget-boolean v4, v0, Landroid/content/SyncOperation;->expedited:Z

    if-eq v3, v4, :cond_2

    .line 149
    iget-boolean v3, p0, Landroid/content/SyncOperation;->expedited:Z

    if-eqz v3, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 149
    goto :goto_0

    .line 152
    :cond_2
    iget-wide v3, p0, Landroid/content/SyncOperation;->effectiveRunTime:J

    iget-wide v5, v0, Landroid/content/SyncOperation;->effectiveRunTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 153
    const/4 v1, 0x0

    goto :goto_0

    .line 156
    :cond_3
    iget-wide v3, p0, Landroid/content/SyncOperation;->effectiveRunTime:J

    iget-wide v5, v0, Landroid/content/SyncOperation;->effectiveRunTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public dump(Z)Ljava/lang/String;
    .locals 4
    .parameter "useOneLine"

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    sget-object v1, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v2, p0, Landroid/content/SyncOperation;->syncSource:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", earliestRunTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/SyncOperation;->earliestRunTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-boolean v1, p0, Landroid/content/SyncOperation;->expedited:Z

    if-eqz v1, :cond_0

    .line 103
    const-string v1, ", EXPEDITED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    const-string v1, "\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v1, v0}, Landroid/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 109
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public ignoreBackoff()Z
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "ignore_backoff"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isInitialization()Z
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "initialize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/SyncOperation;->dump(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateEffectiveRunTime()V
    .locals 4

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/content/SyncOperation;->ignoreBackoff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/content/SyncOperation;->earliestRunTime:J

    :goto_0
    iput-wide v0, p0, Landroid/content/SyncOperation;->effectiveRunTime:J

    .line 143
    return-void

    .line 138
    :cond_0
    iget-wide v0, p0, Landroid/content/SyncOperation;->earliestRunTime:J

    iget-wide v2, p0, Landroid/content/SyncOperation;->delayUntil:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Landroid/content/SyncOperation;->backoff:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method
