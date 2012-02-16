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
    .line 2450
    invoke-direct {p0}, Landroid/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;I)I
    .locals 3
    .parameter "view"
    .parameter "viewSize"

    .prologue
    const/high16 v1, -0x8000

    .line 2452
    if-nez p1, :cond_0

    .line 2456
    :goto_0
    return v1

    .line 2455
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 2456
    .local v0, baseline:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move v0, v1

    .end local v0           #baseline:I
    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public getBounds()Landroid/widget/GridLayout$Bounds;
    .locals 1

    .prologue
    .line 2461
    new-instance v0, Landroid/widget/GridLayout$5$1;

    invoke-direct {v0, p0}, Landroid/widget/GridLayout$5$1;-><init>(Landroid/widget/GridLayout$5;)V

    return-object v0
.end method
