.class Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$1;
.super Ljava/lang/Object;
.source "MediaRouteChooserDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

.field final synthetic val$fholder:Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;

.field final synthetic val$fview:Landroid/view/View;

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;Landroid/widget/ListView;Landroid/view/View;Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$1;->this$1:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    iput-object p2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$1;->val$list:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$1;->val$fview:Landroid/view/View;

    iput-object p4, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$1;->val$fholder:Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$1;->val$list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$1;->val$fview:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$1;->val$fholder:Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;

    iget v2, v2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->position:I

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method
