.class Landroid/widget/TextView$HandleView$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$HandleView;->showActionPopupWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$HandleView;


# direct methods
.method constructor <init>(Landroid/widget/TextView$HandleView;)V
    .locals 0
    .parameter

    .prologue
    .line 10532
    iput-object p1, p0, Landroid/widget/TextView$HandleView$1;->this$1:Landroid/widget/TextView$HandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 10534
    iget-object v0, p0, Landroid/widget/TextView$HandleView$1;->this$1:Landroid/widget/TextView$HandleView;

    iget-object v0, v0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$ActionPopupWindow;->show()V

    .line 10535
    return-void
.end method
