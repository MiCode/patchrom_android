.class Landroid/widget/Editor$AnimatePopupWindow;
.super Landroid/widget/PopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatePopupWindow"
.end annotation


# instance fields
.field private mDismissing:Z

.field private mFader:Landroid/widget/Editor$Fader;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 2638
    iput-object p1, p0, Landroid/widget/Editor$AnimatePopupWindow;->this$0:Landroid/widget/Editor;

    .line 2639
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2636
    iput-boolean v1, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    .line 2640
    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    if-nez v0, :cond_0

    .line 2641
    const v0, 0x110c0004

    invoke-virtual {p0, v0}, Landroid/widget/Editor$AnimatePopupWindow;->setAnimationStyle(I)V

    .line 2643
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/widget/Editor;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    .line 2645
    iput-object p1, p0, Landroid/widget/Editor$AnimatePopupWindow;->this$0:Landroid/widget/Editor;

    .line 2646
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2636
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    .line 2647
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/content/Context;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Landroid/widget/Editor$1;

    .prologue
    .line 2632
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$AnimatePopupWindow;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 2672
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    if-eqz v0, :cond_0

    .line 2687
    :goto_0
    return-void

    .line 2676
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    if-eqz v0, :cond_1

    .line 2677
    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    invoke-interface {v0}, Landroid/widget/Editor$Fader;->cancelAnimations()V

    .line 2680
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    if-eqz v0, :cond_2

    .line 2681
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    .line 2682
    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    invoke-interface {v0}, Landroid/widget/Editor$Fader;->fadeOut()V

    goto :goto_0

    .line 2684
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    .line 2685
    invoke-virtual {p0}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public isDismissing()Z
    .locals 1

    .prologue
    .line 2690
    iget-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    return v0
.end method

.method public setFader(Landroid/widget/Editor$Fader;)V
    .locals 0
    .param p1, "fader"    # Landroid/widget/Editor$Fader;

    .prologue
    .line 2694
    iput-object p1, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    .line 2695
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 2651
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    .line 2653
    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    if-eqz v0, :cond_0

    .line 2654
    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    invoke-interface {v0}, Landroid/widget/Editor$Fader;->cancelAnimations()V

    .line 2657
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2659
    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    if-eqz v0, :cond_1

    .line 2660
    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    invoke-interface {v0, p3, p4}, Landroid/widget/Editor$Fader;->fadeIn(II)V

    .line 2662
    :cond_1
    return-void
.end method

.method public update(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2666
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    .line 2668
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 2669
    return-void
.end method
