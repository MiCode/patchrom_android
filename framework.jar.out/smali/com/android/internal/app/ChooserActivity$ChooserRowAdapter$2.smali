.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->bindViewHolder(I[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field final synthetic val$itemIndex:I


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->val$itemIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->val$itemIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->startSelected(IZZ)V

    return-void
.end method
