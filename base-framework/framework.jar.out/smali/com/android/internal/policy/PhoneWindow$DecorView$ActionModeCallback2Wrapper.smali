.class Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;
.super Landroid/view/ActionMode$Callback2;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow$DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback2Wrapper"
.end annotation


# instance fields
.field private final mWrapped:Landroid/view/ActionMode$Callback;

.field final synthetic this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p2, "wrapped"    # Landroid/view/ActionMode$Callback;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    iput-object p2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 8
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v5, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2700(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_6

    move v1, v3

    .local v1, "isMncApp":Z
    :goto_0
    if-eqz v1, :cond_9

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v5

    if-ne p1, v5, :cond_7

    move v2, v3

    .local v2, "isPrimary":Z
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2800(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v5

    if-ne p1, v5, :cond_8

    move v0, v3

    .local v0, "isFloating":Z
    :goto_2
    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PhoneWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Destroying unexpected ActionMode instance of TYPE_PRIMARY; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was not the current primary action mode! Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v4

    if-ne v4, v3, :cond_1

    const-string v3, "PhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destroying unexpected ActionMode instance of TYPE_FLOATING; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was not the current floating action mode! Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2800(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    if-eqz v2, :cond_c

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2400(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # invokes: Lcom/android/internal/policy/PhoneWindow$DecorView;->endOnGoingFadeAnimation()V
    invoke-static {v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2500(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    # setter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;
    invoke-static {v3, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2602(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;
    invoke-static {v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2600(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;
    invoke-static {v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2600(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # setter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;
    invoke-static {v3, v7}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$302(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_4
    :goto_4
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_5

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_5
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestFitSystemWindows()V

    return-void

    .end local v0    # "isFloating":Z
    .end local v1    # "isMncApp":Z
    .end local v2    # "isPrimary":Z
    :cond_6
    move v1, v4

    goto/16 :goto_0

    .restart local v1    # "isMncApp":Z
    :cond_7
    move v2, v4

    goto/16 :goto_1

    .restart local v2    # "isPrimary":Z
    :cond_8
    move v0, v4

    goto/16 :goto_2

    .end local v2    # "isPrimary":Z
    :cond_9
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v5

    if-nez v5, :cond_a

    move v2, v3

    .restart local v2    # "isPrimary":Z
    :goto_6
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v5

    if-ne v5, v3, :cond_b

    move v0, v3

    .restart local v0    # "isFloating":Z
    :goto_7
    goto/16 :goto_3

    .end local v0    # "isFloating":Z
    .end local v2    # "isPrimary":Z
    :cond_a
    move v2, v4

    goto :goto_6

    .restart local v2    # "isPrimary":Z
    :cond_b
    move v0, v4

    goto :goto_7

    .restart local v0    # "isFloating":Z
    :cond_c
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # invokes: Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupFloatingActionModeViews()V
    invoke-static {v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$3000(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # setter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;
    invoke-static {v3, v7}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2802(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_5

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    instance-of v0, v0, Landroid/view/ActionMode$Callback2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    check-cast v0, Landroid/view/ActionMode$Callback2;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestFitSystemWindows()V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
