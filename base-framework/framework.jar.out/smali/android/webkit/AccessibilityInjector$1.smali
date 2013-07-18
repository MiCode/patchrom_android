.class Landroid/webkit/AccessibilityInjector$1;
.super Ljava/lang/Object;
.source "AccessibilityInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/AccessibilityInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/AccessibilityInjector;


# direct methods
.method constructor <init>(Landroid/webkit/AccessibilityInjector;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/AccessibilityInjector$1;->this$0:Landroid/webkit/AccessibilityInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/webkit/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/webkit/AccessibilityInjector;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/AccessibilityInjector$1;->this$0:Landroid/webkit/AccessibilityInjector;

    #getter for: Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/AccessibilityInjector;->access$200(Landroid/webkit/AccessibilityInjector;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Received callback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$1;->this$0:Landroid/webkit/AccessibilityInjector;

    #calls: Landroid/webkit/AccessibilityInjector;->injectJavaScript()V
    invoke-static {v0}, Landroid/webkit/AccessibilityInjector;->access$300(Landroid/webkit/AccessibilityInjector;)V

    return-void
.end method
