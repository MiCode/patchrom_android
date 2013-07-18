.class public Lcom/android/internal/policy/impl/keyguard/MediatekZeroTopPaddingTextView;
.super Landroid/widget/TextView;
.source "MediatekZeroTopPaddingTextView.java"


# static fields
.field private static final BOLD_FONT_BOTTOM_PADDING_RATIO:F = 0.208f

.field private static final BOLD_FONT_PADDING_RATIO:F = 0.208f

.field private static final NORMAL_FONT_BOTTOM_PADDING_RATIO:F = 0.25f

.field private static final NORMAL_FONT_PADDING_RATIO:F = 0.328f

.field private static final SAN_SERIF_BOLD:Landroid/graphics/Typeface;


# instance fields
.field private mPaddingRight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "san-serif"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MediatekZeroTopPaddingTextView;->SAN_SERIF_BOLD:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekZeroTopPaddingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekZeroTopPaddingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekZeroTopPaddingTextView;->mPaddingRight:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekZeroTopPaddingTextView;->setIncludeFontPadding(Z)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekZeroTopPaddingTextView;->updatePadding()V

    return-void
.end method


# virtual methods
.method public setPaddingRight(I)V
    .locals 0
    .parameter "padding"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekZeroTopPaddingTextView;->mPaddingRight:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekZeroTopPaddingTextView;->updatePadding()V

    return-void
.end method

.method public updatePadding()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v1, 0x3ea7ef9e

    .local v1, paddingRatio:F
    const/high16 v0, 0x3e80

    .local v0, bottomPaddingRatio:F
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekZeroTopPaddingTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/MediatekZeroTopPaddingTextView;->SAN_SERIF_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x3e54fdf4

    const v0, 0x3e54fdf4

    :cond_0
    neg-float v2, v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekZeroTopPaddingTextView;->getTextSize()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekZeroTopPaddingTextView;->mPaddingRight:I

    invoke-virtual {p0, v4, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/MediatekZeroTopPaddingTextView;->setPadding(IIII)V

    return-void
.end method
