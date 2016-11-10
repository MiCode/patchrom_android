.class Lcom/android/internal/widget/FloatingToolbar$2;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/FloatingToolbar;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    # getter for: Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->access$000(Lcom/android/internal/widget/FloatingToolbar;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    # getter for: Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->access$000(Lcom/android/internal/widget/FloatingToolbar;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-result-object v0

    # invokes: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->viewPortHasChanged()Z
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$100(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;->access$202(Lcom/android/internal/widget/FloatingToolbar;Z)Z

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->updateLayout()Lcom/android/internal/widget/FloatingToolbar;

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    return-void
.end method
