.class final Landroid/widget/Utils$1;
.super Landroid/os/Handler;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Utils;->onDetachedFromWindowClearUp(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .local v0, onDetachedView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/Utils;->hasInLancher(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/widget/Utils;->getWidgetHostView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .local v1, viewParent:Landroid/view/ViewGroup;
    invoke-static {v1}, Landroid/widget/Utils;->clearView(Landroid/view/View;)V

    const-string v2, "Utils"

    const-string v3, "clearView imageView"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #onDetachedView:Landroid/view/View;
    .end local v1           #viewParent:Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .restart local v0       #onDetachedView:Landroid/view/View;
    :cond_1
    const-string v2, "Utils"

    const-string v3, "no Remove imageView"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
