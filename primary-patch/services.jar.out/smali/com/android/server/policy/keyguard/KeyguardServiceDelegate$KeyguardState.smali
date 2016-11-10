.class final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyguardState"
.end annotation


# instance fields
.field public bootCompleted:Z

.field public currentUser:I

.field deviceHasKeyguard:Z

.field dreaming:Z

.field public enabled:Z

.field inputRestricted:Z

.field occluded:Z

.field public offReason:I

.field secure:Z

.field showing:Z

.field showingAndNotOccluded:Z

.field systemIsReady:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showingAndNotOccluded:Z

    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    return-void
.end method
