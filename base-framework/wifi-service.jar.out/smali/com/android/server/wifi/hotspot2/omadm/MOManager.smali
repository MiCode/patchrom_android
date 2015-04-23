.class public Lcom/android/server/wifi/hotspot2/omadm/MOManager;
.super Ljava/lang/Object;
.source "MOManager.java"


# static fields
.field private static final DTFormat:Ljava/text/DateFormat;

.field public static final TAG_AAAServerTrustRoot:Ljava/lang/String; = "AAAServerTrustRoot"

.field public static final TAG_AbleToShare:Ljava/lang/String; = "AbleToShare"

.field public static final TAG_CertSHA256Fingerprint:Ljava/lang/String; = "CertSHA256Fingerprint"

.field public static final TAG_CertURL:Ljava/lang/String; = "CertURL"

.field public static final TAG_CertificateType:Ljava/lang/String; = "CertificateType"

.field public static final TAG_CheckAAAServerCertStatus:Ljava/lang/String; = "CheckAAAServerCertStatus"

.field public static final TAG_Country:Ljava/lang/String; = "Country"

.field public static final TAG_CreationDate:Ljava/lang/String; = "CreationDate"

.field public static final TAG_Credential:Ljava/lang/String; = "Credential"

.field public static final TAG_CredentialPriority:Ljava/lang/String; = "CredentialPriority"

.field public static final TAG_DLBandwidth:Ljava/lang/String; = "DLBandwidth"

.field public static final TAG_DataLimit:Ljava/lang/String; = "DataLimit"

.field public static final TAG_DigitalCertificate:Ljava/lang/String; = "DigitalCertificate"

.field public static final TAG_EAPMethod:Ljava/lang/String; = "EAPMethod"

.field public static final TAG_EAPType:Ljava/lang/String; = "EAPType"

.field public static final TAG_ExpirationDate:Ljava/lang/String; = "ExpirationDate"

.field public static final TAG_Extension:Ljava/lang/String; = "Extension"

.field public static final TAG_FQDN:Ljava/lang/String; = "FQDN"

.field public static final TAG_FQDN_Match:Ljava/lang/String; = "FQDN_Match"

.field public static final TAG_FriendlyName:Ljava/lang/String; = "FriendlyName"

.field public static final TAG_HESSID:Ljava/lang/String; = "HESSID"

.field public static final TAG_HomeOI:Ljava/lang/String; = "HomeOI"

.field public static final TAG_HomeOIList:Ljava/lang/String; = "HomeOIList"

.field public static final TAG_HomeOIRequired:Ljava/lang/String; = "HomeOIRequired"

.field public static final TAG_HomeSP:Ljava/lang/String; = "HomeSP"

.field public static final TAG_IMSI:Ljava/lang/String; = "IMSI"

.field public static final TAG_IPProtocol:Ljava/lang/String; = "IPProtocol"

.field public static final TAG_IconURL:Ljava/lang/String; = "IconURL"

.field public static final TAG_InnerEAPType:Ljava/lang/String; = "InnerEAPType"

.field public static final TAG_InnerMethod:Ljava/lang/String; = "InnerMethod"

.field public static final TAG_InnerVendorID:Ljava/lang/String; = "InnerVendorID"

.field public static final TAG_InnerVendorType:Ljava/lang/String; = "InnerVendorType"

.field public static final TAG_MachineManaged:Ljava/lang/String; = "MachineManaged"

.field public static final TAG_MaximumBSSLoadValue:Ljava/lang/String; = "MaximumBSSLoadValue"

.field public static final TAG_MinBackhaulThreshold:Ljava/lang/String; = "MinBackhaulThreshold"

.field public static final TAG_NetworkID:Ljava/lang/String; = "NetworkID"

.field public static final TAG_NetworkType:Ljava/lang/String; = "NetworkType"

.field public static final TAG_Other:Ljava/lang/String; = "Other"

.field public static final TAG_OtherHomePartners:Ljava/lang/String; = "OtherHomePartners"

