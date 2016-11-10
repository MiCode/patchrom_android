.class Landroid/app/trust/TrustManager$2;
.super Landroid/os/Handler;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/trust/TrustManager;


# direct methods
.method constructor <init>(Landroid/app/trust/TrustManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/app/trust/TrustManager$2;->this$0:Landroid/app/trust/TrustManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "initiatedByUser"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "flags":I
    :goto_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/TrustManager$TrustListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v0}, Landroid/app/trust/TrustManager$TrustListener;->onTrustChanged(ZII)V

    goto :goto_0

    .end local v0    # "flags":I
    :cond_1
    move v0, v2

    goto :goto_1

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/TrustManager$TrustListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    :goto_2
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v3, v2}, Landroid/app/trust/TrustManager$TrustListener;->onTrustManagedChanged(ZI)V

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
