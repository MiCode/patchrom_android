.class Landroid/transition/ChangeTransform$GhostListener;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GhostListener"
.end annotation


# instance fields
.field private mGhostView:Landroid/view/GhostView;

.field private mStartView:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/GhostView;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startView"    # Landroid/view/View;
    .param p3, "ghostView"    # Landroid/view/GhostView;

    .prologue
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    iput-object p1, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    iput-object p2, p0, Landroid/transition/ChangeTransform$GhostListener;->mStartView:Landroid/view/View;

    iput-object p3, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    const v1, 0x1020052

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    const v1, 0x1020053

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mStartView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/GhostView;->setVisibility(I)V

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    iget-object v0, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GhostView;->setVisibility(I)V

    return-void
.end method
