.class final Lcom/android/internal/os/ProcessStats$1;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/os/ProcessStats$Stats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/internal/os/ProcessStats$Stats;Lcom/android/internal/os/ProcessStats$Stats;)I
    .locals 6
    .parameter "sta"
    .parameter "stb"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    iget v4, p1, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    iget v5, p1, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    add-int v0, v4, v5

    .local v0, ta:I
    iget v4, p2, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    iget v5, p2, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    add-int v1, v4, v5

    .local v1, tb:I
    if-eq v0, v1, :cond_2

    if-le v0, v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    iget-boolean v4, p1, Lcom/android/internal/os/ProcessStats$Stats;->added:Z

    iget-boolean v5, p2, Lcom/android/internal/os/ProcessStats$Stats;->added:Z

    if-eq v4, v5, :cond_3

    iget-boolean v4, p1, Lcom/android/internal/os/ProcessStats$Stats;->added:Z

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_3
    iget-boolean v4, p1, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    iget-boolean v5, p2, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    if-eq v4, v5, :cond_4

    iget-boolean v4, p1, Lcom/android/internal/os/ProcessStats$Stats;->added:Z

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    check-cast p1, Lcom/android/internal/os/ProcessStats$Stats;

    .end local p1
    check-cast p2, Lcom/android/internal/os/ProcessStats$Stats;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/ProcessStats$1;->compare(Lcom/android/internal/os/ProcessStats$Stats;Lcom/android/internal/os/ProcessStats$Stats;)I

    move-result v0

    return v0
.end method
