.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$effectiveGroupId:I

.field final synthetic val$fingerId:I

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$token:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$fingerId:I

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$effectiveGroupId:I

    iput-object p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput-boolean p6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$restricted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$token:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$fingerId:I

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$effectiveGroupId:I

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-boolean v5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$restricted:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService;->startRemove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V

    return-void
.end method
