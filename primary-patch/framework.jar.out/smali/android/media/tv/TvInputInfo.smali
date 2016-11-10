.class public final Landroid/media/tv/TvInputInfo;
.super Ljava/lang/Object;
.source "TvInputInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputInfo$TvInputSettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DELIMITER_INFO_IN_ID:Ljava/lang/String; = "/"

.field public static final EXTRA_INPUT_ID:Ljava/lang/String; = "android.media.tv.extra.INPUT_ID"

.field private static final LENGTH_HDMI_DEVICE_ID:I = 0x2

.field private static final LENGTH_HDMI_PHYSICAL_ADDRESS:I = 0x4

.field private static final PREFIX_HARDWARE_DEVICE:Ljava/lang/String; = "HW"

.field private static final PREFIX_HDMI_DEVICE:Ljava/lang/String; = "HDMI"

.field private static final TAG:Ljava/lang/String; = "TvInputInfo"

.field public static final TYPE_COMPONENT:I = 0x3ec

.field public static final TYPE_COMPOSITE:I = 0x3e9

.field public static final TYPE_DISPLAY_PORT:I = 0x3f0

.field public static final TYPE_DVI:I = 0x3ee

.field public static final TYPE_HDMI:I = 0x3ef

.field public static final TYPE_OTHER:I = 0x3e8

.field public static final TYPE_SCART:I = 0x3eb

.field public static final TYPE_SVIDEO:I = 0x3ea

.field public static final TYPE_TUNER:I = 0x0

.field public static final TYPE_VGA:I = 0x3ed

.field private static final XML_START_TAG_NAME:Ljava/lang/String; = "tv-input"

.field private static final sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;


# instance fields
.field private mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIconUri:Landroid/net/Uri;

.field private final mId:Ljava/lang/String;

.field private mIsConnectedToHdmiSwitch:Z

.field private final mIsHardwareInput:Z

.field private mLabel:Ljava/lang/String;

.field private mLabelRes:I

.field private final mParentId:Ljava/lang/String;

.field private final mService:Landroid/content/pm/ResolveInfo;

.field private mSettingsActivity:Ljava/lang/String;

.field private mSetupActivity:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/16 v2, 0x3eb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const/16 v2, 0x3ee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/16 v2, 0x3ef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const/16 v2, 0x3f0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/media/tv/TvInputInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvInputInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "isHardwareInput"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iput-object p2, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    iput p4, p0, Landroid/media/tv/TvInputInfo;->mType:I

    iput-boolean p5, p0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputInfo;->mLabelRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/TvInputInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/media/tv/TvInputInfo$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/media/tv/TvInputInfo;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/media/tv/TvInputInfo;->generateInputIdForComponentName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v6, v4

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    move v10, v4

    invoke-static/range {v0 .. v10}, Landroid/media/tv/TvInputInfo;->createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/net/Uri;Z)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/hardware/hdmi/HdmiDeviceInfo;Ljava/lang/String;ILandroid/graphics/drawable/Icon;)Landroid/media/tv/TvInputInfo;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "hdmiDeviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "labelRes"    # I
    .param p5, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v0

    and-int/lit16 v0, v0, 0xfff

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    .local v10, "isConnectedToHdmiSwitch":Z
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p2}, Landroid/media/tv/TvInputInfo;->generateInputIdForHdmiDevice(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3ef

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move/from16 v6, p4

    move-object/from16 v8, p5

    invoke-static/range {v0 .. v10}, Landroid/media/tv/TvInputInfo;->createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/net/Uri;Z)Landroid/media/tv/TvInputInfo;

    move-result-object v11

    .local v11, "input":Landroid/media/tv/TvInputInfo;
    iput-object p2, v11, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v11

    .end local v10    # "isConnectedToHdmiSwitch":Z
    .end local v11    # "input":Landroid/media/tv/TvInputInfo;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/hardware/hdmi/HdmiDeviceInfo;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/media/tv/TvInputInfo;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "hdmiDeviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "iconUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v0

    and-int/lit16 v0, v0, 0xfff

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    .local v10, "isConnectedToHdmiSwitch":Z
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p2}, Landroid/media/tv/TvInputInfo;->generateInputIdForHdmiDevice(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3ef

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    invoke-static/range {v0 .. v10}, Landroid/media/tv/TvInputInfo;->createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/net/Uri;Z)Landroid/media/tv/TvInputInfo;

    move-result-object v11

    .local v11, "input":Landroid/media/tv/TvInputInfo;
    iput-object p2, v11, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v11

    .end local v10    # "isConnectedToHdmiSwitch":Z
    .end local v11    # "input":Landroid/media/tv/TvInputInfo;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/media/tv/TvInputHardwareInfo;ILandroid/graphics/drawable/Icon;)Landroid/media/tv/TvInputInfo;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p3, "labelRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .local v4, "inputType":I
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p2}, Landroid/media/tv/TvInputInfo;->generateInputIdForHardware(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move-object v7, v3

    move-object v8, p4

    move-object v9, v3

    invoke-static/range {v0 .. v10}, Landroid/media/tv/TvInputInfo;->createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/net/Uri;Z)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/media/tv/TvInputHardwareInfo;Ljava/lang/String;Landroid/net/Uri;)Landroid/media/tv/TvInputInfo;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "iconUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .local v4, "inputType":I
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p2}, Landroid/media/tv/TvInputInfo;->generateInputIdForHardware(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v7, p3

    move-object v8, v3

    move-object v9, p4

    move v10, v6

    invoke-static/range {v0 .. v10}, Landroid/media/tv/TvInputInfo;->createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/net/Uri;Z)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    return-object v0
