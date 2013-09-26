.class Landroid/webkit/CookieManagerClassic$1;
.super Landroid/os/AsyncTask;
.source "CookieManagerClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/CookieManagerClassic;->removeSessionCookie()V
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
.field final synthetic this$0:Landroid/webkit/CookieManagerClassic;


# direct methods
.method constructor <init>(Landroid/webkit/CookieManagerClassic;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/CookieManagerClassic$1;->this$0:Landroid/webkit/CookieManagerClassic;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/webkit/CookieManagerClassic$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "none"

    .prologue
    #calls: Landroid/webkit/CookieManagerClassic;->nativeRemoveSessionCookie()V
    invoke-static {}, Landroid/webkit/CookieManagerClassic;->access$000()V

    iget-object v0, p0, Landroid/webkit/CookieManagerClassic$1;->this$0:Landroid/webkit/CookieManagerClassic;

    #calls: Landroid/webkit/CookieManagerClassic;->signalCookieOperationsComplete()V
    invoke-static {v0}, Landroid/webkit/CookieManagerClassic;->access$100(Landroid/webkit/CookieManagerClassic;)V

    const/4 v0, 0x0

    return-object v0
.end method
