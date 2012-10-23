.class public Landroid/renderscript/Float2;
.super Ljava/lang/Object;
.source "Float2.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "initX"
    .parameter "initY"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Float2;->x:F

    iput p2, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method
