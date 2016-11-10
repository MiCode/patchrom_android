.class Lcom/android/server/display/OverlayDisplayWindow$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OverlayDisplayWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$4;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$4;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    # -= operator for: Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F
    invoke-static {v0, p3}, Lcom/android/server/display/OverlayDisplayWindow;->access$724(Lcom/android/server/display/OverlayDisplayWindow;F)F

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$4;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    # -= operator for: Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F
    invoke-static {v0, p4}, Lcom/android/server/display/OverlayDisplayWindow;->access$824(Lcom/android/server/display/OverlayDisplayWindow;F)F

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$4;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    const/4 v0, 0x1

    return v0
.end method
