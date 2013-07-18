.class Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;
.super Ljava/lang/Object;
.source "NumPadKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/NumPadKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/NumPadKey;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "thisView"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    iget v1, v1, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextViewResId:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextViewResId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    check-cast v0, Landroid/widget/TextView;

    .end local v0           #v:Landroid/view/View;
    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->mDigit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NumPadKey$1;->this$0:Lcom/android/internal/policy/impl/keyguard/NumPadKey;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/NumPadKey;->doHapticKeyClick()V

    return-void
.end method
