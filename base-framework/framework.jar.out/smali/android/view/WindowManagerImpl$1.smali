.class Landroid/view/WindowManagerImpl$1;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/WindowManagerImpl;


# direct methods
.method constructor <init>(Landroid/view/WindowManagerImpl;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/WindowManagerImpl$1;->this$0:Landroid/view/WindowManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Landroid/view/WindowManagerImpl$1;->this$0:Landroid/view/WindowManagerImpl;

    #getter for: Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;
    invoke-static {v4}, Landroid/view/WindowManagerImpl;->access$000(Landroid/view/WindowManagerImpl;)[Landroid/view/ViewRootImpl;

    move-result-object v0

    .local v0, arr$:[Landroid/view/ViewRootImpl;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #root:Landroid/view/ViewRootImpl;
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .end local v0           #arr$:[Landroid/view/ViewRootImpl;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method
