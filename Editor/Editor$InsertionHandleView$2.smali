.class Landroid/widget/Editor$InsertionHandleView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$InsertionHandleView;->createAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$InsertionHandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor$InsertionHandleView;)V
    .locals 0

    .prologue
    .line 4488
    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView$2;->this$1:Landroid/widget/Editor$InsertionHandleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 4491
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView$2;->this$1:Landroid/widget/Editor$InsertionHandleView;

    iget-object v0, v0, Landroid/widget/Editor$InsertionHandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss(Z)V

    .line 4492
    return-void
.end method
