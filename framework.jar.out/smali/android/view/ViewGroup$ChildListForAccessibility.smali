.class Landroid/view/ViewGroup$ChildListForAccessibility;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildListForAccessibility"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x20

.field private static sPool:Landroid/view/ViewGroup$ChildListForAccessibility;

.field private static final sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field private final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup$ViewLocationHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPooled:Z

.field private mNext:Landroid/view/ViewGroup$ChildListForAccessibility;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mHolders:Ljava/util/ArrayList;

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private init(Landroid/view/ViewGroup;Z)V
    .locals 7
    .parameter "parent"
    .parameter "sort"

    .prologue
    iget-object v2, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    .local v2, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, childCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_0

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0           #child:Landroid/view/View;
    :cond_0
    if-eqz p2, :cond_3

    iget-object v4, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mHolders:Ljava/util/ArrayList;

    .local v4, holders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewGroup$ViewLocationHolder;>;"
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .restart local v0       #child:Landroid/view/View;
    invoke-static {p1, v0}, Landroid/view/ViewGroup$ViewLocationHolder;->obtain(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup$ViewLocationHolder;

    move-result-object v3

    .local v3, holder:Landroid/view/ViewGroup$ViewLocationHolder;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    .end local v3           #holder:Landroid/view/ViewGroup$ViewLocationHolder;
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$ViewLocationHolder;

    .restart local v3       #holder:Landroid/view/ViewGroup$ViewLocationHolder;
    iget-object v6, v3, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    invoke-virtual {v2, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/view/ViewGroup$ViewLocationHolder;->recycle()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v3           #holder:Landroid/view/ViewGroup$ViewLocationHolder;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .end local v4           #holders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewGroup$ViewLocationHolder;>;"
    :cond_3
    return-void
.end method

.method public static obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;
    .locals 4
    .parameter "parent"
    .parameter "sort"

    .prologue
    const/4 v0, 0x0

    .local v0, list:Landroid/view/ViewGroup$ChildListForAccessibility;
    sget-object v3, Landroid/view/ViewGroup$ChildListForAccessibility;->sPoolLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/view/ViewGroup$ChildListForAccessibility;

    if-eqz v2, :cond_0

    sget-object v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/view/ViewGroup$ChildListForAccessibility;

    iget-object v2, v0, Landroid/view/ViewGroup$ChildListForAccessibility;->mNext:Landroid/view/ViewGroup$ChildListForAccessibility;

    sput-object v2, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/view/ViewGroup$ChildListForAccessibility;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/ViewGroup$ChildListForAccessibility;->mNext:Landroid/view/ViewGroup$ChildListForAccessibility;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/ViewGroup$ChildListForAccessibility;->mIsPooled:Z

    sget v2, Landroid/view/ViewGroup$ChildListForAccessibility;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/ViewGroup$ChildListForAccessibility;->sPoolSize:I

    :goto_0
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$ChildListForAccessibility;->init(Landroid/view/ViewGroup;Z)V

    monitor-exit v3

    return-object v0

    :cond_0
    new-instance v1, Landroid/view/ViewGroup$ChildListForAccessibility;

    invoke-direct {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;-><init>()V

    .end local v0           #list:Landroid/view/ViewGroup$ChildListForAccessibility;
    .local v1, list:Landroid/view/ViewGroup$ChildListForAccessibility;
    move-object v0, v1

    .end local v1           #list:Landroid/view/ViewGroup$ChildListForAccessibility;
    .restart local v0       #list:Landroid/view/ViewGroup$ChildListForAccessibility;
    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getChildIndex(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mIsPooled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Instance already recycled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Landroid/view/ViewGroup$ChildListForAccessibility;->clear()V

    sget-object v1, Landroid/view/ViewGroup$ChildListForAccessibility;->sPoolLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPoolSize:I

    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    sget-object v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/view/ViewGroup$ChildListForAccessibility;

    iput-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mNext:Landroid/view/ViewGroup$ChildListForAccessibility;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mIsPooled:Z

    sput-object p0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/view/ViewGroup$ChildListForAccessibility;

    sget v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPoolSize:I

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
