.class final Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup$Closure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValueAndSize"
.end annotation


# instance fields
.field public size:I

.field public value:J


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V
    .locals 4
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p2, Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/renderscript/Allocation;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2, p1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    :cond_0
    :goto_0
    return-void

    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    :goto_1
    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_0

    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_5

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v3, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_0

    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_0

    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Double;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v3, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_0
.end method
