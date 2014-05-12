.class Lcom/android/internal/view/menu/ActionMenuPresenter$1;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field final synthetic val$item:Lcom/android/internal/view/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/view/View;Lcom/android/internal/view/menu/MenuItemImpl;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$1;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iput-object p3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$1;->val$item:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$1;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    #getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$100(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$1;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    #getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$100(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onForwardingStarted()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$1;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$1;->val$item:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    move-result v0

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$1;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    move-result v0

    return v0
.end method
