.class Landroid/webkit/ClientCertRequestHandler$3;
.super Ljava/lang/Object;
.source "ClientCertRequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/ClientCertRequestHandler;->setSslClientCertFromPKCS8([B[[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/ClientCertRequestHandler;

.field final synthetic val$chainBytes:[[B

.field final synthetic val$key:[B


# direct methods
.method constructor <init>(Landroid/webkit/ClientCertRequestHandler;[B[[B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/ClientCertRequestHandler$3;->this$0:Landroid/webkit/ClientCertRequestHandler;

    iput-object p2, p0, Landroid/webkit/ClientCertRequestHandler$3;->val$key:[B

    iput-object p3, p0, Landroid/webkit/ClientCertRequestHandler$3;->val$chainBytes:[[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/webkit/ClientCertRequestHandler$3;->this$0:Landroid/webkit/ClientCertRequestHandler;

    #getter for: Landroid/webkit/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v0}, Landroid/webkit/ClientCertRequestHandler;->access$100(Landroid/webkit/ClientCertRequestHandler;)Landroid/webkit/BrowserFrame;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/ClientCertRequestHandler$3;->this$0:Landroid/webkit/ClientCertRequestHandler;

    #getter for: Landroid/webkit/ClientCertRequestHandler;->mHandle:I
    invoke-static {v1}, Landroid/webkit/ClientCertRequestHandler;->access$000(Landroid/webkit/ClientCertRequestHandler;)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/ClientCertRequestHandler$3;->val$key:[B

    iget-object v3, p0, Landroid/webkit/ClientCertRequestHandler$3;->val$chainBytes:[[B

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(I[B[[B)V

    return-void
.end method
