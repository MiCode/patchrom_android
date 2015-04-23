.class public final Landroid/renderscript/Script$InvokeID;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvokeID"
.end annotation


# instance fields
.field mScript:Landroid/renderscript/Script;

.field mSlot:I


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "s"    # Landroid/renderscript/Script;
    .param p5, "slot"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object p4, p0, Landroid/renderscript/Script$InvokeID;->mScript:Landroid/renderscript/Script;

    iput p5, p0, Landroid/renderscript/Script$InvokeID;->mSlot:I

    return-void
.end method
