.class Landroid/app/EnterTransitionCoordinator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EnterTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->startEnterTransition(Landroid/transition/Transition;)V
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
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$8;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$8;->this$0:Landroid/app/EnterTransitionCoordinator;

    # invokes: Landroid/app/EnterTransitionCoordinator;->makeOpaque()V
    invoke-static {v0}, Landroid/app/EnterTransitionCoordinator;->access$400(Landroid/app/EnterTransitionCoordinator;)V

    return-void
.end method
