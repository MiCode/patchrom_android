.class Landroid/webkit/WebViewClassic$RequestDataListOptions;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestDataListOptions"
.end annotation


# instance fields
.field private mOptions:[Ljava/lang/String;

.field private mUpdateMessage:Landroid/os/Message;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;[Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "array"
    .parameter "msg"

    .prologue
    iput-object p1, p0, Landroid/webkit/WebViewClassic$RequestDataListOptions;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/webkit/WebViewClassic$RequestDataListOptions;->mOptions:[Ljava/lang/String;

    iput-object p3, p0, Landroid/webkit/WebViewClassic$RequestDataListOptions;->mUpdateMessage:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$RequestDataListOptions;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10900e9

    iget-object v3, p0, Landroid/webkit/WebViewClassic$RequestDataListOptions;->mOptions:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/webkit/WebViewClassic$RequestDataListOptions;->mUpdateMessage:Landroid/os/Message;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$RequestDataListOptions;->mUpdateMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
