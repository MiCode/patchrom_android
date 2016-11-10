.class final Landroid/graphics/drawable/RippleForeground$2;
.super Landroid/util/FloatProperty;
.source "RippleForeground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleForeground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Landroid/graphics/drawable/RippleForeground;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/RippleForeground;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Landroid/graphics/drawable/RippleForeground;

    .prologue
    # getter for: Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F
    invoke-static {p1}, Landroid/graphics/drawable/RippleForeground;->access$100(Landroid/graphics/drawable/RippleForeground;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p1, Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleForeground$2;->get(Landroid/graphics/drawable/RippleForeground;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroid/graphics/drawable/RippleForeground;F)V
    .locals 0
    .param p1, "object"    # Landroid/graphics/drawable/RippleForeground;
    .param p2, "value"    # F

    .prologue
    # setter for: Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F
    invoke-static {p1, p2}, Landroid/graphics/drawable/RippleForeground;->access$102(Landroid/graphics/drawable/RippleForeground;F)F

    invoke-virtual {p1}, Landroid/graphics/drawable/RippleForeground;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    check-cast p1, Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleForeground$2;->setValue(Landroid/graphics/drawable/RippleForeground;F)V

    return-void
.end method
