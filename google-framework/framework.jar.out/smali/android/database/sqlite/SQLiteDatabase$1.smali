.class Landroid/database/sqlite/SQLiteDatabase$1;
.super Landroid/util/LruCache;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/database/sqlite/SQLiteDatabase;->setMaxSqlCacheSize(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/database/sqlite/SQLiteCompiledSql;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 2178
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$1;->this$0:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2178
    check-cast p2, Ljava/lang/String;

    .end local p2
    check-cast p3, Landroid/database/sqlite/SQLiteCompiledSql;

    .end local p3
    check-cast p4, Landroid/database/sqlite/SQLiteCompiledSql;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase$1;->entryRemoved(ZLjava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;Landroid/database/sqlite/SQLiteCompiledSql;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;Landroid/database/sqlite/SQLiteCompiledSql;)V
    .locals 1
    .parameter "evicted"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 2182
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$1;->this$0:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->verifyLockOwner()V

    .line 2183
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseIfNotInUse()V

    .line 2184
    return-void
.end method
