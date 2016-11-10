.class Landroid/app/EnterTransitionCoordinator$6;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "EnterTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$6;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$6;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionComplete()V

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$6;->this$0:Landroid/app/EnterTransitionCoordinator;

    # invokes: Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionStarted()V
    invoke-static {v0}, Landroid/app/EnterTransitionCoordinator;->access$200(Landroid/app/EnterTransitionCoordinator;)V

    return-void
.end method
