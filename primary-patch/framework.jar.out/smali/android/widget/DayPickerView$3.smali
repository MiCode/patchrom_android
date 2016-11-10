.class Landroid/widget/DayPickerView$3;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DayPickerView;


# direct methods
.method constructor <init>(Landroid/widget/DayPickerView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v3, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    # getter for: Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Landroid/widget/DayPickerView;->access$100(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v3

    if-ne p1, v3, :cond_1

    const/4 v1, -0x1

    .local v1, "direction":I
    :goto_0
    iget-object v3, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    # getter for: Landroid/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v3}, Landroid/widget/DayPickerView;->access$400(Landroid/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .local v0, "animate":Z
    :goto_1
    iget-object v3, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    # getter for: Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;
    invoke-static {v3}, Landroid/widget/DayPickerView;->access$500(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v3

    add-int v2, v3, v1

    .local v2, "nextItem":I
    iget-object v3, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    # getter for: Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;
    invoke-static {v3}, Landroid/widget/DayPickerView;->access$500(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    .end local v0    # "animate":Z
    .end local v1    # "direction":I
    .end local v2    # "nextItem":I
    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    # getter for: Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Landroid/widget/DayPickerView;->access$200(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v3

    if-ne p1, v3, :cond_0

    const/4 v1, 0x1

    .restart local v1    # "direction":I
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
