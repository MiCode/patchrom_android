.class Landroid/widget/Editor$AnimatePopupWindow$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$AnimatePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$AnimatePopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/Editor$AnimatePopupWindow;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/Editor$AnimatePopupWindow$1;->this$1:Landroid/widget/Editor$AnimatePopupWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow$1;->this$1:Landroid/widget/Editor$AnimatePopupWindow;

    const/4 v1, 0x0

    # setter for: Landroid/widget/Editor$AnimatePopupWindow;->mShowAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Landroid/widget/Editor$AnimatePopupWindow;->access$1702(Landroid/widget/Editor$AnimatePopupWindow;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
