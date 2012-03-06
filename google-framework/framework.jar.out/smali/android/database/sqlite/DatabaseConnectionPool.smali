.class Landroid/database/sqlite/DatabaseConnectionPool;
.super Ljava/lang/Object;
.source "DatabaseConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "DatabaseConnectionPool"


# instance fields
.field private volatile mMaxPoolSize:I

.field private final mParentDbObj:Landroid/database/sqlite/SQLiteDatabase;

.field private final mPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;",
            ">;"
        }
    .end annotation
.end field

.field private rand:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/database/sqlite/DatabaseConnectionPool;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mParentDbObj:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    const-string v0, "DatabaseConnectionPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "DatabaseConnectionPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max Pool Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    return-void
.end method

.method private doAsserts()V
    .locals 3

    .prologue
    .line 232
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 233
    iget-object v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #calls: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->verify()V
    invoke-static {v1}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$400(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)V

    .line 234
    sget-boolean v1, Landroid/database/sqlite/DatabaseConnectionPool;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-short v1, v1, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    add-int/lit8 v2, v0, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 232
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized close()V
    .locals 4

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    const-string v1, "DatabaseConnectionPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "DatabaseConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing the connection pool on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mParentDbObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/DatabaseConnectionPool;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 66
    iget-object v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 65
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 62
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized get(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 9
    .parameter "sql"

    .prologue
    .line 79
    monitor-enter p0

    const/4 v1, 0x0

    .line 80
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 81
    .local v3, poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    :try_start_0
    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 82
    .local v5, poolSize:I
    const-string v6, "DatabaseConnectionPool"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    sget-boolean v6, Landroid/database/sqlite/DatabaseConnectionPool;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v5           #poolSize:I
    :catchall_0
    move-exception v6

    :goto_0
    monitor-exit p0

    throw v6

    .line 84
    .restart local v5       #poolSize:I
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/database/sqlite/DatabaseConnectionPool;->doAsserts()V

    .line 86
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/DatabaseConnectionPool;->getFreePoolSize()I

    move-result v6

    if-nez v6, :cond_8

    .line 88
    iget v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I

    if-ne v6, v5, :cond_7

    .line 92
    iget v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 93
    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    move-object v3, v0

    .line 110
    :cond_2
    :goto_1
    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v3}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 141
    :goto_2
    sget-boolean v6, Landroid/database/sqlite/DatabaseConnectionPool;->$assertionsDisabled:Z

    if-nez v6, :cond_d

    if-nez v3, :cond_d

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 95
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    iget v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I

    if-ge v2, v6, :cond_4

    .line 96
    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v6}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->isInStatementCache(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 97
    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    move-object v3, v0

    .line 101
    :cond_4
    if-nez v3, :cond_2

    .line 104
    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->rand:Ljava/util/Random;

    if-nez v6, :cond_5

    .line 105
    new-instance v6, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Random;-><init>(J)V

    iput-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->rand:Ljava/util/Random;

    .line 107
    :cond_5
    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/database/sqlite/DatabaseConnectionPool;->rand:Ljava/util/Random;

    iget v8, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    move-object v3, v0

    goto :goto_1

    .line 95
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 114
    .end local v2           #i:I
    :cond_7
    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mParentDbObj:Landroid/database/sqlite/SQLiteDatabase;

    add-int/lit8 v7, v5, 0x1

    int-to-short v7, v7

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->createPoolConnection(S)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 115
    new-instance v4, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    invoke-direct {v4, v1}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .end local v3           #poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    .local v4, poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    :try_start_2
    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v4

    .end local v4           #poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    .restart local v3       #poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    goto :goto_2

    .line 121
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v5, :cond_9

    .line 122
    :try_start_3
    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #calls: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->isFree()Z
    invoke-static {v6}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$100(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v6}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->isInStatementCache(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 123
    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    move-object v3, v0

    .line 127
    :cond_9
    if-nez v3, :cond_a

    .line 131
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_a

    .line 132
    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #calls: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->isFree()Z
    invoke-static {v6}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$100(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 133
    iget-object v6, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    move-object v3, v0

    .line 138
    :cond_a
    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v3}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    goto/16 :goto_2

    .line 121
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 131
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 142
    .end local v2           #i:I
    :cond_d
    sget-boolean v6, Landroid/database/sqlite/DatabaseConnectionPool;->$assertionsDisabled:Z

    if-nez v6, :cond_e

    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v3}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    if-eq v6, v1, :cond_e

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 144
    :cond_e
    #calls: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->acquire()V
    invoke-static {v3}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$200(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)V

    .line 145
    const-string v6, "DatabaseConnectionPool"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 146
    const-string v6, "DatabaseConnectionPool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "END get-connection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/database/sqlite/DatabaseConnectionPool;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :cond_f
    monitor-exit p0

    return-object v1

    .line 79
    .end local v3           #poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    .restart local v4       #poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    .restart local v3       #poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    goto/16 :goto_0
.end method

.method declared-synchronized getConnectionList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDatabase;>;"
    iget-object v2, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 188
    iget-object v2, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 190
    :cond_0
    monitor-exit p0

    return-object v1

    .line 186
    .end local v0           #i:I
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDatabase;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getFreePoolSize()I
    .locals 4

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, count:I
    iget-object v3, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    move v1, v0

    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    if-ltz v2, :cond_0

    .line 199
    iget-object v3, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #calls: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->isFree()Z
    invoke-static {v3}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$100(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    add-int/lit8 v0, v1, 0x1

    .line 198
    .end local v1           #count:I
    .restart local v0       #count:I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .line 203
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    return v1

    .end local v0           #count:I
    .restart local v1       #count:I
    :cond_1
    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1
.end method

.method declared-synchronized getMaxPoolSize()I
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getPool()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSize()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method isDatabaseObjFree(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2
    .parameter "db"

    .prologue
    .line 250
    iget-object v0, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    iget-short v1, p1, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #calls: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->isFree()Z
    invoke-static {v0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$100(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Z

    move-result v0

    return v0
.end method

.method declared-synchronized release(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    const-string v1, "DatabaseConnectionPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    sget-boolean v1, Landroid/database/sqlite/DatabaseConnectionPool;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-short v1, p1, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 160
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/database/sqlite/DatabaseConnectionPool;->doAsserts()V

    .line 161
    sget-boolean v1, Landroid/database/sqlite/DatabaseConnectionPool;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    iget-short v2, p1, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    #getter for: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eq v1, p1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 164
    :cond_1
    iget-object v1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    iget-short v2, p1, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    .line 166
    .local v0, poolObj:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    const-string v1, "DatabaseConnectionPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    const-string v1, "DatabaseConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BEGIN release-conn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/DatabaseConnectionPool;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_2
    #calls: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->isFree()Z
    invoke-static {v0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$100(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing object already freed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p1, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_3
    #calls: Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->release()V
    invoke-static {v0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->access$300(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)V

    .line 176
    const-string v1, "DatabaseConnectionPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    const-string v1, "DatabaseConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "END release-conn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/DatabaseConnectionPool;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :cond_4
    monitor-exit p0

    return-void
.end method

.method declared-synchronized setMaxPoolSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v0, buff:Ljava/lang/StringBuilder;
    const-string v3, "db: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v3, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mParentDbObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v3, ", totalsize = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v3, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    const-string v3, ", #free = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0}, Landroid/database/sqlite/DatabaseConnectionPool;->getFreePoolSize()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    const-string v3, ", maxpoolsize = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget v3, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mMaxPoolSize:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    iget-object v3, p0, Landroid/database/sqlite/DatabaseConnectionPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;

    .line 225
    .local v2, p:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v2}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 228
    .end local v2           #p:Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
