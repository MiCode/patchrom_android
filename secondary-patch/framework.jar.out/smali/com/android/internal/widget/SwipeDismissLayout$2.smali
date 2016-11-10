.class Lcom/android/internal/widget/SwipeDismissLayout$2;
.super Landroid/content/BroadcastReceiver;
.source "SwipeDismissLayout.java"


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
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$2;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$2;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    # getter for: Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z
    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->access$100(Lcom/android/internal/widget/SwipeDismissLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$2;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    # invokes: Lcom/android/internal/widget/SwipeDismissLayout;->dismiss()V
    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->access$200(Lcom/android/internal/widget/SwipeDismissLayout;)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$2;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    # invokes: Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V
    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->access$300(Lcom/android/internal/widget/SwipeDismissLayout;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$2;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    goto :goto_0
.end method
