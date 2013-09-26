.class final Landroid/server/search/Searchables$1;
.super Ljava/lang/Object;
.source "Searchables.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/search/Searchables;
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
        "Landroid/content/pm/ResolveInfo;",
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
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    if-ne p1, p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    #calls: Landroid/server/search/Searchables;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    invoke-static {p1}, Landroid/server/search/Searchables;->access$000(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    .local v0, lhsSystem:Z
    #calls: Landroid/server/search/Searchables;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    invoke-static {p2}, Landroid/server/search/Searchables;->access$000(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    .local v1, rhsSystem:Z
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p2, Landroid/content/pm/ResolveInfo;->priority:I

    iget v3, p1, Landroid/content/pm/ResolveInfo;->priority:I

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/server/search/Searchables$1;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
