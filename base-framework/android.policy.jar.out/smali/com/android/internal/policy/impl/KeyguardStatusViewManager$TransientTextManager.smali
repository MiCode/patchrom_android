.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransientTextManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;
    }
.end annotation


# instance fields
.field private mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Landroid/widget/TextView;)V
    .locals 2
    .parameter
    .parameter "textView"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->mMessages:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->mMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method post(Ljava/lang/CharSequence;IJ)V
    .locals 3
    .parameter "message"
    .parameter "icon"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;Ljava/lang/CharSequence;I)V

    .local v0, data:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$1;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager$Data;)V

    invoke-virtual {v1, v2, p3, p4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
