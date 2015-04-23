.class Lcom/android/internal/app/PlatLogoActivity$2;
.super Landroid/graphics/drawable/Drawable;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;

.field final synthetic val$M:Landroid/graphics/drawable/Drawable;

.field final synthetic val$bgPaint:Landroid/graphics/Paint;

.field final synthetic val$fgPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iput-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$2;->val$bgPaint:Landroid/graphics/Paint;

    iput-object p3, p0, Lcom/android/internal/app/PlatLogoActivity$2;->val$fgPaint:Landroid/graphics/Paint;

    iput-object p4, p0, Lcom/android/internal/app/PlatLogoActivity$2;->val$M:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v9, v0, v2

    .local v9, "r":F
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$2;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v9, v9, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    mul-float v3, v2, v9

    mul-float v4, v2, v9

    const/high16 v5, 0x43070000    # 135.0f

    const/high16 v6, 0x43340000    # 180.0f

    iget-object v8, p0, Lcom/android/internal/app/PlatLogoActivity$2;->val$fgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$2;->val$M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$2;->val$M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    return-void
.end method
