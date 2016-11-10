.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->layoutMenuItems(Ljava/util/List;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->access$2200(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflow:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->access$2300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
