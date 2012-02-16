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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "initX"
    .parameter "initY"
    .parameter "initZ"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/renderscript/Int3;->x:I

    .line 33
    iput p2, p0, Landroid/renderscript/Int3;->y:I

    .line 34
    iput p3, p0, Landroid/renderscript/Int3;->z:I

    .line 35
    return-void
.end method
