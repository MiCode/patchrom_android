.class Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VirtualViewContainer"
.end annotation


# instance fields
.field description:Ljava/lang/CharSequence;

.field final synthetic this$1:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "description"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->this$1:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->description:Ljava/lang/CharSequence;

    return-void
.end method
