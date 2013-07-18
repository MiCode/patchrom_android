.class Landroid/webkit/WebViewDatabaseClassic$1;
.super Ljava/lang/Thread;
.source "WebViewDatabaseClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewDatabaseClassic;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewDatabaseClassic;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewDatabaseClassic;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebViewDatabaseClassic$1;->this$0:Landroid/webkit/WebViewDatabaseClassic;

    iput-object p2, p0, Landroid/webkit/WebViewDatabaseClassic$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewDatabaseClassic$1;->this$0:Landroid/webkit/WebViewDatabaseClassic;

    iget-object v1, p0, Landroid/webkit/WebViewDatabaseClassic$1;->val$context:Landroid/content/Context;

    #calls: Landroid/webkit/WebViewDatabaseClassic;->init(Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewDatabaseClassic;->access$000(Landroid/webkit/WebViewDatabaseClassic;Landroid/content/Context;)V

    return-void
.end method
