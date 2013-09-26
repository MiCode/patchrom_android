.class Landroid/view/WindowManagerGlobal$1;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/WindowManagerGlobal;


# direct methods
.method constructor <init>(Landroid/view/WindowManagerGlobal;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/WindowManagerGlobal$1;->this$0:Landroid/view/WindowManagerGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    iget-object v4, p0, Landroid/view/WindowManagerGlobal$1;->this$0:Landroid/view/WindowManagerGlobal;

    #getter for: Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Landroid/view/WindowManagerGlobal;->access$000(Landroid/view/WindowManagerGlobal;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal$1;->this$0:Landroid/view/WindowManagerGlobal;

    #getter for: Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;
    invoke-static {v4}, Landroid/view/WindowManagerGlobal;->access$100(Landroid/view/WindowManagerGlobal;)[Landroid/view/ViewRootImpl;

    move-result-object v0

    .local v0, arr$:[Landroid/view/ViewRootImpl;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, viewRoot:Landroid/view/ViewRootImpl;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #viewRoot:Landroid/view/ViewRootImpl;
    :cond_0
    monitor-exit v5

    return-void

    .end local v0           #arr$:[Landroid/view/ViewRootImpl;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
