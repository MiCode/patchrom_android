.class final Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaRouteChooserDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RouteAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/media/MediaRouter$RouteInfo;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/internal/app/MediaRouteChooserDialog;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/MediaRouteChooserDialog;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    move-object v4, p2

    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x109005e

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$RouteInfo;

    .local v1, route:Landroid/media/MediaRouter$RouteInfo;
    const v5, 0x1020014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, text1:Landroid/widget/TextView;
    const v5, 0x1020015

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, text2:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, description:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    return-object v4

    :cond_1
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    .local v0, route:Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-virtual {v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->clear()V

    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;
    invoke-static {v3}, Lcom/android/internal/app/MediaRouteChooserDialog;->access$100(Lcom/android/internal/app/MediaRouteChooserDialog;)Landroid/media/MediaRouter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;
    invoke-static {v3}, Lcom/android/internal/app/MediaRouteChooserDialog;->access$100(Lcom/android/internal/app/MediaRouteChooserDialog;)Landroid/media/MediaRouter;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .local v2, route:Landroid/media/MediaRouter$RouteInfo;
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/MediaRouteChooserDialog;->onFilterRoute(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #route:Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    sget-object v3, Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;->sInstance:Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;

    invoke-virtual {p0, v3}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->notifyDataSetChanged()V

    return-void
.end method
