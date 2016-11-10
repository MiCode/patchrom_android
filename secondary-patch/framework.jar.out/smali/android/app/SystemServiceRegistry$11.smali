.class final Landroid/app/SystemServiceRegistry$11;
.super Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher",
        "<",
        "Landroid/net/ConnectivityManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .local v1, "service":Landroid/net/IConnectivityManager;
    new-instance v2, Landroid/net/ConnectivityManager;

    invoke-direct {v2, p1, v1}, Landroid/net/ConnectivityManager;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$11;->createService(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method
