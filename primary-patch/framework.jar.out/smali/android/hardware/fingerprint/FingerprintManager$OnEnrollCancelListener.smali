.class Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnEnrollCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method private constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p2, "x1"    # Landroid/hardware/fingerprint/FingerprintManager$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # invokes: Landroid/hardware/fingerprint/FingerprintManager;->cancelEnrollment()V
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$000(Landroid/hardware/fingerprint/FingerprintManager;)V

    return-void
.end method
