.class public Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;
.super Landroid/widget/LinearLayout;
.source "KeyguardLinearLayout.java"


# instance fields
.field mTopChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;->mTopChild:I

    return-void
.end method


# virtual methods
.method public setTopChild(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .local v0, top:I
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;->mTopChild:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;->invalidate()V

    return-void
.end method
