.class Lcom/android/server/TwilightService$3;
.super Ljava/lang/Object;
.source "TwilightService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TwilightService;


# direct methods
.method constructor <init>(Lcom/android/server/TwilightService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/TwilightService$3;->this$0:Lcom/android/server/TwilightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    iget-object v0, p0, Lcom/android/server/TwilightService$3;->this$0:Lcom/android/server/TwilightService;

    #getter for: Lcom/android/server/TwilightService;->mLocationHandler:Lcom/android/server/TwilightService$LocationHandler;
    invoke-static {v0}, Lcom/android/server/TwilightService;->access$800(Lcom/android/server/TwilightService;)Lcom/android/server/TwilightService$LocationHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/TwilightService$LocationHandler;->processNewLocation(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    return-void
.end method
