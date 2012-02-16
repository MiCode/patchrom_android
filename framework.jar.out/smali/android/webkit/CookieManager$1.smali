.class Landroid/webkit/CookieManager$1;
.super Landroid/os/AsyncTask;
.source "CookieManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/CookieManager;->removeSessionCookie()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/CookieManager;


# direct methods
.method constructor <init>(Landroid/webkit/CookieManager;)V
    .locals 0
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Landroid/webkit/CookieManager$1;->this$0:Landroid/webkit/CookieManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 612
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/webkit/CookieManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "none"

    .prologue
    .line 614
    #calls: Landroid/webkit/CookieManager;->nativeRemoveSessionCookie()V
    invoke-static {}, Landroid/webkit/CookieManager;->access$100()V

    .line 615
    iget-object v0, p0, Landroid/webkit/CookieManager$1;->this$0:Landroid/webkit/CookieManager;

    #calls: Landroid/webkit/CookieManager;->signalCookieOperationsComplete()V
    invoke-static {v0}, Landroid/webkit/CookieManager;->access$200(Landroid/webkit/CookieManager;)V

    .line 616
    const/4 v0, 0x0

    return-object v0
.end method
