.class public Landroid/renderscript/Long4;
.super Ljava/lang/Object;
.source "Long4.java"


# instance fields
.field public w:J

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 0
    .param p1, "initX"    # J
    .param p3, "initY"    # J
    .param p5, "initZ"    # J
    .param p7, "initW"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    iput-wide p3, p0, Landroid/renderscript/Long4;->y:J

    iput-wide p5, p0, Landroid/renderscript/Long4;->z:J

    iput-wide p7, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method
