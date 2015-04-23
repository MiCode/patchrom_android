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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(SSSS)V
    .locals 0
    .param p1, "initX"    # S
    .param p2, "initY"    # S
    .param p3, "initZ"    # S
    .param p4, "initW"    # S

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Landroid/renderscript/Short4;->x:S

    iput-short p2, p0, Landroid/renderscript/Short4;->y:S

    iput-short p3, p0, Landroid/renderscript/Short4;->z:S

    iput-short p4, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method
