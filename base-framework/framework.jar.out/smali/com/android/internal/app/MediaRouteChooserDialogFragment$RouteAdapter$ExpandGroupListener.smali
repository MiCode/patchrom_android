.class Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;
.super Ljava/lang/Object;
.source "MediaRouteChooserDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpandGroupListener"
.end annotation


# instance fields
.field position:I

.field final synthetic this$1:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    iget v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->position:I

    invoke-virtual {v1, v2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteGroup;

    .local v0, group:Landroid/media/MediaRouter$RouteGroup;
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    #setter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Landroid/media/MediaRouter$RouteGroup;
    invoke-static {v1, v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->access$502(Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;Landroid/media/MediaRouter$RouteGroup;)Landroid/media/MediaRouter$RouteGroup;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteGroup;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v2

    #setter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Landroid/media/MediaRouter$RouteCategory;
    invoke-static {v1, v2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->access$602(Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$RouteCategory;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    iget-object v1, v1, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-virtual {v1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    iget-object v1, v1, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    iget-object v1, v1, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    iget-object v2, v2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouteTypes:I
    invoke-static {v2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$000(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Landroid/media/MediaRouter$RouteGroup;
    invoke-static {v3}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->access$500(Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;)Landroid/media/MediaRouter$RouteGroup;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRouter;->selectRouteInt(ILandroid/media/MediaRouter$RouteInfo;)V

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->this$1:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->scrollToEditingGroup()V

    return-void
.end method