.field public static final TAG_Password:Ljava/lang/String; = "Password"

.field public static final TAG_PerProviderSubscription:Ljava/lang/String; = "PerProviderSubscription"

.field public static final TAG_Policy:Ljava/lang/String; = "Policy"

.field public static final TAG_PolicyUpdate:Ljava/lang/String; = "PolicyUpdate"

.field public static final TAG_PortNumber:Ljava/lang/String; = "PortNumber"

.field public static final TAG_PreferredRoamingPartnerList:Ljava/lang/String; = "PreferredRoamingPartnerList"

.field public static final TAG_Priority:Ljava/lang/String; = "Priority"

.field public static final TAG_Realm:Ljava/lang/String; = "Realm"

.field public static final TAG_RequiredProtoPortTuple:Ljava/lang/String; = "RequiredProtoPortTuple"

.field public static final TAG_Restriction:Ljava/lang/String; = "Restriction"

.field public static final TAG_RoamingConsortiumOI:Ljava/lang/String; = "RoamingConsortiumOI"

.field public static final TAG_SIM:Ljava/lang/String; = "SIM"

.field public static final TAG_SPExclusionList:Ljava/lang/String; = "SPExclusionList"

.field public static final TAG_SSID:Ljava/lang/String; = "SSID"

.field public static final TAG_SoftTokenApp:Ljava/lang/String; = "SoftTokenApp"

.field public static final TAG_StartDate:Ljava/lang/String; = "StartDate"

.field public static final TAG_SubscriptionParameters:Ljava/lang/String; = "SubscriptionParameters"

.field public static final TAG_SubscriptionUpdate:Ljava/lang/String; = "SubscriptionUpdate"

.field public static final TAG_TimeLimit:Ljava/lang/String; = "TimeLimit"

.field public static final TAG_TrustRoot:Ljava/lang/String; = "TrustRoot"

.field public static final TAG_TypeOfSubscription:Ljava/lang/String; = "TypeOfSubscription"

.field public static final TAG_ULBandwidth:Ljava/lang/String; = "ULBandwidth"

.field public static final TAG_URI:Ljava/lang/String; = "URI"

.field public static final TAG_UpdateIdentifier:Ljava/lang/String; = "UpdateIdentifier"

.field public static final TAG_UpdateInterval:Ljava/lang/String; = "UpdateInterval"

.field public static final TAG_UpdateMethod:Ljava/lang/String; = "UpdateMethod"

.field public static final TAG_UsageLimits:Ljava/lang/String; = "UsageLimits"

.field public static final TAG_UsageTimePeriod:Ljava/lang/String; = "UsageTimePeriod"

.field public static final TAG_Username:Ljava/lang/String; = "Username"

.field public static final TAG_UsernamePassword:Ljava/lang/String; = "UsernamePassword"

.field public static final TAG_VendorId:Ljava/lang/String; = "VendorId"

.field public static final TAG_VendorType:Ljava/lang/String; = "VendorType"


# instance fields
.field private final mEnabled:Z

.field private final mPpsFile:Ljava/io/File;

.field private final mSPs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->DTFormat:Ljava/text/DateFormat;

    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->DTFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .param p1, "ppsFile"    # Ljava/io/File;
    .param p2, "hs2enabled"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    iput-boolean p2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mEnabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    return-void
.end method

