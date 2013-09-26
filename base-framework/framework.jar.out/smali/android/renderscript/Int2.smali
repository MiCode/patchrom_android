.class public Landroid/renderscript/Int2;
.super Ljava/lang/Object;
.source "Int2.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "initX"
    .parameter "initY"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Int2;->x:I

    iput p2, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method
