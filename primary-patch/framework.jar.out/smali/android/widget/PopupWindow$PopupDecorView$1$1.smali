.class Landroid/widget/PopupWindow$PopupDecorView$1$1;
.super Landroid/transition/Transition$EpicenterCallback;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow$PopupDecorView$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/widget/PopupWindow$PopupDecorView$1;

.field final synthetic val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow$PopupDecorView$1;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$1$1;->this$2:Landroid/widget/PopupWindow$PopupDecorView$1;

    iput-object p2, p0, Landroid/widget/PopupWindow$PopupDecorView$1$1;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$1$1;->val$epicenter:Landroid/graphics/Rect;

    return-object v0
.end method
