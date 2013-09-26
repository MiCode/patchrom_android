.class final Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;
.super Landroid/view/View;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContentView"
.end annotation


# instance fields
.field private final mHighlightFrame:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080401

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;->mHighlightFrame:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;->mHighlightFrame:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mBounds:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->access$3900(Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;->mHighlightFrame:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->mAlpha:I
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->access$4000(Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow$ContentView;->mHighlightFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
