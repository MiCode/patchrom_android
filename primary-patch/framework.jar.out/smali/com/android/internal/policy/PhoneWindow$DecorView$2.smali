.class Lcom/android/internal/policy/PhoneWindow$DecorView$2;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow$DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2400(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # invokes: Lcom/android/internal/policy/PhoneWindow$DecorView;->endOnGoingFadeAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2500(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    # setter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2602(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2600(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/PhoneWindow$DecorView$2$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$2$1;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView$2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2600(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
