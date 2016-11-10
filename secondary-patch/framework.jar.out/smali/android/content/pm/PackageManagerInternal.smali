.class public abstract Landroid/content/pm/PackageManagerInternal;
.super Ljava/lang/Object;
.source "PackageManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;,
        Landroid/content/pm/PackageManagerInternal$PackagesProvider;
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
.method public abstract grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V
.end method

.method public abstract grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
.end method

.method public abstract grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V
.end method

.method public abstract setDialerAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setImePackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setSimCallManagerPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setSmsAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setSyncAdapterPackagesprovider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
.end method

.method public abstract setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method
