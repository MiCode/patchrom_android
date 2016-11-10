.class public Landroid/graphics/NinePatch$InsetStruct;
.super Ljava/lang/Object;
.source "NinePatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/NinePatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsetStruct"
.end annotation


# instance fields
.field public final opticalRect:Landroid/graphics/Rect;

.field public final outlineAlpha:F

.field public final outlineRadius:F

.field public final outlineRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(IIIIIIIIFIF)V
    .locals 2
    .param p1, "opticalLeft"    # I
    .param p2, "opticalTop"    # I
    .param p3, "opticalRight"    # I
    .param p4, "opticalBottom"    # I
    .param p5, "outlineLeft"    # I
    .param p6, "outlineTop"    # I
    .param p7, "outlineRight"    # I
    .param p8, "outlineBottom"    # I
    .param p9, "outlineRadius"    # F
    .param p10, "outlineAlpha"    # I
    .param p11, "decodeScale"    # F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5, p6, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineRect:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p11, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p11}, Landroid/graphics/Rect;->scale(F)V

    iget-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p11}, Landroid/graphics/Rect;->scaleRoundIn(F)V

    :cond_0
    mul-float v0, p9, p11

    iput v0, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineRadius:F

    int-to-float v0, p10

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineAlpha:F

    return-void
.end method
