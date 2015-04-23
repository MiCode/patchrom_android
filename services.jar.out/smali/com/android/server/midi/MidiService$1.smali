.class Lcom/android/server/midi/MidiService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method constructor <init>(Lcom/android/server/midi/MidiService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/midi/MidiService$1;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/midi/MidiService$1;->this$0:Lcom/android/server/midi/MidiService;

    # invokes: Lcom/android/server/midi/MidiService;->addPackageDeviceServers(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/midi/MidiService;->access$000(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/midi/MidiService$1;->this$0:Lcom/android/server/midi/MidiService;

    # invokes: Lcom/android/server/midi/MidiService;->removePackageDeviceServers(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/midi/MidiService;->access$100(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/midi/MidiService$1;->this$0:Lcom/android/server/midi/MidiService;

    # invokes: Lcom/android/server/midi/MidiService;->addPackageDeviceServers(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/midi/MidiService;->access$000(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/midi/MidiService$1;->this$0:Lcom/android/server/midi/MidiService;

    # invokes: Lcom/android/server/midi/MidiService;->removePackageDeviceServers(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/midi/MidiService;->access$100(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V

    return-void
.end method
