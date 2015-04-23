.class public Landroid/app/admin/SystemUpdatePolicy;
.super Ljava/lang/Object;
.source "SystemUpdatePolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/admin/SystemUpdatePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_INSTALL_WINDOW_END:Ljava/lang/String; = "install_window_end"

.field private static final KEY_INSTALL_WINDOW_START:Ljava/lang/String; = "install_window_start"

.field private static final KEY_POLICY_TYPE:Ljava/lang/String; = "policy_type"

.field public static final TYPE_INSTALL_AUTOMATIC:I = 0x1

.field public static final TYPE_INSTALL_WINDOWED:I = 0x2

.field public static final TYPE_POSTPONE:I = 0x3

.field private static final TYPE_UNKNOWN:I = -0x1

.field private static final WINDOW_BOUNDARY:I = 0x5a0


# instance fields
.field private mMaintenanceWindowEnd:I

.field private mMaintenanceWindowStart:I

.field private mPolicyType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy$1;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy$1;-><init>()V

    sput-object v0, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/SystemUpdatePolicy$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/admin/SystemUpdatePolicy$1;

    .prologue
    invoke-direct {p0}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    return-void
.end method

.method static synthetic access$102(Landroid/app/admin/SystemUpdatePolicy;I)I
    .locals 0
    .param p0, "x0"    # Landroid/app/admin/SystemUpdatePolicy;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    return p1
.end method

.method static synthetic access$202(Landroid/app/admin/SystemUpdatePolicy;I)I
    .locals 0
    .param p0, "x0"    # Landroid/app/admin/SystemUpdatePolicy;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    return p1
.end method

.method static synthetic access$302(Landroid/app/admin/SystemUpdatePolicy;I)I
    .locals 0
    .param p0, "x0"    # Landroid/app/admin/SystemUpdatePolicy;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    return p1
.end method

.method public static createAutomaticInstallPolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 2

    .prologue
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    .local v0, "policy":Landroid/app/admin/SystemUpdatePolicy;
    const/4 v1, 0x1

    iput v1, v0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    return-object v0
.end method

.method public static createPostponeInstallPolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 2

    .prologue
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    .local v0, "policy":Landroid/app/admin/SystemUpdatePolicy;
    const/4 v1, 0x3

    iput v1, v0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    return-object v0
.end method

.method public static createWindowedInstallPolicy(II)Landroid/app/admin/SystemUpdatePolicy;
    .locals 3
    .param p0, "startTime"    # I
    .param p1, "endTime"    # I

    .prologue
    const/16 v1, 0x5a0

    if-ltz p0, :cond_0

    if-ge p0, v1, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "startTime and endTime must be inside [0, 1440)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    .local v0, "policy":Landroid/app/admin/SystemUpdatePolicy;
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    iput p0, v0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    iput p1, v0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    return-object v0
.end method

.method public static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    .local v0, "policy":Landroid/app/admin/SystemUpdatePolicy;
    const/4 v3, 0x0

    const-string v4, "policy_type"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v3, 0x0

    const-string v4, "install_window_start"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    :cond_0
    const/4 v3, 0x0

    const-string v4, "install_window_end"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "policy":Landroid/app/admin/SystemUpdatePolicy;
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getInstallWindowEnd()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getInstallWindowStart()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPolicyType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    return v0
.end method

.method public isValid()Z
    .locals 5

    .prologue
    const/16 v4, 0x5a0

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    if-ltz v2, :cond_2

    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    if-ge v2, v4, :cond_2

    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    if-ltz v2, :cond_2

    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    if-lt v2, v4, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v0, "policy_type"

    iget v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "install_window_start"

    iget v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "install_window_end"

    iget v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v0, "SystemUpdatePolicy (type: %d, windowStart: %d, windowEnd: %d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
