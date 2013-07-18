.class Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$1$1;
.super Ljava/lang/Object;
.source "MediatekDigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$1;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;

    #calls: Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->access$200(Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;)V

    return-void
.end method
