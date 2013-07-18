.class final Lcom/android/server/pm/VendorPackageSetting;
.super Ljava/lang/Object;
.source "VendorPackageSettings.java"


# instance fields
.field mIntallStatus:Z

.field final mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/VendorPackageSetting;->mIntallStatus:Z

    iput-object p1, p0, Lcom/android/server/pm/VendorPackageSetting;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "intallStatus"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/VendorPackageSetting;->mIntallStatus:Z

    iput-object p1, p0, Lcom/android/server/pm/VendorPackageSetting;->mPackageName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/server/pm/VendorPackageSetting;->mIntallStatus:Z

    return-void
.end method


# virtual methods
.method getIntallStatus()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/pm/VendorPackageSetting;->mIntallStatus:Z

    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/VendorPackageSetting;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method setIntallStatus(Z)V
    .locals 0
    .parameter "mIntallStatus"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/pm/VendorPackageSetting;->mIntallStatus:Z

    return-void
.end method
