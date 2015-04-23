.class public final Lcom/android/server/hdmi/HdmiCecMessageValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecMessageValidator$1;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;
    }
.end annotation


# static fields
.field private static final DEST_ALL:I = 0x3

.field private static final DEST_BROADCAST:I = 0x2

.field private static final DEST_DIRECT:I = 0x1

.field static final ERROR_DESTINATION:I = 0x2

.field static final ERROR_PARAMETER:I = 0x3

.field static final ERROR_PARAMETER_SHORT:I = 0x4

.field static final ERROR_SOURCE:I = 0x1

.field static final OK:I = 0x0

.field private static final SRC_UNREGISTERED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "HdmiCecMessageValidator"


# instance fields
.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field final mValidationInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 12
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    const/4 v7, 0x5

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x6

    const/4 v8, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mValidationInfo:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    .local v3, "physicalAddressValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;
    const/16 v4, 0x82

    invoke-direct {p0, v4, v3, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x9d

    invoke-direct {p0, v4, v3, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x84

    new-instance v5, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    invoke-direct {p0, v4, v5, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x80

    new-instance v5, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    invoke-direct {p0, v4, v5, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x81

    invoke-direct {p0, v4, v3, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x86

    invoke-direct {p0, v4, v3, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x70

    new-instance v5, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    invoke-direct {p0, v4, v5, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    .local v1, "noneValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;
    const/16 v4, 0xff

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x9f

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x91

    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x71

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x8f

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x8c

    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x46

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x83

    invoke-direct {p0, v4, v1, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x7d

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/4 v4, 0x4

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0xc0

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0xb

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0xf

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0xc1

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0xc2

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0xc3

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0xc4

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x85

    invoke-direct {p0, v4, v1, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x36

    const/4 v5, 0x7

    invoke-direct {p0, v4, v1, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0xc5

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0xd

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    invoke-direct {p0, v9, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    invoke-direct {p0, v7, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x45

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x8b

    invoke-direct {p0, v4, v1, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    .local v2, "oneByteValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;
    const/16 v4, 0x9

    new-instance v5, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    const/16 v6, 0x8

    invoke-direct {v5, v8, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    invoke-direct {p0, v4, v5, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0xa

    invoke-direct {p0, v4, v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x9e

    invoke-direct {p0, v4, v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x32

    new-instance v5, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v5, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    invoke-direct {p0, v4, v5, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    const/4 v4, 0x0

    const/16 v5, 0xe

    invoke-direct {v0, v4, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    .local v0, "maxLengthValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;
    const/16 v4, 0x87

    new-instance v5, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v5, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    invoke-direct {p0, v4, v5, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x89

    invoke-direct {p0, v4, v0, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0xa0

    new-instance v5, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    const/4 v6, 0x4

    const/16 v7, 0xe

    invoke-direct {v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/4 v6, 0x7

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x8a

    const/4 v5, 0x7

    invoke-direct {p0, v4, v0, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x64

    invoke-direct {p0, v4, v0, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x47

    invoke-direct {p0, v4, v0, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x8d

    invoke-direct {p0, v4, v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x8e

    invoke-direct {p0, v4, v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x44

    new-instance v5, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    invoke-direct {v5, v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    invoke-direct {p0, v4, v5, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x90

    invoke-direct {p0, v4, v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v5, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    invoke-direct {p0, v4, v5, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x7a

    invoke-direct {p0, v4, v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0xa3

    new-instance v5, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v5, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    invoke-direct {p0, v4, v5, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0xa4

    invoke-direct {p0, v4, v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x72

    invoke-direct {p0, v4, v2, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x7e

    invoke-direct {p0, v4, v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x9a

    invoke-direct {p0, v4, v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0xf8

    invoke-direct {p0, v4, v0, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Z)I
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->toErrorCode(Z)I

    move-result v0

    return v0
.end method

.method private addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "validator"    # Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;
    .param p3, "addrType"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mValidationInfo:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    invoke-direct {v1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method private isValidPhysicalAddress([BI)Z
    .locals 4
    .param p1, "params"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v0

    .local v0, "path":I
    const v3, 0xffff

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v3

    if-eq v0, v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3, v0}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v1

    .local v1, "portId":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method static isValidType(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static toErrorCode(Z)I
    .locals 1
    .param p0, "success"    # Z

    .prologue
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method isValid(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/16 v5, 0xf

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    .local v2, "opcode":I
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mValidationInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    .local v1, "info":Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;
    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No validation information for the message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v4

    if-ne v4, v5, :cond_1

    iget v4, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v4

    if-ne v4, v5, :cond_2

    iget v4, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected broadcast message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget v4, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected direct message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v4, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;->isValid([B)I

    move-result v0

    .local v0, "errorCode":I
    if-eqz v0, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected parameters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    move v0, v3

    goto/16 :goto_0
.end method
