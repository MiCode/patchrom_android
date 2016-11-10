.class public abstract Landroid/app/usage/UsageStatsManagerInternal;
.super Ljava/lang/Object;
.source "UsageStatsManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
.end method

.method public abstract getIdleUidsForUser(I)[I
.end method

.method public abstract isAppIdle(Ljava/lang/String;I)Z
.end method

.method public abstract isAppIdleParoleOn()Z
.end method

.method public abstract prepareShutdown()V
.end method

.method public abstract removeAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
.end method

.method public abstract reportConfigurationChange(Landroid/content/res/Configuration;I)V
.end method

.method public abstract reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract reportEvent(Landroid/content/ComponentName;II)V
.end method

.method public abstract reportEvent(Ljava/lang/String;II)V
.end method
