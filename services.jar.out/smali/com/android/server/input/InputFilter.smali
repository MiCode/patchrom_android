.class public abstract Lcom/android/server/input/InputFilter;
.super Ljava/lang/Object;
.source "InputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputFilter$Host;,
        Lcom/android/server/input/InputFilter$H;
    }
.end annotation


# static fields
.field private static final MSG_INPUT_EVENT:I = 0x3

.field private static final MSG_INSTALL:I = 0x1

.field private static final MSG_UNINSTALL:I = 0x2


# instance fields
.field private final mH:Lcom/android/server/input/InputFilter$H;

.field private mHost:Lcom/android/server/input/InputFilter$Host;

.field private final mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 4
    .parameter "looper"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const-string v2, "InputFilter#InboundInputEventConsistencyVerifier"

    invoke-direct {v0, p0, v3, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/android/server/input/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    const-string v0, "InputFilter#OutboundInputEventConsistencyVerifier"

    invoke-direct {v1, p0, v3, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    :cond_0
    iput-object v1, p0, Lcom/android/server/input/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    new-instance v0, Lcom/android/server/input/InputFilter$H;

    invoke-direct {v0, p0, p1}, Lcom/android/server/input/InputFilter$H;-><init>(Lcom/android/server/input/InputFilter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/input/InputFilter;->mH:Lcom/android/server/input/InputFilter$H;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/server/input/InputFilter;Lcom/android/server/input/InputFilter$Host;)Lcom/android/server/input/InputFilter$Host;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/input/InputFilter;->mHost:Lcom/android/server/input/InputFilter$Host;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/input/InputFilter;)Landroid/view/InputEventConsistencyVerifier;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/input/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/input/InputFilter;)Landroid/view/InputEventConsistencyVerifier;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/input/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    return-object v0
.end method


# virtual methods
.method final filterInputEvent(Landroid/view/InputEvent;I)V
    .locals 3
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    iget-object v0, p0, Lcom/android/server/input/InputFilter;->mH:Lcom/android/server/input/InputFilter$H;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/input/InputFilter$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method final install(Lcom/android/server/input/InputFilter$Host;)V
    .locals 2
    .parameter "host"

    .prologue
    iget-object v0, p0, Lcom/android/server/input/InputFilter;->mH:Lcom/android/server/input/InputFilter$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/input/InputFilter$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 0
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    return-void
.end method

.method public onInstalled()V
    .locals 0

    .prologue
    return-void
.end method

.method public onUninstalled()V
    .locals 0

    .prologue
    return-void
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .locals 2
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputFilter;->mHost:Lcom/android/server/input/InputFilter$Host;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot send input event because the input filter is not installed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/input/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/input/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/input/InputFilter;->mHost:Lcom/android/server/input/InputFilter$Host;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputFilter$Host;->sendInputEvent(Landroid/view/InputEvent;I)V

    return-void
.end method

.method final uninstall()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/input/InputFilter;->mH:Lcom/android/server/input/InputFilter$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputFilter$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
