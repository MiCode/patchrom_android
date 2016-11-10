.class Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
.super Ljava/lang/Object;
.source "EpicenterTranslateClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/transition/EpicenterTranslateClipReveal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field lower:I

.field trans:F

.field upper:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .param p3, "trans"    # F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    iput p2, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    iput p3, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    return-void
.end method
