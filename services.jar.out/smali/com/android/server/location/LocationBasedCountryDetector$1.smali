.class Lcom/android/server/location/LocationBasedCountryDetector$1;
.super Ljava/lang/Object;
.source "LocationBasedCountryDetector.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationBasedCountryDetector;->detectCountry()Landroid/location/Country;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationBasedCountryDetector;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationBasedCountryDetector;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/location/LocationBasedCountryDetector$1;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector$1;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    invoke-virtual {v0}, Lcom/android/server/location/LocationBasedCountryDetector;->stop()V

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector$1;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    # invokes: Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/android/server/location/LocationBasedCountryDetector;->access$000(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method
