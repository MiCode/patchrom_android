.class final Landroid/widget/GridLayout$5;
.super Landroid/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 1
    .parameter "view"
    .parameter "viewSize"
    .parameter "mode"

    .prologue
    shr-int/lit8 v0, p2, 0x1

    return v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 1
    .parameter "view"
    .parameter "cellDelta"

    .prologue
    shr-int/lit8 v0, p2, 0x1

    return v0
.end method
