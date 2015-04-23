.class final Landroid/app/SystemServiceRegistry$9;
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
        "Landroid/hardware/hdmi/HdmiControlManager;",
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
.method public createService()Landroid/hardware/hdmi/HdmiControlManager;
    .locals 3

    .prologue
    const-string v1, "hdmi_control"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-static {v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/hdmi/HdmiControlManager;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    return-object v1
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$9;->createService()Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v0

    return-object v0
.end method
