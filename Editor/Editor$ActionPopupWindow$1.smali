.class Landroid/widget/Editor$ActionPopupWindow$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$ActionPopupWindow;->createAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$ActionPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/Editor$ActionPopupWindow;)V
    .locals 0

    .prologue
    .line 3410
    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3413
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss(Z)V

    .line 3414
    return-void
.end method
