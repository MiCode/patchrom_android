.class public Landroid/app/PackageInstallObserver;
.super Ljava/lang/Object;
.source "PackageInstallObserver.java"


# instance fields
.field private final mBinder:Landroid/content/pm/IPackageInstallObserver2$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/PackageInstallObserver$1;

    invoke-direct {v0, p0}, Landroid/app/PackageInstallObserver$1;-><init>(Landroid/app/PackageInstallObserver;)V

    iput-object v0, p0, Landroid/app/PackageInstallObserver;->mBinder:Landroid/content/pm/IPackageInstallObserver2$Stub;

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/content/pm/IPackageInstallObserver2;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/PackageInstallObserver;->mBinder:Landroid/content/pm/IPackageInstallObserver2$Stub;

    return-object v0
.end method

.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    return-void
.end method