.method private static buildCredential(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/pps/Credential;
    .locals 44
    .param p0, "credNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    const-string v5, "CreationDate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J

    move-result-wide v6

    .local v6, "ctime":J
    const-string v5, "ExpirationDate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J

    move-result-wide v8

    .local v8, "expTime":J
    const-string v5, "Realm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v10

    .local v10, "realm":Ljava/lang/String;
    const-string v5, "CheckAAAServerCertStatus"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    move-result v11

    .local v11, "checkAAACert":Z
    const-string v5, "UsernamePassword"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v41

    .local v41, "unNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v5, "DigitalCertificate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v18

    .local v18, "certNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v5, "SIM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v40

    .local v40, "simNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const/4 v4, 0x0

    .local v4, "alternatives":I
    if-eqz v41, :cond_0

    const/4 v5, 0x1

    :goto_0
    add-int/2addr v4, v5

    if-eqz v18, :cond_1

    const/4 v5, 0x1

    :goto_1
    add-int/2addr v4, v5

    if-eqz v40, :cond_2

    const/4 v5, 0x1

    :goto_2
    add-int/2addr v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Expected exactly one credential type, got "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    if-eqz v41, :cond_a

    const-string v5, "Username"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v13

    .local v13, "userName":Ljava/lang/String;
    const-string v5, "Password"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v14

    .local v14, "password":Ljava/lang/String;
    const-string v5, "MachineManaged"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    move-result v15

    .local v15, "machineManaged":Z
    const-string v5, "SoftTokenApp"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v16

    .local v16, "softTokenApp":Ljava/lang/String;
    const-string v5, "AbleToShare"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    move-result v17

    .local v17, "ableToShare":Z
    const-string v5, "EAPMethod"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v32

    .local v32, "eapMethodNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v5, "EAPType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    move-result v30

    .local v30, "eapID":I
    invoke-static/range {v30 .. v30}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v31

    .local v31, "eapMethodID":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    if-nez v31, :cond_4

    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown EAP method: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    const-string v5, "VendorId"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v42

    .local v42, "vid":Ljava/lang/Long;
    const-string v5, "VendorType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v43

    .local v43, "vtype":Ljava/lang/Long;
    const-string v5, "InnerEAPType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v34

    .local v34, "innerEAPType":Ljava/lang/Long;
    const/16 v33, 0x0

    .local v33, "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    if-eqz v34, :cond_5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v33

    if-nez v33, :cond_5

    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Bad inner EAP method: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    const-string v5, "InnerVendorID"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v36

    .local v36, "innerVid":Ljava/lang/Long;
    const-string v5, "InnerVendorType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v37

    .local v37, "innerVtype":Ljava/lang/Long;
    const-string v5, "InnerMethod"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v35

    .local v35, "innerNonEAPMethod":Ljava/lang/String;
    if-eqz v33, :cond_6

    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    new-instance v5, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;

    move-object/from16 v0, v33

    invoke-direct {v5, v0}, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)V

    move-object/from16 v0, v31

    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .local v12, "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :goto_3
    new-instance v5, Lcom/android/server/wifi/hotspot2/pps/Credential;

    invoke-direct/range {v5 .. v17}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    move-object/from16 v19, v5

    .end local v13    # "userName":Ljava/lang/String;
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "machineManaged":Z
    .end local v16    # "softTokenApp":Ljava/lang/String;
    .end local v17    # "ableToShare":Z
    .end local v30    # "eapID":I
    .end local v31    # "eapMethodID":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .end local v32    # "eapMethodNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v33    # "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .end local v34    # "innerEAPType":Ljava/lang/Long;
    .end local v35    # "innerNonEAPMethod":Ljava/lang/String;
    .end local v36    # "innerVid":Ljava/lang/Long;
    .end local v37    # "innerVtype":Ljava/lang/Long;
    .end local v42    # "vid":Ljava/lang/Long;
    .end local v43    # "vtype":Ljava/lang/Long;
    :goto_4
    return-object v19

    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .restart local v13    # "userName":Ljava/lang/String;
    .restart local v14    # "password":Ljava/lang/String;
    .restart local v15    # "machineManaged":Z
    .restart local v16    # "softTokenApp":Ljava/lang/String;
    .restart local v17    # "ableToShare":Z
    .restart local v30    # "eapID":I
    .restart local v31    # "eapMethodID":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .restart local v32    # "eapMethodNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .restart local v33    # "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .restart local v34    # "innerEAPType":Ljava/lang/Long;
    .restart local v35    # "innerNonEAPMethod":Ljava/lang/String;
    .restart local v36    # "innerVid":Ljava/lang/Long;
    .restart local v37    # "innerVtype":Ljava/lang/Long;
    .restart local v42    # "vid":Ljava/lang/Long;
    .restart local v43    # "vtype":Ljava/lang/Long;
    :cond_6
    if-eqz v42, :cond_7

    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    new-instance v5, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    sget-object v19, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->intValue()I

    move-result v20

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;IJ)V

    move-object/from16 v0, v31

    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    goto :goto_3

    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_7
    if-eqz v36, :cond_8

    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    new-instance v5, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    sget-object v19, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedInnerEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->intValue()I

    move-result v20

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;IJ)V

    move-object/from16 v0, v31

    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    goto :goto_3

    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_8
    if-eqz v35, :cond_9

    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    new-instance v5, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    goto :goto_3

    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_9
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string v19, "Incomplete set of EAP parameters"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v13    # "userName":Ljava/lang/String;
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "machineManaged":Z
    .end local v16    # "softTokenApp":Ljava/lang/String;
    .end local v17    # "ableToShare":Z
    .end local v30    # "eapID":I
    .end local v31    # "eapMethodID":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .end local v32    # "eapMethodNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v33    # "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .end local v34    # "innerEAPType":Ljava/lang/Long;
    .end local v35    # "innerNonEAPMethod":Ljava/lang/String;
    .end local v36    # "innerVid":Ljava/lang/Long;
    .end local v37    # "innerVtype":Ljava/lang/Long;
    .end local v42    # "vid":Ljava/lang/Long;
    .end local v43    # "vtype":Ljava/lang/Long;
    :cond_a
    if-eqz v18, :cond_b

    :try_start_0
    const-string v5, "CertificateType"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v29

    .local v29, "certTypeString":Ljava/lang/String;
    const-string v5, "CertSHA256Fingerprint"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOctets(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)[B

    move-result-object v28

    .local v28, "fingerPrint":[B
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    sget-object v5, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v12, v5, v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    new-instance v19, Lcom/android/server/wifi/hotspot2/pps/Credential;

    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/hotspot2/pps/Credential;->mapCertType(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    move-result-object v27

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    invoke-direct/range {v19 .. v28}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;[B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .end local v28    # "fingerPrint":[B
    .end local v29    # "certTypeString":Ljava/lang/String;
    :catch_0
    move-exception v39

    .local v39, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Bad hex string: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v39 .. v39}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v39    # "nfe":Ljava/lang/NumberFormatException;
    :cond_b
    if-eqz v40, :cond_c

    :try_start_1
    new-instance v27, Lcom/android/server/wifi/IMSIParameter;

    const-string v5, "IMSI"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Lcom/android/server/wifi/IMSIParameter;-><init>(Ljava/lang/String;)V

    .local v27, "imsi":Lcom/android/server/wifi/IMSIParameter;
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    const-string v5, "EAPType"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    move-result v5

    invoke-static {v5}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v5

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v12, v5, v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    new-instance v19, Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    invoke-direct/range {v19 .. v27}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Lcom/android/server/wifi/IMSIParameter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .end local v27    # "imsi":Lcom/android/server/wifi/IMSIParameter;
    :catch_1
    move-exception v38

    .local v38, "ioe":Ljava/io/IOException;
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to parse IMSI: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v38    # "ioe":Ljava/io/IOException;
    :cond_c
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string v19, "Missing credential parameters"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static buildHomeSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 28
    .param p0, "ppsRoot"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    const-string v2, "HomeSP"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v23

    .local v23, "spRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v26, 0x0

    const-string v27, "FQDN"

    aput-object v27, v2, v26

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v4

    .local v4, "fqdn":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v26, 0x0

    const-string v27, "FriendlyName"

    aput-object v27, v2, v26

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v9

    .local v9, "friendlyName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v26, 0x0

    const-string v27, "IconURL"

    aput-object v27, v2, v26

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v10

    .local v10, "iconURL":Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .local v5, "roamingConsortiums":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v26, 0x0

    const-string v27, "RoamingConsortiumOI"

    aput-object v27, v2, v26

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v21

    .local v21, "oiString":Ljava/lang/String;
    if-eqz v21, :cond_0

    const-string v2, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v20, v12, v18

    .local v20, "oi":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v26, 0x10

    move/from16 v0, v26

    invoke-static {v2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    .end local v20    # "oi":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .local v3, "ssids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v26, 0x0

    const-string v27, "NetworkID"

    aput-object v27, v2, v26

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v24

    .local v24, "ssidListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v24, :cond_1

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .local v25, "ssidRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v2, "HESSID"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v14

    .local v14, "hessidNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v2, "SSID"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getMac(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v14    # "hessidNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v25    # "ssidRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .local v7, "matchAnyOIs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "matchAllOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v26, 0x0

    const-string v27, "HomeOIList"

    aput-object v27, v2, v26

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v16

    .local v16, "homeOIListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .local v17, "homeOIRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v2, "HomeOI"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v15

    .local v15, "homeOI":Ljava/lang/String;
    const-string v2, "HomeOIRequired"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x10

    invoke-static {v15, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    invoke-static {v15, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v15    # "homeOI":Ljava/lang/String;
    .end local v17    # "homeOIRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .local v6, "otherHomePartners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v26, 0x0

    const-string v27, "OtherHomePartners"

    aput-object v27, v2, v26

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v22

    .local v22, "otherListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .local v13, "fqdnNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v2, "FQDN"

    invoke-virtual {v13, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v13    # "fqdnNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v2, "Credential"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildCredential(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v11

    .local v11, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    new-instance v2, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-direct/range {v2 .. v11}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/Credential;)V

    return-object v2
.end method

.method private static buildHomeSPTree(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;I)V
    .locals 32
    .param p0, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .param p1, "root"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .param p2, "spInstance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static/range {p2 .. p2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v22

    .local v22, "providerSubNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v25, "HomeSP"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v13

    .local v13, "homeSpNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getSSIDs()Ljava/util/Map;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_1

    const-string v25, "NetworkID"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v19

    check-cast v19, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .local v19, "nwkIDNode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v16, 0x0

    .local v16, "instance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getSSIDs()Ljava/util/Map;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "instance":I
    .local v17, "instance":I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v15

    check-cast v15, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .local v15, "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string v26, "SSID"

    const/16 v27, 0x0

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v28

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_0

    const-string v25, "HESSID"

    const/16 v26, 0x0

    const-string v27, "%012x"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    :cond_0
    move/from16 v16, v17

    .end local v17    # "instance":I
    .restart local v16    # "instance":I
    goto :goto_0

    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v16    # "instance":I
    .end local v19    # "nwkIDNode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_1
    const-string v25, "FriendlyName"

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFriendlyName()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getIconURL()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_2

    const-string v25, "IconURL"

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getIconURL()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    :cond_2
    const-string v25, "FQDN"

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAllOIs()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAnyOIs()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_5

    :cond_3
    const-string v25, "HomeOIList"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v12

    check-cast v12, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .local v12, "homeOIList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v16, 0x0

    .restart local v16    # "instance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAllOIs()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    .local v20, "oi":Ljava/lang/Long;
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "instance":I
    .restart local v17    # "instance":I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v15

    check-cast v15, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .restart local v15    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string v25, "HomeOI"

    const/16 v26, 0x0

    const-string v27, "%x"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v20, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    const-string v25, "HomeOIRequired"

    const/16 v26, 0x0

    const-string v27, "TRUE"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move/from16 v16, v17

    .end local v17    # "instance":I
    .restart local v16    # "instance":I
    goto :goto_1

    .end local v15    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v20    # "oi":Ljava/lang/Long;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAnyOIs()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    .restart local v20    # "oi":Ljava/lang/Long;
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "instance":I
    .restart local v17    # "instance":I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v15

    check-cast v15, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .restart local v15    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string v25, "HomeOI"

    const/16 v26, 0x0

    const-string v27, "%x"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v20, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    const-string v25, "HomeOIRequired"

    const/16 v26, 0x0

    const-string v27, "FALSE"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move/from16 v16, v17

    .end local v17    # "instance":I
    .restart local v16    # "instance":I
    goto :goto_2

    .end local v12    # "homeOIList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v16    # "instance":I
    .end local v20    # "oi":Ljava/lang/Long;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getOtherHomePartners()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_6

    const-string v25, "OtherHomePartners"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v21

    check-cast v21, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .local v21, "otherPartners":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v16, 0x0

    .restart local v16    # "instance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getOtherHomePartners()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .local v11, "fqdn":Ljava/lang/String;
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "instance":I
    .restart local v17    # "instance":I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v15

    check-cast v15, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .restart local v15    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string v25, "FQDN"

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v15, v0, v1, v11, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move/from16 v16, v17

    .end local v17    # "instance":I
    .restart local v16    # "instance":I
    goto :goto_3

    .end local v11    # "fqdn":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v16    # "instance":I
    .end local v21    # "otherPartners":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getRoamingConsortiums()Ljava/util/HashSet;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_7

    const-string v25, "RoamingConsortiumOI"

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getRoamingConsortiums()Ljava/util/HashSet;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getRCList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    :cond_7
    const-string v25, "Credential"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v8

    .local v8, "credentialNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v7

    .local v7, "cred":Lcom/android/server/wifi/hotspot2/pps/Credential;
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    move-result-object v18

    .local v18, "method":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getCtime()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-lez v25, :cond_8

    const-string v25, "CreationDate"

    const/16 v26, 0x0

    sget-object v27, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->DTFormat:Ljava/text/DateFormat;

    new-instance v28, Ljava/util/Date;

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getCtime()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v27 .. v28}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    :cond_8
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getExpTime()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-lez v25, :cond_9

    const-string v25, "ExpirationDate"

    const/16 v26, 0x0

    sget-object v27, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->DTFormat:Ljava/text/DateFormat;

    new-instance v28, Ljava/util/Date;

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getExpTime()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v27 .. v28}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    :cond_9
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v25

    sget-object v26, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_a

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v25

    sget-object v26, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_a

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v25

    sget-object v26, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_b

    :cond_a
    const-string v25, "SIM"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v23

    .local v23, "simNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v25, "IMSI"

    const/16 v26, 0x0

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getImsi()Lcom/android/server/wifi/IMSIParameter;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wifi/IMSIParameter;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    const-string v25, "EAPType"

    const/16 v26, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .end local v23    # "simNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_4
    const-string v25, "Realm"

    const/16 v26, 0x0

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    return-void

    :cond_b
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v25

    sget-object v26, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_c

    const-string v25, "UsernamePassword"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v24

    .local v24, "unpNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v25, "Username"

    const/16 v26, 0x0

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getUserName()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    const-string v25, "Password"

    const/16 v26, 0x0

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getPassword()Ljava/lang/String;

    move-result-object v27

    sget-object v28, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v27

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    const-string v25, "EAPMethod"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v9

    .local v9, "eapNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v25, "EAPType"

    const/16 v26, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    const-string v26, "InnerMethod"

    const/16 v27, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getAuthParam()Lcom/android/server/wifi/anqp/eap/AuthParam;

    move-result-object v25

    check-cast v25, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->getOMAtype()Ljava/lang/String;

    move-result-object v25

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v28

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    goto/16 :goto_4

    .end local v9    # "eapNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v24    # "unpNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_c
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v25

    sget-object v26, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_d

    const-string v25, "DigitalCertificate"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v6

    .local v6, "certNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string v25, "CertificateType"

    const/16 v26, 0x0

    const-string v27, "x509v3"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    const-string v25, "CertSHA256Fingerprint"

    const/16 v26, 0x0

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getFingerPrint()[B

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/wifi/hotspot2/Utils;->toHex([B)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    goto/16 :goto_4

    .end local v6    # "certNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_d
    new-instance v25, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Invalid credential on "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v25
.end method

.method public static buildSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 6
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    .local v0, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    const-string v3, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    invoke-virtual {v0, p0, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v2

    .local v2, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    move-result-object v1

    .local v1, "spList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected exactly one HomeSP, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    return-object v3
.end method

.method private static buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;
    .locals 8
    .param p0, "moTree"    # Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/omadm/MOTree;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PerProviderSubscription"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v2

    .local v2, "spList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    if-nez v2, :cond_2

    :cond_0
    return-object v0

    .end local v0    # "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .end local v2    # "spList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "PerProviderSubscription"

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .local v3, "spPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v2

    .restart local v2    # "spList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    goto :goto_0

    .end local v3    # "spPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .local v4, "spRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildHomeSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static fqdnList(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "sps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, "first":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .local v3, "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v3    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z
    .locals 1
    .param p0, "boolNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getInstanceString(I)Ljava/lang/String;
    .locals 2
    .param p0, "instance"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I
    .locals 4
    .param p0, "intNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string v2, "Missing integer value"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getMac(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;
    .locals 4
    .param p0, "macNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getOctets(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)[B
    .locals 2
    .param p0, "octetNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string v1, "Missing byte value"

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;
    .locals 4
    .param p0, "intNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getRCList(Ljava/util/Collection;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "rcs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .local v3, "roamingConsortium":Ljava/lang/Long;
    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    const-string v4, "%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v3    # "roamingConsortium":Ljava/lang/Long;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;
    .locals 1
    .param p0, "stringNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J
    .locals 6
    .param p0, "timeNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    const-wide/16 v4, -0x1

    :goto_0
    return-wide v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v2

    .local v2, "timeText":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->DTFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v1

    .local v1, "pe":Ljava/text/ParseException;
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Badly formatted time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static rewriteMO(Ljava/util/Collection;Ljava/util/Map;Ljava/io/File;)V
    .locals 12
    .param p2, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .local p1, "current":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    const/4 v9, 0x0

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    const-string v8, "PerProviderSubscription"

    invoke-direct {v5, v9, v8, v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V

    .local v5, "ppsNode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/4 v2, 0x0

    .local v2, "instance":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .local v0, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "instance":I
    .local v3, "instance":I
    invoke-static {v0, v5, v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildHomeSPTree(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;I)V

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    .end local v3    # "instance":I
    .restart local v2    # "instance":I
    goto :goto_0

    .end local v0    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_0
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    const-string v8, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    const-string v10, "1.2"

    invoke-direct {v6, v8, v10, v5}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    .local v6, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v10, 0x0

    invoke-direct {v8, p2, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v4, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    invoke-virtual {v6, v4}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->marshal(Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    if-eqz v9, :cond_2

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_1

    :catch_1
    move-exception v8

    :try_start_2
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v9

    move-object v11, v9

    move-object v9, v8

    move-object v8, v11

    :goto_2
    if-eqz v4, :cond_3

    if-eqz v9, :cond_4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    throw v8

    :catch_2
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_3

    :catchall_1
    move-exception v8

    goto :goto_2
.end method

.method private static writeMO(Ljava/util/Collection;Ljava/io/File;)V
    .locals 12
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    const/4 v9, 0x0

    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    const-string v8, "PerProviderSubscription"

    invoke-direct {v5, v9, v8, v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V

    .local v5, "ppsNode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/4 v2, 0x0

    .local v2, "instance":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .local v0, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "instance":I
    .local v3, "instance":I
    invoke-static {v0, v5, v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildHomeSPTree(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;I)V

    move v2, v3

    .end local v3    # "instance":I
    .restart local v2    # "instance":I
    goto :goto_0

    .end local v0    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_0
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    const-string v8, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    const-string v10, "1.2"

    invoke-direct {v6, v8, v10, v5}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    .local v6, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v10, 0x0

    invoke-direct {v8, p1, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v4, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    invoke-virtual {v6, v4}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->marshal(Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    if-eqz v9, :cond_2

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_1

    :catch_1
    move-exception v8

    :try_start_2
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v9

    move-object v11, v9

    move-object v9, v8

    move-object v8, v11

    :goto_2
    if-eqz v4, :cond_3

    if-eqz v9, :cond_4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    throw v8

    :catch_2
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_3

    :catchall_1
    move-exception v8

    goto :goto_2
.end method


# virtual methods
.method public addSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 10
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    invoke-direct {v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    .local v1, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    const-string v7, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    invoke-virtual {v1, p1, v7}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v6

    .local v6, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    move-result-object v5

    .local v5, "spList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v8, :cond_0

    new-instance v7, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected exactly one HomeSP, got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .local v4, "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v0

    .local v0, "fqdn":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v7, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SP "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " already exists"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const/4 v2, 0x0

    .local v2, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .local v3, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {v6, v3}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->marshal(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    return-object v4

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v7

    :goto_1
    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_2
    throw v7

    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v7

    goto :goto_0

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v8

    goto :goto_2

    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method public addSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
    .locals 3
    .param p1, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mEnabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "HS2.0 not enabled on this device"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HS20 profile for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding new HS20 profile for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->writeMO(Ljava/util/Collection;Ljava/io/File;)V

    goto :goto_0
.end method

.method public getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 1
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    return-object v0
.end method

.method public getLoadedSPs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPpsFile()Ljava/io/File;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    return-object v0
.end method

.method public isConfigured()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mEnabled:Z

    return v0
.end method

.method public loadAllSPs()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-boolean v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mEnabled:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .local v1, "in":Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v2

    .local v2, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    if-nez v2, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    if-eqz v1, :cond_1

    if-eqz v7, :cond_3

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    move-result-object v4

    .local v4, "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .local v3, "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Multiple SPs for FQDN \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v4    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catch_1
    move-exception v6

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_2
    if-eqz v1, :cond_5

    if-eqz v7, :cond_a

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    throw v6

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v3    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v4    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :cond_6
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieved "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from PPS"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v4    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catchall_1
    move-exception v6

    goto :goto_2

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v4    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :cond_7
    if-eqz v1, :cond_1

    if-eqz v7, :cond_8

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto/16 :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_9
    :try_start_7
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string v8, "Failed to build HomeSP"

    invoke-direct {v6, v8}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v4    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catch_3
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_a
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_3
.end method

.method public removeSP(Ljava/lang/String;)V
    .locals 3
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No HS20 profile to delete for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting HS20 profile for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->writeMO(Ljava/util/Collection;Ljava/io/File;)V

    goto :goto_0
.end method

.method public updateAndSaveAllSps(Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    const/4 v0, 0x0

    .local v0, "dirty":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .local v4, "newSet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    new-instance v5, Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .local v5, "spClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .local v2, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Passed HomeSP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .local v1, "existing":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    if-nez v1, :cond_0

    const/4 v0, 0x1

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "New HomeSP"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->deepEquals(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getClone(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-equal HomeSP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keeping HomeSP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "existing":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v2    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Saving all SPs (%s): current %s (%d), new %s (%d)"

    const/4 v6, 0x5

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    if-eqz v0, :cond_3

    const-string v6, "dirty"

    :goto_1
    aput-object v6, v9, v10

    const/4 v6, 0x1

    iget-object v10, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->fqdnList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x2

    iget-object v10, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x3

    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->fqdnList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Not persisting"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_3
    const-string v6, "clean"

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    invoke-static {v4, v6, v7}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->rewriteMO(Ljava/util/Collection;Ljava/util/Map;Ljava/io/File;)V

    goto :goto_2
.end method
