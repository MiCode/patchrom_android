.class Lcom/android/internal/app/PlatLogoActivity$4;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;

.field final synthetic val$im:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$4;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iput-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$4;->val$im:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$4;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v0, v0, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$4;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$4;->val$im:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/PlatLogoActivity;->showMarshmallow(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$4;->val$im:Landroid/view/View;

    new-instance v1, Lcom/android/internal/app/PlatLogoActivity$4$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/PlatLogoActivity$4$1;-><init>(Lcom/android/internal/app/PlatLogoActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$4;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    return-void
.end method
