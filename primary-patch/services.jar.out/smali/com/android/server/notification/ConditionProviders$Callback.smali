.class public interface abstract Lcom/android/server/notification/ConditionProviders$Callback;
.super Ljava/lang/Object;
.source "ConditionProviders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ConditionProviders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onBootComplete()V
.end method

.method public abstract onConditionChanged(Landroid/net/Uri;Landroid/service/notification/Condition;)V
.end method

.method public abstract onServiceAdded(Landroid/content/ComponentName;)V
.end method

.method public abstract onUserSwitched()V
.end method
