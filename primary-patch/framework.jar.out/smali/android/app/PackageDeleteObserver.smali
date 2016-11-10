.class public Landroid/app/PackageDeleteObserver;
.super Ljava/lang/Object;
.source "PackageDeleteObserver.java"


# instance fields
.field private final mBinder:Landroid/content/pm/IPackageDeleteObserver2$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/PackageDeleteObserver$1;

    invoke-direct {v0, p0}, Landroid/app/PackageDeleteObserver$1;-><init>(Landroid/app/PackageDeleteObserver;)V

    iput-object v0, p0, Landroid/app/PackageDeleteObserver;->mBinder:Landroid/content/pm/IPackageDeleteObserver2$Stub;

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/content/pm/IPackageDeleteObserver2;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/PackageDeleteObserver;->mBinder:Landroid/content/pm/IPackageDeleteObserver2$Stub;

    return-object v0
.end method

.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    return-void
.end method
