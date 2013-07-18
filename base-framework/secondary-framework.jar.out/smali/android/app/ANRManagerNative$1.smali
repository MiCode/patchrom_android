.class final Landroid/app/ANRManagerNative$1;
.super Landroid/util/Singleton;
.source "ANRManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ANRManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Landroid/app/IANRManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Landroid/app/IANRManager;
    .locals 3

    .prologue
    const-string v2, "anrmanager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/app/ANRManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IANRManager;

    move-result-object v0

    .local v0, am:Landroid/app/IANRManager;
    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/app/ANRManagerNative$1;->create()Landroid/app/IANRManager;

    move-result-object v0

    return-object v0
.end method
