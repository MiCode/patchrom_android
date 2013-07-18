.class public Landroid/webkit/NotificationPermissions;
.super Ljava/lang/Object;
.source "NotificationPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/NotificationPermissions$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/webkit/NotificationPermissions;
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getNotificationPermissions()Landroid/webkit/NotificationPermissions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearAll()V
    .locals 0

    .prologue
    return-void
.end method
