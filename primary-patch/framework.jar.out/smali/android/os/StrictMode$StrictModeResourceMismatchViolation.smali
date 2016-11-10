.class Landroid/os/StrictMode$StrictModeResourceMismatchViolation;
.super Landroid/os/StrictMode$StrictModeViolation;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrictModeResourceMismatchViolation"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 2
    .param p1, "policyMask"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    const/16 v1, 0x10

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v1, v0}, Landroid/os/StrictMode$StrictModeViolation;-><init>(IILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
