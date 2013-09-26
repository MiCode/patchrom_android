.class Lcom/android/server/InputMethodManagerService$MethodCallback;
.super Lcom/android/internal/view/IInputMethodCallback$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodCallback"
.end annotation


# instance fields
.field private final mMethod:Lcom/android/internal/view/IInputMethod;

.field private final mParentIMMS:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/internal/view/IInputMethod;Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter "method"
    .parameter "imms"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mMethod:Lcom/android/internal/view/IInputMethod;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mParentIMMS:Lcom/android/server/InputMethodManagerService;

    return-void
.end method


# virtual methods
.method public finishedEvent(IZ)V
    .locals 0
    .parameter "seq"
    .parameter "handled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V
    .locals 2
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mParentIMMS:Lcom/android/server/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/InputMethodManagerService;->onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;)V

    return-void
.end method
