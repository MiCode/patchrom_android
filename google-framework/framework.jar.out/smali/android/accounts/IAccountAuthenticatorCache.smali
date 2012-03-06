.class public interface abstract Landroid/accounts/IAccountAuthenticatorCache;
.super Ljava/lang/Object;
.source "IAccountAuthenticatorCache.java"


# virtual methods
.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getAllServices()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getServiceInfo(Landroid/accounts/AuthenticatorDescription;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AuthenticatorDescription;",
            ")",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCacheListener",
            "<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation
.end method
