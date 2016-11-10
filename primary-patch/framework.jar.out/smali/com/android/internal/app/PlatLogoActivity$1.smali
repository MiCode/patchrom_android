.class Lcom/android/internal/app/PlatLogoActivity$1;
.super Landroid/view/ViewOutlineProvider;
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

.field final synthetic val$dp:F


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;F)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iput p2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->val$dp:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/high16 v1, 0x41000000    # 8.0f

    iget v2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->val$dp:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .local v0, "pad":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
