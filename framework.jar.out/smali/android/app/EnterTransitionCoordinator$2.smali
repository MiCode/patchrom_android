.class Landroid/app/EnterTransitionCoordinator$2;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;

.field final synthetic val$decor:Landroid/view/ViewGroup;

.field final synthetic val$sharedElements:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;Landroid/util/ArrayMap;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$2;->this$0:Landroid/app/EnterTransitionCoordinator;

    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$2;->val$decor:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/app/EnterTransitionCoordinator$2;->val$sharedElements:Landroid/util/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$2;->val$decor:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$2;->this$0:Landroid/app/EnterTransitionCoordinator;

    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$2;->val$sharedElements:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/app/EnterTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    const/4 v0, 0x1

    return v0
.end method
