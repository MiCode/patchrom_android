.class Landroid/widget/BookmarkView$1;
.super Ljava/lang/Object;
.source "BookmarkView.java"

# interfaces
.implements Landroid/widget/BounceGallery$OnSelectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BookmarkView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BookmarkView;


# direct methods
.method constructor <init>(Landroid/widget/BookmarkView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/BookmarkView$1;->this$0:Landroid/widget/BookmarkView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectionChanged()V
    .locals 2

    .prologue
    const-string v0, "BookmarkView"

    const-string v1, "BounceGallery selection changed."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/BookmarkView$1;->this$0:Landroid/widget/BookmarkView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/BookmarkView;->refreshInfo(Z)V

    iget-object v0, p0, Landroid/widget/BookmarkView$1;->this$0:Landroid/widget/BookmarkView;

    #calls: Landroid/widget/BookmarkView;->refreshIndicators()V
    invoke-static {v0}, Landroid/widget/BookmarkView;->access$000(Landroid/widget/BookmarkView;)V

    return-void
.end method
