.class Landroid/webkit/AutoCompletePopup$1;
.super Landroid/os/Handler;
.source "AutoCompletePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/AutoCompletePopup;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$WebViewInputConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/AutoCompletePopup;


# direct methods
.method constructor <init>(Landroid/webkit/AutoCompletePopup;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/AutoCompletePopup$1;->this$0:Landroid/webkit/AutoCompletePopup;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup$1;->this$0:Landroid/webkit/AutoCompletePopup;

    #getter for: Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/AutoCompletePopup;->access$100(Landroid/webkit/AutoCompletePopup;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup$1;->this$0:Landroid/webkit/AutoCompletePopup;

    #getter for: Landroid/webkit/AutoCompletePopup;->mQueryId:I
    invoke-static {v1}, Landroid/webkit/AutoCompletePopup;->access$000(Landroid/webkit/AutoCompletePopup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->autoFillForm(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
