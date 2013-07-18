.class Lcom/android/server/accessibility/ScreenMagnifier$Viewport$3;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier$Viewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/WindowInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$Viewport;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$3;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    iget v0, p1, Landroid/view/WindowInfo;->layer:I

    iget v1, p2, Landroid/view/WindowInfo;->layer:I

    if-eq v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowInfo;->layer:I

    iget v1, p1, Landroid/view/WindowInfo;->layer:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_1

    iget-object v0, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p1, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_2

    iget-object v0, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p1, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-eq v0, v1, :cond_3

    iget-object v0, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p1, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p1, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_4

    iget-object v0, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p1, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    check-cast p1, Landroid/view/WindowInfo;

    .end local p1
    check-cast p2, Landroid/view/WindowInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$3;->compare(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)I

    move-result v0

    return v0
.end method
