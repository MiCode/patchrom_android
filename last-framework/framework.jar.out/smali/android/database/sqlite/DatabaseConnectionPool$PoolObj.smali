.class Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;
.super Ljava/lang/Object;
.source "DatabaseConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/DatabaseConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PoolObj"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BUSY:Z = false

.field private static final FREE:Z = true


# instance fields
.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mFreeBusyFlag:Z

.field private mHolderIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNumHolders:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 262
    const-class v0, Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mFreeBusyFlag:Z

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    .line 277
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mHolderIds:Ljava/util/HashSet;

    .line 280
    iput-object p1, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 281
    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    iget-object v0, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$100(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    invoke-direct {p0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->isFree()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 262
    invoke-direct {p0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->acquire()V

    return-void
.end method

.method static synthetic access$300(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 262
    invoke-direct {p0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->release()V

    return-void
.end method

.method static synthetic access$400(Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 262
    invoke-direct {p0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->verify()V

    return-void
.end method

.method private declared-synchronized acquire()V
    .locals 4

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    const-string v2, "DatabaseConnectionPool"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    sget-boolean v2, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->isFree()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 286
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 287
    .local v0, id:J
    sget-boolean v2, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mHolderIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 288
    :cond_1
    iget-object v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mHolderIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 291
    .end local v0           #id:J
    :cond_2
    iget v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    .line 292
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mFreeBusyFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized isFree()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 310
    monitor-enter p0

    :try_start_0
    const-string v1, "DatabaseConnectionPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    invoke-direct {p0}, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->verify()V

    .line 313
    :cond_0
    iget-boolean v1, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mFreeBusyFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized release()V
    .locals 4

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    const-string v2, "DatabaseConnectionPool"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 297
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 298
    .local v0, id:J
    sget-boolean v2, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mHolderIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    iget v3, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    .end local v0           #id:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 299
    .restart local v0       #id:J
    :cond_0
    :try_start_1
    sget-boolean v2, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mHolderIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 300
    :cond_1
    iget-object v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mHolderIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 303
    .end local v0           #id:J
    :cond_2
    iget v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    .line 304
    iget v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    if-nez v2, :cond_3

    .line 305
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mFreeBusyFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :cond_3
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized verify()V
    .locals 2

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mFreeBusyFlag:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 318
    sget-boolean v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 320
    :cond_0
    :try_start_1
    sget-boolean v0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :cond_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method declared-synchronized getNumHolders()I
    .locals 1

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .local v0, buff:Ljava/lang/StringBuilder;
    const-string v3, ", conn # "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-object v3, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-short v3, v3, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    const-string v3, ", mCountHolders = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    monitor-enter p0

    .line 338
    :try_start_0
    iget v3, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mNumHolders:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    const-string v3, ", freeBusyFlag = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-boolean v3, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mFreeBusyFlag:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 341
    iget-object v3, p0, Landroid/database/sqlite/DatabaseConnectionPool$PoolObj;->mHolderIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 342
    .local v2, l:Ljava/lang/Long;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 344
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Ljava/lang/Long;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
