.class Landroid/app/MediaRouteButton$1;
.super Ljava/lang/Object;
.source "MediaRouteButton.java"

# interfaces
.implements Lcom/android/internal/app/MediaRouteChooserDialogFragment$LauncherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/MediaRouteButton;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/MediaRouteButton;


# direct methods
.method constructor <init>(Landroid/app/MediaRouteButton;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/app/MediaRouteButton$1;->this$0:Landroid/app/MediaRouteButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetached(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)V
    .locals 2
    .parameter "detachedFragment"

    .prologue
    iget-object v0, p0, Landroid/app/MediaRouteButton$1;->this$0:Landroid/app/MediaRouteButton;

    const/4 v1, 0x0

    #setter for: Landroid/app/MediaRouteButton;->mDialogFragment:Lcom/android/internal/app/MediaRouteChooserDialogFragment;
    invoke-static {v0, v1}, Landroid/app/MediaRouteButton;->access$102(Landroid/app/MediaRouteButton;Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    return-void
.end method
