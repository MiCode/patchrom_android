.class Lcom/android/server/LightsService$1;
.super Landroid/os/IHardwareService$Stub;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final FLASHLIGHT_FILE:Ljava/lang/String; = "/sys/class/leds/spotlight/brightness"


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Landroid/os/IHardwareService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlashlightEnabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v4, "/sys/class/leds/spotlight/brightness"

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .local v1, fis:Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    .local v2, result:I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x30

    if-eq v2, v4, :cond_0

    const/4 v3, 0x1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v2           #result:I
    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setFlashlightEnabled(Z)V
    .locals 4
    .parameter "on"

    .prologue
    iget-object v2, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.FLASHLIGHT"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.HARDWARE_TEST"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FLASHLIGHT or HARDWARE_TEST permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/class/leds/spotlight/brightness"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v2, 0x2

    new-array v0, v2, [B

    .local v0, bytes:[B
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/16 v2, 0x31

    :goto_0
    int-to-byte v2, v2

    aput-byte v2, v0, v3

    const/4 v2, 0x1

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #bytes:[B
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .restart local v0       #bytes:[B
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_1
    const/16 v2, 0x30

    goto :goto_0

    .end local v0           #bytes:[B
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
