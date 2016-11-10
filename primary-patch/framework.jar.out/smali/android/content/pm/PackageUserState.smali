.class public Landroid/content/pm/PackageUserState;
.super Ljava/lang/Object;
.source "PackageUserState.java"


# instance fields
.field public appLinkGeneration:I

.field public blockUninstall:Z

.field public disabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public domainVerificationStatus:I

.field public enabled:I

.field public enabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hidden:Z

.field public installed:Z

.field public lastDisableAppCaller:Ljava/lang/String;

.field public notLaunched:Z

.field public stopped:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    iput v1, p0, Landroid/content/pm/PackageUserState;->enabled:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageUserState;)V
    .locals 3
    .param p1, "o"    # Landroid/content/pm/PackageUserState;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->installed:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->stopped:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iget v0, p1, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    :goto_0
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/util/ArraySet;

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    :cond_0
    iput-object v1, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    iget v0, p1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iget v0, p1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
