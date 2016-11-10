.class final Landroid/graphics/drawable/RippleBackground$1;
.super Landroid/graphics/drawable/RippleBackground$BackgroundProperty;
.source "RippleBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleBackground$BackgroundProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/RippleBackground;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Landroid/graphics/drawable/RippleBackground;

    .prologue
    # getter for: Landroid/graphics/drawable/RippleBackground;->mOpacity:F
    invoke-static {p1}, Landroid/graphics/drawable/RippleBackground;->access$000(Landroid/graphics/drawable/RippleBackground;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p1, Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleBackground$1;->get(Landroid/graphics/drawable/RippleBackground;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroid/graphics/drawable/RippleBackground;F)V
    .locals 0
    .param p1, "object"    # Landroid/graphics/drawable/RippleBackground;
    .param p2, "value"    # F

    .prologue
    # setter for: Landroid/graphics/drawable/RippleBackground;->mOpacity:F
    invoke-static {p1, p2}, Landroid/graphics/drawable/RippleBackground;->access$002(Landroid/graphics/drawable/RippleBackground;F)F

    invoke-virtual {p1}, Landroid/graphics/drawable/RippleBackground;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    check-cast p1, Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleBackground$1;->setValue(Landroid/graphics/drawable/RippleBackground;F)V

    return-void
.end method
