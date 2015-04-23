.class public Landroid/renderscript/Byte3;
.super Ljava/lang/Object;
.source "Byte3.java"


# instance fields
.field public x:B

.field public y:B

.field public z:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BBB)V
    .locals 0
    .param p1, "initX"    # B
    .param p2, "initY"    # B
    .param p3, "initZ"    # B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/renderscript/Byte3;->x:B

    iput-byte p2, p0, Landroid/renderscript/Byte3;->y:B

    iput-byte p3, p0, Landroid/renderscript/Byte3;->z:B

    return-void
.end method
