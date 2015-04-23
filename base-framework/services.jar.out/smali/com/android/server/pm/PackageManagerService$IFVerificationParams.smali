.class Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IFVerificationParams"
.end annotation


# instance fields
.field pkg:Landroid/content/pm/PackageParser$Package;

.field replacing:Z

.field userId:I

.field verifierUid:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Package;ZII)V
    .locals 0
    .param p1, "_pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "_replacing"    # Z
    .param p3, "_userId"    # I
    .param p4, "_verifierUid"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->pkg:Landroid/content/pm/PackageParser$Package;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    return-void
.end method
