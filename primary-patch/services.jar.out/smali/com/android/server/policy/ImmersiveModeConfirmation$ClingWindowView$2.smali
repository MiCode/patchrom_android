.class Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTmpInt2:[I

.field final synthetic this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6
    .param p1, "inoutInfo"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->access$100(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->access$100(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    aget v4, v4, v5

    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->access$100(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    return-void
.end method
