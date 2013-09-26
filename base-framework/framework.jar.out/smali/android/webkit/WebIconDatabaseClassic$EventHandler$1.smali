.class Landroid/webkit/WebIconDatabaseClassic$EventHandler$1;
.super Landroid/os/Handler;
.source "WebIconDatabaseClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebIconDatabaseClassic$EventHandler;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebIconDatabaseClassic$EventHandler;


# direct methods
.method constructor <init>(Landroid/webkit/WebIconDatabaseClassic$EventHandler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebIconDatabaseClassic$EventHandler$1;->this$0:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebIconDatabaseClassic;->nativeOpen(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/webkit/WebIconDatabaseClassic;->access$100(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    #calls: Landroid/webkit/WebIconDatabaseClassic;->nativeClose()V
    invoke-static {}, Landroid/webkit/WebIconDatabaseClassic;->access$200()V

    goto :goto_0

    :pswitch_2
    #calls: Landroid/webkit/WebIconDatabaseClassic;->nativeRemoveAllIcons()V
    invoke-static {}, Landroid/webkit/WebIconDatabaseClassic;->access$300()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebIconDatabase$IconListener;

    .local v0, l:Landroid/webkit/WebIconDatabase$IconListener;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/WebIconDatabaseClassic$EventHandler$1;->this$0:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    #calls: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->requestIconAndSendResult(Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    invoke-static {v2, v1, v0}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$400(Landroid/webkit/WebIconDatabaseClassic$EventHandler;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    goto :goto_0

    .end local v0           #l:Landroid/webkit/WebIconDatabase$IconListener;
    .end local v1           #url:Ljava/lang/String;
    :pswitch_4
    iget-object v2, p0, Landroid/webkit/WebIconDatabaseClassic$EventHandler$1;->this$0:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    #calls: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->bulkRequestIcons(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$500(Landroid/webkit/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebIconDatabaseClassic;->nativeRetainIconForPageUrl(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/webkit/WebIconDatabaseClassic;->access$600(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebIconDatabaseClassic;->nativeReleaseIconForPageUrl(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/webkit/WebIconDatabaseClassic;->access$700(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
