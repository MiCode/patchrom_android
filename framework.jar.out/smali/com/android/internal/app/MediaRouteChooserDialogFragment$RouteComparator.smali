.class Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteComparator;
.super Ljava/lang/Object;
.source "MediaRouteChooserDialogFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RouteComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/media/MediaRouter$RouteInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteComparator;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteInfo;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteComparator;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteComparator;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-virtual {v1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    .end local p1
    check-cast p2, Landroid/media/MediaRouter$RouteInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteComparator;->compare(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteInfo;)I

    move-result v0

    return v0
.end method
