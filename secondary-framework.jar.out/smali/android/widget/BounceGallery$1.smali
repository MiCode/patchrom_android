.class Landroid/widget/BounceGallery$1;
.super Ljava/lang/Object;
.source "BounceGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BounceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BounceGallery;


# direct methods
.method constructor <init>(Landroid/widget/BounceGallery;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/BounceGallery$1;->this$0:Landroid/widget/BounceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/BounceGallery$1;->this$0:Landroid/widget/BounceGallery;

    const/4 v1, 0x0

    #setter for: Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z
    invoke-static {v0, v1}, Landroid/widget/BounceGallery;->access$002(Landroid/widget/BounceGallery;Z)Z

    iget-object v0, p0, Landroid/widget/BounceGallery$1;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0}, Landroid/widget/BounceGallery;->selectionChanged()V

    return-void
.end method
