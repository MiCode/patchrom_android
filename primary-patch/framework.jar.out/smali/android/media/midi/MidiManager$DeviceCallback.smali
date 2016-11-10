.class public Landroid/media/midi/MidiManager$DeviceCallback;
.super Ljava/lang/Object;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .prologue
    return-void
.end method

.method public onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .prologue
    return-void
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    .locals 0
    .param p1, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .prologue
    return-void
.end method
