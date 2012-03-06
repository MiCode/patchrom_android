.class public final Landroid/nfc/NfcActivityManager;
.super Landroid/nfc/INdefPushCallback$Stub;
.source "NfcActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcActivityManager$NfcActivityState;
    }
.end annotation


# static fields
.field static final DBG:Ljava/lang/Boolean; = null

.field static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field final mAdapter:Landroid/nfc/NfcAdapter;

.field final mDefaultEvent:Landroid/nfc/NfcEvent;

.field final mNfcState:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/app/Activity;",
            "Landroid/nfc/NfcActivityManager$NfcActivityState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/nfc/NfcAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/nfc/INdefPushCallback$Stub;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 63
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    .line 64
    new-instance v0, Landroid/nfc/NfcEvent;

    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {v0, v1}, Landroid/nfc/NfcEvent;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mDefaultEvent:Landroid/nfc/NfcEvent;

    .line 65
    return-void
.end method


# virtual methods
.method public createMessage()Landroid/nfc/NdefMessage;
    .locals 4

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, callback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v3, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 193
    .local v2, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-boolean v3, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v3, :cond_0

    .line 194
    iget-object v0, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    goto :goto_0

    .line 197
    .end local v2           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    if-eqz v0, :cond_2

    .line 201
    iget-object v3, p0, Landroid/nfc/NfcActivityManager;->mDefaultEvent:Landroid/nfc/NfcEvent;

    invoke-interface {v0, v3}, Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;->createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 203
    :goto_1
    return-object v3

    .line 197
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 203
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method declared-synchronized getOrCreateState(Landroid/app/Activity;Z)Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 4
    .parameter "activity"
    .parameter "create"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 150
    .local v0, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 151
    new-instance v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    invoke-direct {v0, p0}, Landroid/nfc/NfcActivityManager$NfcActivityState;-><init>(Landroid/nfc/NfcActivityManager;)V

    .line 152
    .restart local v0       #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {p1}, Landroid/nfc/NfcFragment;->attach(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_1
    monitor-exit p0

    return-object v0

    .line 148
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized maybeRemoveState(Landroid/app/Activity;Landroid/nfc/NfcActivityManager$NfcActivityState;)V
    .locals 1
    .parameter "activity"
    .parameter "state"

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v0, p2, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    if-nez v0, :cond_0

    .line 165
    invoke-static {p1}, Landroid/nfc/NfcFragment;->remove(Landroid/app/Activity;)V

    .line 166
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public onNdefPushComplete()V
    .locals 4

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, callback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v3, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 214
    .local v2, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-boolean v3, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v3, :cond_0

    .line 215
    iget-object v0, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    goto :goto_0

    .line 218
    .end local v2           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    if-eqz v0, :cond_2

    .line 222
    iget-object v3, p0, Landroid/nfc/NfcActivityManager;->mDefaultEvent:Landroid/nfc/NfcEvent;

    invoke-interface {v0, v3}, Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;->onNdefPushComplete(Landroid/nfc/NfcEvent;)V

    .line 224
    :cond_2
    return-void

    .line 218
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public declared-synchronized onPause(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 84
    .local v0, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPause() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    if-eqz v0, :cond_1

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 87
    invoke-virtual {p0, v0}, Landroid/nfc/NfcActivityManager;->updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    monitor-exit p0

    return-void

    .line 83
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onResume(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 72
    .local v0, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResume() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    if-eqz v0, :cond_1

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 75
    invoke-virtual {p0, v0}, Landroid/nfc/NfcActivityManager;->updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    monitor-exit p0

    return-void

    .line 71
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V
    .locals 2
    .parameter "activity"
    .parameter "message"

    .prologue
    .line 99
    monitor-enter p0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/nfc/NfcActivityManager;->getOrCreateState(Landroid/app/Activity;Z)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 100
    .local v0, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p2, :cond_2

    .line 110
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 99
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 103
    .restart local v0       #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_2
    :try_start_1
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 104
    if-nez p2, :cond_3

    .line 105
    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcActivityManager;->maybeRemoveState(Landroid/app/Activity;Landroid/nfc/NfcActivityManager$NfcActivityState;)V

    .line 107
    :cond_3
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0, v0}, Landroid/nfc/NfcActivityManager;->updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 99
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V
    .locals 2
    .parameter "activity"
    .parameter "callback"

    .prologue
    .line 114
    monitor-enter p0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/nfc/NfcActivityManager;->getOrCreateState(Landroid/app/Activity;Z)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 115
    .local v0, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p2, :cond_2

    .line 125
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 114
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 118
    .restart local v0       #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_2
    :try_start_1
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 119
    if-nez p2, :cond_3

    .line 120
    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcActivityManager;->maybeRemoveState(Landroid/app/Activity;Landroid/nfc/NfcActivityManager$NfcActivityState;)V

    .line 122
    :cond_3
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p0, v0}, Landroid/nfc/NfcActivityManager;->updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 114
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V
    .locals 2
    .parameter "activity"
    .parameter "callback"

    .prologue
    .line 129
    monitor-enter p0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/nfc/NfcActivityManager;->getOrCreateState(Landroid/app/Activity;Z)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 130
    .local v0, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p2, :cond_2

    .line 140
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 129
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 133
    .restart local v0       #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_2
    :try_start_1
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 134
    if-nez p2, :cond_3

    .line 135
    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcActivityManager;->maybeRemoveState(Landroid/app/Activity;Landroid/nfc/NfcActivityManager$NfcActivityState;)V

    .line 137
    :cond_3
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0, v0}, Landroid/nfc/NfcActivityManager;->updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 129
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v3, p1, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 178
    .local v1, serviceCallbackNeeded:Z
    :goto_0
    :try_start_1
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-boolean v3, p1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    :goto_1
    iget-boolean v5, p1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    move-object v2, p0

    :cond_1
    invoke-interface {v4, v3, v2}, Landroid/nfc/INfcAdapter;->setForegroundNdefPush(Landroid/nfc/NdefMessage;Landroid/nfc/INdefPushCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    :goto_2
    monitor-exit p0

    return-void

    .line 174
    .end local v1           #serviceCallbackNeeded:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1       #serviceCallbackNeeded:Z
    :cond_3
    move-object v3, v2

    .line 178
    goto :goto_1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 174
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #serviceCallbackNeeded:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
