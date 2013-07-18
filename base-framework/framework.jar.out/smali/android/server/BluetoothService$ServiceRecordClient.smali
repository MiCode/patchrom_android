.class Landroid/server/BluetoothService$ServiceRecordClient;
.super Ljava/lang/Object;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceRecordClient"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field death:Landroid/os/IBinder$DeathRecipient;

.field pid:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/server/BluetoothService$ServiceRecordClient;-><init>()V

    return-void
.end method
