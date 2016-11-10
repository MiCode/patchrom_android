.class final Landroid/widget/AdapterViewAnimator$CheckForTap;
.super Ljava/lang/Object;
.source "AdapterViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AdapterViewAnimator;


# direct methods
.method constructor <init>(Landroid/widget/AdapterViewAnimator;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$CheckForTap;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$CheckForTap;->this$0:Landroid/widget/AdapterViewAnimator;

    # getter for: Landroid/widget/AdapterViewAnimator;->mTouchMode:I
    invoke-static {v1}, Landroid/widget/AdapterViewAnimator;->access$000(Landroid/widget/AdapterViewAnimator;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$CheckForTap;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$CheckForTap;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v1, v0}, Landroid/widget/AdapterViewAnimator;->showTapFeedback(Landroid/view/View;)V

    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method
