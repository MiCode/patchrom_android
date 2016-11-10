.class Landroid/app/EnterTransitionCoordinator$5$1;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator$5;->onSharedElementsReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/EnterTransitionCoordinator$5;

.field final synthetic val$decorView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator$5;Landroid/view/View;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$5$1;->this$1:Landroid/app/EnterTransitionCoordinator$5;

    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$5$1;->val$decorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$5$1;->val$decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$5$1;->this$1:Landroid/app/EnterTransitionCoordinator$5;

    iget-object v0, v0, Landroid/app/EnterTransitionCoordinator$5;->this$0:Landroid/app/EnterTransitionCoordinator;

    new-instance v1, Landroid/app/EnterTransitionCoordinator$5$1$1;

    invoke-direct {v1, p0}, Landroid/app/EnterTransitionCoordinator$5$1$1;-><init>(Landroid/app/EnterTransitionCoordinator$5$1;)V

    invoke-virtual {v0, v1}, Landroid/app/EnterTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method
