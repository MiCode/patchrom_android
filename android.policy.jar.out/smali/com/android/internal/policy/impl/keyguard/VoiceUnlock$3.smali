.class Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$3;
.super Ljava/lang/Object;
.source "VoiceUnlock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$3;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$3;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->stop()Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$3;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->pokeWakelock(I)V

    return-void
.end method
