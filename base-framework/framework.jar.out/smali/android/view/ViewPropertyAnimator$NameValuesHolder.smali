.class Landroid/view/ViewPropertyAnimator$NameValuesHolder;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValuesHolder"
.end annotation


# instance fields
.field mDeltaValue:F

.field mFromValue:F

.field mNameConstant:I


# direct methods
.method constructor <init>(IFF)V
    .locals 0
    .parameter "nameConstant"
    .parameter "fromValue"
    .parameter "deltaValue"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    iput p2, p0, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mFromValue:F

    iput p3, p0, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mDeltaValue:F

    return-void
.end method
