.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$1;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->post(Ljava/lang/CharSequence;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

.field final synthetic val$data:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$1;->val$data:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->mMessages:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->access$000(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$1;->val$data:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->mMessages:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->access$000(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, last:I
    if-lez v0, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->mMessages:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->access$000(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;

    .local v3, oldData:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;
    iget-object v2, v3, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;->text:Ljava/lang/CharSequence;

    .local v2, lastText:Ljava/lang/CharSequence;
    iget v1, v3, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;->icon:I

    .end local v3           #oldData:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;
    .local v1, lastIcon:I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->access$200(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->access$200(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .end local v1           #lastIcon:I
    .end local v2           #lastText:Ljava/lang/CharSequence;
    :cond_0
    new-instance v4, Llibcore/util/MutableInt;

    invoke-direct {v4, v7}, Llibcore/util/MutableInt;-><init>(I)V

    .local v4, tmpIcon:Llibcore/util/MutableInt;
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$1;->this$1:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2       #lastText:Ljava/lang/CharSequence;
    iget v1, v4, Llibcore/util/MutableInt;->value:I

    .restart local v1       #lastIcon:I
    goto :goto_0
.end method