.end method

.method private static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/net/Uri;Z)Landroid/media/tv/TvInputInfo;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "inputType"    # I
    .param p5, "isHardwareInput"    # Z
    .param p6, "labelRes"    # I
    .param p7, "label"    # Ljava/lang/String;
    .param p8, "icon"    # Landroid/graphics/drawable/Icon;
    .param p9, "iconUri"    # Landroid/net/Uri;
    .param p10, "isConnectedToHdmiSwitch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .local v14, "si":Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .local v10, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v2, "android.media.tv.input"

    invoke-virtual {v14, v11, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    if-nez v10, :cond_1

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No android.media.tv.input meta-data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v8

    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create context for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v2

    :cond_1
    :try_start_2
    iget-object v2, v14, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    .local v12, "res":Landroid/content/res/Resources;
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .local v7, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    .local v15, "type":I
    const/4 v2, 0x1

    if-eq v15, v2, :cond_3

    const/4 v2, 0x2

    if-ne v15, v2, :cond_2

    :cond_3
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .local v9, "nodeName":Ljava/lang/String;
    const-string v2, "tv-input"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Meta-data does not start with tv-input-service tag in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v1, Landroid/media/tv/TvInputInfo;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/media/tv/TvInputInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;IZ)V

    .local v1, "input":Landroid/media/tv/TvInputInfo;
    sget-object v2, Lcom/android/internal/R$styleable;->TvInputService:[I

    invoke-virtual {v12, v7, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .local v13, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    if-nez p4, :cond_5

    iget-object v2, v1, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setup activity not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v0, p6

    iput v0, v1, Landroid/media/tv/TvInputInfo;->mLabelRes:I

    move-object/from16 v0, p7

    iput-object v0, v1, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/String;

    move-object/from16 v0, p8

    iput-object v0, v1, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v0, p9

    iput-object v0, v1, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    move/from16 v0, p10

    iput-boolean v0, v1, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    return-object v1
.end method

.method private static generateInputIdForComponentName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Landroid/content/ComponentName;

    .prologue
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateInputIdForHardware(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "HW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateInputIdForHdmiDevice(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    const-string v0, "/HDMI%04X%02X"

    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadServiceIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->icon:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public createSettingsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.media.tv.extra.INPUT_ID"

    invoke-virtual {p0}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createSetupIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.media.tv.extra.INPUT_ID"

    invoke-virtual {p0}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    instance-of v1, p1, Landroid/media/tv/TvInputInfo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/media/tv/TvInputInfo;

    .local v0, "obj":Landroid/media/tv/TvInputInfo;
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2

    .prologue
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isConnectedToHdmiSwitch()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    return v0
.end method

.method public isHardwareInput()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    return v0
.end method

.method public isHidden(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    # invokes: Landroid/media/tv/TvInputInfo$TvInputSettings;->isHidden(Landroid/content/Context;Ljava/lang/String;I)Z
    invoke-static {p1, v0, v1}, Landroid/media/tv/TvInputInfo$TvInputSettings;->access$000(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isPassthroughInput()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadCustomLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    # invokes: Landroid/media/tv/TvInputInfo$TvInputSettings;->getCustomLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {p1, v0, v1}, Landroid/media/tv/TvInputInfo$TvInputSettings;->access$100(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    iget-object v4, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v4, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v6, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .local v2, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_1
    invoke-static {v2, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    if-eqz v2, :cond_0

    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string v4, "TvInputInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading the default icon due to a failure on loading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputInfo;->loadServiceIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_2

    if-eqz v5, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_2
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_3
    move-exception v5

    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v4

    if-eqz v2, :cond_6

    if-eqz v5, :cond_7

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_6
    :goto_2
    :try_start_9
    throw v4

    :catch_4
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2
.end method

.method public loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mLabelRes:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Landroid/media/tv/TvInputInfo;->mLabelRes:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TvInputInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/media/tv/TvInputInfo;->mLabelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
