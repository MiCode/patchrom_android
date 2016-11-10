.class final Landroid/app/SystemServiceRegistry$12;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Landroid/location/CountryDetector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService()Landroid/location/CountryDetector;
    .locals 3

    .prologue
    const-string v1, "country_detector"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/location/CountryDetector;

    invoke-static {v0}, Landroid/location/ICountryDetector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ICountryDetector;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/location/CountryDetector;-><init>(Landroid/location/ICountryDetector;)V

    return-object v1
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$12;->createService()Landroid/location/CountryDetector;

    move-result-object v0

    return-object v0
.end method
