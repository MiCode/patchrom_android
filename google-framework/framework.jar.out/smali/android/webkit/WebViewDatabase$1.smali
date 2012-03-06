.class Landroid/webkit/WebViewDatabase$1;
.super Ljava/lang/Thread;
.source "WebViewDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewDatabase;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewDatabase;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewDatabase;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Landroid/webkit/WebViewDatabase$1;->this$0:Landroid/webkit/WebViewDatabase;

    iput-object p2, p0, Landroid/webkit/WebViewDatabase$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Landroid/webkit/WebViewDatabase$1;->this$0:Landroid/webkit/WebViewDatabase;

    iget-object v1, p0, Landroid/webkit/WebViewDatabase$1;->val$context:Landroid/content/Context;

    #calls: Landroid/webkit/WebViewDatabase;->init(Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewDatabase;->access$000(Landroid/webkit/WebViewDatabase;Landroid/content/Context;)V

    .line 191
    return-void
.end method
