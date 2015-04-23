.class public Landroid/view/DisplayAdjustments;
.super Ljava/lang/Object;
.source "DisplayAdjustments.java"


# static fields
.field public static final DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

.field public static final DEVELOPMENT_RESOURCES_DEPEND_ON_ACTIVITY_TOKEN:Z


# instance fields
.field private volatile mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field private mConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    sput-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p1, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method public constructor <init>(Landroid/view/DisplayAdjustments;)V
    .locals 1
    .param p1, "daj"    # Landroid/view/DisplayAdjustments;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p1, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    iget-object v0, p1, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    instance-of v2, p1, Landroid/view/DisplayAdjustments;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/view/DisplayAdjustments;

    .local v0, "daj":Landroid/view/DisplayAdjustments;
    iget-object v2, v0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v3, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    const/16 v0, 0x11

    .local v0, "hash":I
    iget-object v1, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    return v0
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .param p1, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setCompatbilityInfo: Cannot modify DEFAULT_DISPLAY_ADJUSTMENTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    :goto_0
    return-void

    :cond_2
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    goto :goto_0
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setConfiguration: Cannot modify DEFAULT_DISPLAY_ADJUSTMENTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method
