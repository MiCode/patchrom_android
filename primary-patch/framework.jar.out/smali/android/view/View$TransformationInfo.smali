.class Landroid/view/View$TransformationInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransformationInfo"
.end annotation


# instance fields
.field mAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mInverseMatrix:Landroid/graphics/Matrix;

.field private final mMatrix:Landroid/graphics/Matrix;

.field mTransitionAlpha:F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    iput v1, p0, Landroid/view/View$TransformationInfo;->mAlpha:F

    iput v1, p0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    return-void
.end method

.method static synthetic access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    iget-object v0, p0, Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    iget-object v0, p0, Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    iput-object p1, p0, Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;

    return-object p1
.end method
