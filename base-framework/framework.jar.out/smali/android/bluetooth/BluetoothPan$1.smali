.class Landroid/bluetooth/BluetoothPan$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothPan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPan;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPan;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const-string v2, "BluetoothPan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBluetoothStateChange on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    # getter for: Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;
    invoke-static {v2}, Landroid/bluetooth/BluetoothPan;->access$000(Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/IBluetoothPan;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothPan;->doBind()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "BluetoothPan"

    const-string v3, "onBluetoothStateChange: could not bind to PAN service: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "BluetoothPan"

    const-string v3, "onBluetoothStateChange: could not bind to PAN service: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    # getter for: Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Landroid/bluetooth/BluetoothPan;->access$100(Landroid/bluetooth/BluetoothPan;)Landroid/content/ServiceConnection;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    const/4 v4, 0x0

    # setter for: Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothPan;->access$002(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;)Landroid/bluetooth/IBluetoothPan;

    iget-object v2, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    # getter for: Landroid/bluetooth/BluetoothPan;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/bluetooth/BluetoothPan;->access$200(Landroid/bluetooth/BluetoothPan;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    # getter for: Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v4}, Landroid/bluetooth/BluetoothPan;->access$100(Landroid/bluetooth/BluetoothPan;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_2
    move-exception v1

    .local v1, "re":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "BluetoothPan"

    const-string v4, ""

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
