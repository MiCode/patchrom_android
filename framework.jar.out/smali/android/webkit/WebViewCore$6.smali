.class Landroid/webkit/WebViewCore$6;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Landroid/webkit/NotificationPermissions$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore;->notificationPermissionsShowPrompt(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebViewCore$6;->this$0:Landroid/webkit/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Z)V
    .locals 3
    .parameter "origin"
    .parameter "allow"

    .prologue
    new-instance v0, Landroid/webkit/WebViewCore$NotificationPermissionsData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$NotificationPermissionsData;-><init>()V

    .local v0, localNotificationPermissionsData:Landroid/webkit/WebViewCore$NotificationPermissionsData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$NotificationPermissionsData;->mOrigin:Ljava/lang/String;

    iput-boolean p2, v0, Landroid/webkit/WebViewCore$NotificationPermissionsData;->mAllow:Z

    iget-object v1, p0, Landroid/webkit/WebViewCore$6;->this$0:Landroid/webkit/WebViewCore;

    const/16 v2, 0xe9

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public invokeEvent(Ljava/lang/String;I)V
    .locals 0
    .parameter "eventName"
    .parameter "pointer"

    .prologue
    return-void
.end method

.method public invokeNotificationID(II)V
    .locals 0
    .parameter "id"
    .parameter "counter"

    .prologue
    return-void
.end method
