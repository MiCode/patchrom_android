.class Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;
.super Ljava/lang/Object;
.source "MediaRouteChooserDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public check:Landroid/widget/CheckBox;

.field public expandGroupButton:Landroid/widget/ImageButton;

.field public expandGroupListener:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;

.field public icon:Landroid/widget/ImageView;

.field public position:I

.field public text1:Landroid/widget/TextView;

.field public text2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;-><init>()V

    return-void
.end method
