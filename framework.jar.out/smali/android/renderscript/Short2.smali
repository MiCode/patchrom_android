.class public Landroid/renderscript/Short2;
.super Ljava/lang/Object;
.source "Short2.java"


# instance fields
.field public x:S

.field public y:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(SS)V
    .locals 0
    .param p1, "initX"    # S
    .param p2, "initY"    # S

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Landroid/renderscript/Short2;->x:S

    iput-short p2, p0, Landroid/renderscript/Short2;->y:S

    return-void
.end method
