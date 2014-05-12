.class public Lcom/android/server/am/UriPermission$PersistedTimeComparator;
.super Ljava/lang/Object;
.source "UriPermission.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UriPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistedTimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/UriPermission;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/UriPermission;Lcom/android/server/am/UriPermission;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    iget-wide v0, p1, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    iget-wide v2, p2, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    check-cast p1, Lcom/android/server/am/UriPermission;

    .end local p1
    check-cast p2, Lcom/android/server/am/UriPermission;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UriPermission$PersistedTimeComparator;->compare(Lcom/android/server/am/UriPermission;Lcom/android/server/am/UriPermission;)I

    move-result v0

    return v0
.end method
