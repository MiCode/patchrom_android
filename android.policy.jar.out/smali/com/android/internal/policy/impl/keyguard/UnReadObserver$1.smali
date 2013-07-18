.class Lcom/android/internal/policy/impl/keyguard/UnReadObserver$1;
.super Ljava/lang/Object;
.source "UnReadObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->upateNewEventNumber(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/UnReadObserver;

.field final synthetic val$unreadNumber:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/UnReadObserver;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadObserver;

    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadObserver$1;->val$unreadNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnReadObserver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->mNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadObserver$1;->val$unreadNumber:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setNumber(I)V

    return-void
.end method
