.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;
.super Landroid/database/DataSetObserver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field final synthetic val$this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->val$this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
