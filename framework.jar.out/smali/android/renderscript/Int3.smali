.class public Landroid/renderscript/Int3;
.super Ljava/lang/Object;
.source "Int3.java"


# instance fields
.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "initX"    # I
    .param p2, "initY"    # I
    .param p3, "initZ"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Int3;->x:I

    iput p2, p0, Landroid/renderscript/Int3;->y:I

    iput p3, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method
