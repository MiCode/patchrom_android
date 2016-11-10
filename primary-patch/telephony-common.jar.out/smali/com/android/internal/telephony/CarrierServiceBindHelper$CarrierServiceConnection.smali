.class Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;
.super Ljava/lang/Object;
.source "CarrierServiceBindHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarrierServiceConnection"
.end annotation


# instance fields
.field private binding:Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

.field private service:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;)V
    .locals 0
    .param p2, "binding"    # Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->binding:Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected to carrier app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    # getter for: Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$400(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->binding:Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->service:Landroid/os/IBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnected from carrier app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->service:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->binding:Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->handleConnectionDown()V

    return-void
.end method
