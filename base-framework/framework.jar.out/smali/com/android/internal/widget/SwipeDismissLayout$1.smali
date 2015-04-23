.class Lcom/android/internal/widget/SwipeDismissLayout$1;
.super Ljava/lang/Object;
.source "SwipeDismissLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SwipeDismissLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SwipeDismissLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterAnimationComplete()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    # getter for: Lcom/android/internal/widget/SwipeDismissLayout;->mUseDynamicTranslucency:Z
    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->access$000(Lcom/android/internal/widget/SwipeDismissLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->convertFromTranslucent()V

    :cond_0
    return-void
.end method
