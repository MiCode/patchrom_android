.class public abstract Landroid/service/carrier/CarrierService;
.super Landroid/app/Service;
.source "CarrierService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/CarrierService$1;,
        Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;
    }
.end annotation


# static fields
.field public static final CARRIER_SERVICE_INTERFACE:Ljava/lang/String; = "android.service.carrier.CarrierService"

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private final mStubWrapper:Landroid/service/carrier/ICarrierService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;-><init>(Landroid/service/carrier/CarrierService;Landroid/service/carrier/CarrierService$1;)V

    iput-object v0, p0, Landroid/service/carrier/CarrierService;->mStubWrapper:Landroid/service/carrier/ICarrierService$Stub;

    sget-object v0, Landroid/service/carrier/CarrierService;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v0, :cond_0

    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    sput-object v0, Landroid/service/carrier/CarrierService;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    :cond_0
    return-void
.end method


# virtual methods
.method public final notifyCarrierNetworkChange(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    :try_start_0
    sget-object v0, Landroid/service/carrier/CarrierService;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/carrier/CarrierService;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCarrierNetworkChange(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Landroid/service/carrier/CarrierService;->mStubWrapper:Landroid/service/carrier/ICarrierService$Stub;

    return-object v0
.end method

.method public abstract onLoadConfig(Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;
.end method
