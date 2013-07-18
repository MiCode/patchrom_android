.class Landroid/webkit/WebViewClassic$10;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Lcom/mediatek/common/webkit/IOnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic;->requestColorPicker(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/String;IILjava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value1"
    .parameter "value2"
    .parameter "obj"

    .prologue
    const-string v0, "colorPicker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p2}, Landroid/webkit/WebViewClassic;->selectColor(I)V

    :cond_0
    return-void
.end method
