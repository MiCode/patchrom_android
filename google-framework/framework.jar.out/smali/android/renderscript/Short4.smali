.class public Landroid/renderscript/Short4;
.super Ljava/lang/Object;
.source "Short4.java"


# instance fields
.field public w:S

.field public x:S

.field public y:S

.field public z:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(SSSS)V
    .locals 0
    .parameter "initX"
    .parameter "initY"
    .parameter "initZ"
    .parameter "initW"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-short p1, p0, Landroid/renderscript/Short4;->x:S

    .line 33
    iput-short p2, p0, Landroid/renderscript/Short4;->y:S

    .line 34
    iput-short p3, p0, Landroid/renderscript/Short4;->z:S

    .line 35
    iput-short p4, p0, Landroid/renderscript/Short4;->w:S

    .line 36
    return-void
.end method
