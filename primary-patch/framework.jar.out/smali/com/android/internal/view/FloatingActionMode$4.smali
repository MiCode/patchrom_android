.class Lcom/android/internal/view/FloatingActionMode$4;
.super Ljava/lang/Object;
.source "FloatingActionMode.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/FloatingToolbar;)V
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
    iput-object p1, p0, Lcom/android/internal/view/FloatingActionMode$4;->this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$4;->this$0:Lcom/android/internal/view/FloatingActionMode;

    # getter for: Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->access$200(Lcom/android/internal/view/FloatingActionMode;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method
