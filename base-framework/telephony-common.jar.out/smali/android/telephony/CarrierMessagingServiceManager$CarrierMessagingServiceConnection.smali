.class final Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;
.super Ljava/lang/Object;
.source "CarrierMessagingServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierMessagingServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarrierMessagingServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/CarrierMessagingServiceManager;


# direct methods
.method private constructor <init>(Landroid/telephony/CarrierMessagingServiceManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;->this$0:Landroid/telephony/CarrierMessagingServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/CarrierMessagingServiceManager;Landroid/telephony/CarrierMessagingServiceManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/telephony/CarrierMessagingServiceManager;
    .param p2, "x1"    # Landroid/telephony/CarrierMessagingServiceManager$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;-><init>(Landroid/telephony/CarrierMessagingServiceManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Landroid/telephony/CarrierMessagingServiceManager$CarrierMessagingServiceConnection;->this$0:Landroid/telephony/CarrierMessagingServiceManager;

    invoke-static {p2}, Landroid/service/carrier/ICarrierMessagingService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingService;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierMessagingServiceManager;->onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    return-void
.end method
