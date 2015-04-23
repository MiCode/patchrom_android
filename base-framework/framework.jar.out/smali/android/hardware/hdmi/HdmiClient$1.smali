.class final Landroid/hardware/hdmi/HdmiClient$1;
.super Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;
.source "HdmiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiClient$1;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlStateChanged(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .prologue
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient$1;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;->onControlStateChanged(ZI)V

    return-void
.end method

.method public onReceived(II[BZ)V
    .locals 1
    .param p1, "srcAddress"    # I
    .param p2, "destAddress"    # I
    .param p3, "params"    # [B
    .param p4, "hasVendorId"    # Z

    .prologue
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient$1;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;->onReceived(II[BZ)V

    return-void
.end method
