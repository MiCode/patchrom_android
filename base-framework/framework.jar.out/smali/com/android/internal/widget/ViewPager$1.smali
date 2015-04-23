.class final Lcom/android/internal/widget/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewPager;
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
        "Lcom/android/internal/widget/ViewPager$ItemInfo;",
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
.method public compare(Lcom/android/internal/widget/ViewPager$ItemInfo;Lcom/android/internal/widget/ViewPager$ItemInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/internal/widget/ViewPager$ItemInfo;
    .param p2, "rhs"    # Lcom/android/internal/widget/ViewPager$ItemInfo;

    .prologue
    iget v0, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v1, p2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    check-cast p1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    check-cast p2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/ViewPager$1;->compare(Lcom/android/internal/widget/ViewPager$ItemInfo;Lcom/android/internal/widget/ViewPager$ItemInfo;)I

    move-result v0

    return v0
.end method
