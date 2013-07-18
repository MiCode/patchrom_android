.class Landroid/widget/BookmarkAdapter$1;
.super Ljava/lang/Object;
.source "BookmarkAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/BookmarkAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BookmarkAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/widget/BookmarkAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/BookmarkAdapter$1;->this$0:Landroid/widget/BookmarkAdapter;

    iput p2, p0, Landroid/widget/BookmarkAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    iget-object v0, p0, Landroid/widget/BookmarkAdapter$1;->this$0:Landroid/widget/BookmarkAdapter;

    iget v1, p0, Landroid/widget/BookmarkAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/BookmarkAdapter;->remove(I)Ljava/lang/Object;

    return-void
.end method
