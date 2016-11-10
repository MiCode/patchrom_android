.class Lcom/android/internal/view/FloatingActionMode$1;
.super Ljava/lang/Object;
.source "FloatingActionMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/FloatingActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/FloatingActionMode;


# direct methods
.method constructor <init>(Lcom/android/internal/view/FloatingActionMode;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    # getter for: Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;
    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->access$000(Lcom/android/internal/view/FloatingActionMode;)Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setMoving(Z)V

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$1;->this$0:Lcom/android/internal/view/FloatingActionMode;

    # getter for: Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;
    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->access$000(Lcom/android/internal/view/FloatingActionMode;)Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    return-void
.end method
