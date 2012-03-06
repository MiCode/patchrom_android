.class Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseReentrantLock"
.end annotation


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter "fair"

    .prologue
    .line 447
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    .line 448
    return-void
.end method


# virtual methods
.method public getOwner()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 451
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 454
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    .line 455
    .local v0, t:Ljava/lang/Thread;
    if-nez v0, :cond_0

    const-string/jumbo v1, "none"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
