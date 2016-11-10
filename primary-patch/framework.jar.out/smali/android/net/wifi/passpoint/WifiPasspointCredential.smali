.class public Landroid/net/wifi/passpoint/WifiPasspointCredential;
.super Ljava/lang/Object;
.source "WifiPasspointCredential.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointCredential;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PasspointCredential"


# instance fields
.field private mAaaCertUrl:Ljava/lang/String;

.field private mAaaSha256Fingerprint:Ljava/lang/String;

.field private mCaRootCert:Ljava/lang/String;

.field private mCertSha256Fingerprint:Ljava/lang/String;

.field private mCertType:Ljava/lang/String;

.field private mCheckAaaServerCertStatus:Z

.field private mClientCert:Ljava/lang/String;

.field private mCreationDate:Ljava/lang/String;

.field private mCredentialName:Ljava/lang/String;

.field private mCrednetialPriority:I

.field private mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field private mExpirationDate:Ljava/lang/String;

.field private mFriendlyName:Ljava/lang/String;

.field private mHomeOIList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeSpFqdn:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mInnerMethod:Ljava/lang/String;

.field private mIsMachineRemediation:Z

.field private mMaxBssLoad:Ljava/lang/String;

.field private mMcc:Ljava/lang/String;

.field private mMinBackhaulThresholdNetwork:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mMnc:Ljava/lang/String;

.field private mOtherHomePartnerList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;",
            ">;"
        }
    .end annotation
.end field

.field private mPasswd:Ljava/lang/String;

.field private mPolicyUpdateInterval:Ljava/lang/String;

.field private mPolicyUpdateMethod:Ljava/lang/String;

.field private mPolicyUpdatePassword:Ljava/lang/String;

.field private mPolicyUpdateRestriction:Ljava/lang/String;

.field private mPolicyUpdateUri:Ljava/lang/String;

.field private mPolicyUpdateUsername:Ljava/lang/String;

.field private mPreferredRoamingPartnerList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;",
            ">;"
        }
    .end annotation
.end field

.field private mRealm:Ljava/lang/String;

.field private mRequiredProtoPortTuple:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;",
            ">;"
        }
    .end annotation
.end field

.field private mSpExclusionList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionUpdateInterval:Ljava/lang/String;

.field private mSubscriptionUpdateMethod:Ljava/lang/String;

.field private mSubscriptionUpdatePassword:Ljava/lang/String;

.field private mSubscriptionUpdateRestriction:Ljava/lang/String;

.field private mSubscriptionUpdateURI:Ljava/lang/String;

.field private mSubscriptionUpdateUsername:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mUpdateIdentifier:Ljava/lang/String;

.field private mUserPreferred:Z

.field private mUsername:Ljava/lang/String;

.field private mWifiSpFqdn:Ljava/lang/String;

.field private mWifiTreePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointCredential$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointCredential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 1
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "fqdn"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0, p3}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "caroot"    # Ljava/lang/String;
    .param p3, "clientcert"    # Ljava/lang/String;
    .param p4, "mcc"    # Ljava/lang/String;
    .param p5, "mnc"    # Ljava/lang/String;
    .param p6, "sp"    # Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;
    .param p7, "credinfo"    # Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    if-nez p7, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCaRootCert:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mClientCert:Ljava/lang/String;

    iget-object v4, p6, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;->nodeName:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mWifiSpFqdn:Ljava/lang/String;

    iget-object v4, p6, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;->perProviderSubscription:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->UpdateIdentifier:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUpdateIdentifier:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->nodeName:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCredentialName:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->otherHomePartners:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mOtherHomePartnerList:Ljava/util/Collection;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .local v3, "set":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry3":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;

    .local v0, "aaa":Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;
    iget-object v4, v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertURL:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mAaaCertUrl:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertSHA256Fingerprint:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mAaaSha256Fingerprint:Ljava/lang/String;

    .end local v0    # "aaa":Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;
    .end local v1    # "entry3":Ljava/util/Map$Entry;
    :cond_1
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->digitalCertificate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;->CertificateType:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCertType:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->digitalCertificate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;->CertSHA256Fingerprint:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCertSha256Fingerprint:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Username:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Password:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iget-boolean v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->MachineManaged:Z

    iput-boolean v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mIsMachineRemediation:Z

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->eAPMethod:Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerMethod:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mInnerMethod:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->sim:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;->IMSI:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    iput-object p5, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->CreationDate:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCreationDate:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->ExpirationDate:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mExpirationDate:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->Realm:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    if-nez v4, :cond_2

    const/16 v4, 0x80

    iput v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    :goto_1
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->FQDN:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->UpdateInterval:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateInterval:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->UpdateMethod:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateMethod:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->Restriction:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateRestriction:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->URI:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateURI:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Username:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateUsername:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Password:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdatePassword:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->URI:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUri:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->UpdateInterval:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateInterval:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Username:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUsername:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Password:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdatePassword:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->Restriction:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateRestriction:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->UpdateMethod:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateMethod:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->preferredRoamingPartnerList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPreferredRoamingPartnerList:Ljava/util/Collection;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->minBackhaulThreshold:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMinBackhaulThresholdNetwork:Ljava/util/Collection;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->requiredProtoPortTuple:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRequiredProtoPortTuple:Ljava/util/Collection;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->maximumBSSLoadValue:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMaxBssLoad:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->sPExclusionList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSpExclusionList:Ljava/util/Collection;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->homeOIList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeOIList:Ljava/util/Collection;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->FriendlyName:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mFriendlyName:Ljava/lang/String;

    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    iget-boolean v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->CheckAAAServerCertStatus:Z

    iput-boolean v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCheckAaaServerCertStatus:Z

    goto/16 :goto_0

    :cond_2
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    goto/16 :goto_1
.end method

.method static synthetic access$002(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mWifiSpFqdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCredentialName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/net/wifi/passpoint/WifiPasspointCredential;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    return p1
.end method

.method static synthetic access$402(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public compareTo(Landroid/net/wifi/passpoint/WifiPasspointCredential;)I
    .locals 2
    .param p1, "another"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;

    .prologue
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    iget v1, p1, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    iget v1, p1, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, "result":Z
    instance-of v4, p1, Landroid/net/wifi/passpoint/WifiPasspointCredential;

    if-eqz v4, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;

    .local v0, "other":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    const-string v5, "TTLS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    const-string v5, "TLS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mClientCert:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mClientCert:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    .end local v0    # "other":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    :cond_2
    :goto_2
    return v1

    .restart local v0    # "other":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method public getAaaCertUrl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mAaaCertUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAaaSha256Fingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mAaaSha256Fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getBackhaulThresholdList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMinBackhaulThresholdNetwork:Ljava/util/Collection;

    return-object v0
.end method

.method public getCaRootCertPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCaRootCert:Ljava/lang/String;

    return-object v0
.end method

.method public getCertSha256Fingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCertSha256Fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getCertType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCertType:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckAaaServerCertStatus()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCheckAaaServerCertStatus:Z

    return v0
.end method

.method public getClientCertPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mClientCert:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationDate()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCreationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCredName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCredentialName:Ljava/lang/String;

    return-object v0
.end method

.method public getEnterpriseConfig()Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 2

    .prologue
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    return-object v0
.end method

.method public getExpirationDate()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mExpirationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeOiList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeOIList:Ljava/util/Collection;

    return-object v0
.end method

.method public getHomeSpFqdn()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMachineRemediation()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mIsMachineRemediation:Z

    return v0
.end method

.method public getMaxBssLoad()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMaxBssLoad:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherHomePartnerList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mOtherHomePartnerList:Ljava/util/Collection;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyUpdateInterval()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateInterval:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyUpdateMethod()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyUpdatePassword()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdatePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyUpdateRestriction()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateRestriction:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyUpdateUri()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyUpdateUsername()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredRoamingPartnerList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPreferredRoamingPartnerList:Ljava/util/Collection;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    goto :goto_0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredProtoPortList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRequiredProtoPortTuple:Ljava/util/Collection;

    return-object v0
.end method

.method public getSPExclusionList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSpExclusionList:Ljava/util/Collection;

    return-object v0
.end method

.method public getSubscriptionUpdateInterval()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateInterval:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionUpdatePassword()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdatePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionUpdateRestriction()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateRestriction:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionUpdateURI()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateURI:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionUpdateUsername()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUpdateIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateMethod()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPreference()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    return v0
.end method

.method public getWifiSpFqdn()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mWifiSpFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    const/16 v0, 0xd0

    .local v0, "hash":I
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mWifiSpFqdn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCredentialName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    return-void
.end method

.method public setEnterpriseConfig(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    return-void
.end method

.method public setExpirationDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "expirationdate"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mExpirationDate:Ljava/lang/String;

    return-void
.end method

.method public setHomeFqdn(Ljava/lang/String;)V
    .locals 0
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    return-void
.end method

.method public setUpdateMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateMethod:Ljava/lang/String;

    return-void
.end method

.method public setUserPreference(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .local v6, "sb":Ljava/lang/StringBuffer;
    const-string v4, "<none>"

    .local v4, "none":Ljava/lang/String;
    const-string v7, ", UpdateIdentifier: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUpdateIdentifier:Ljava/lang/String;

    if-nez v7, :cond_0

    move-object v7, v4

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", SubscriptionUpdateMethod: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateMethod:Ljava/lang/String;

    if-nez v7, :cond_1

    move-object v7, v4

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", Type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    if-nez v7, :cond_2

    move-object v7, v4

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", Username: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    if-nez v7, :cond_3

    move-object v7, v4

    :goto_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", Passwd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    if-nez v7, :cond_4

    move-object v7, v4

    :goto_4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", SubDMAccUsername: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateUsername:Ljava/lang/String;

    if-nez v7, :cond_5

    move-object v7, v4

    :goto_5
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", SubDMAccPassword: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdatePassword:Ljava/lang/String;

    if-nez v7, :cond_6

    move-object v7, v4

    :goto_6
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", PolDMAccUsername: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUsername:Ljava/lang/String;

    if-nez v7, :cond_7

    move-object v7, v4

    :goto_7
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", PolDMAccPassword: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdatePassword:Ljava/lang/String;

    if-nez v7, :cond_8

    move-object v7, v4

    :goto_8
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", Imsi: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    if-nez v7, :cond_9

    move-object v7, v4

    :goto_9
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", Mcc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    if-nez v7, :cond_a

    move-object v7, v4

    :goto_a
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", Mnc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    if-nez v7, :cond_b

    move-object v7, v4

    :goto_b
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", CaRootCert: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCaRootCert:Ljava/lang/String;

    if-nez v7, :cond_c

    move-object v7, v4

    :goto_c
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", Realm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    if-nez v7, :cond_d

    move-object v7, v4

    :goto_d
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", Priority: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", Fqdn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    if-nez v7, :cond_e

    move-object v7, v4

    :goto_e
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", Otherhomepartners: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mOtherHomePartnerList:Ljava/util/Collection;

    if-nez v7, :cond_f

    move-object v7, v4

    :goto_f
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", ExpirationDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mExpirationDate:Ljava/lang/String;

    if-nez v7, :cond_10

    move-object v7, v4

    :goto_10
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", MaxBssLoad: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMaxBssLoad:Ljava/lang/String;

    if-nez v8, :cond_11

    .end local v4    # "none":Ljava/lang/String;
    :goto_11
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", SPExclusionList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSpExclusionList:Ljava/util/Collection;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPreferredRoamingPartnerList:Ljava/util/Collection;

    if-eqz v7, :cond_12

    const-string v7, "PreferredRoamingPartnerList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPreferredRoamingPartnerList:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;

    .local v5, "prpListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;
    const-string v7, "[fqdnmatch:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->FQDN_Match:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", priority:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->Priority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", country:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->Country:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_12

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "prpListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;
    .restart local v4    # "none":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUpdateIdentifier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateMethod:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    goto/16 :goto_3

    :cond_4
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    goto/16 :goto_4

    :cond_5
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateUsername:Ljava/lang/String;

    goto/16 :goto_5

    :cond_6
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdatePassword:Ljava/lang/String;

    goto/16 :goto_6

    :cond_7
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUsername:Ljava/lang/String;

    goto/16 :goto_7

    :cond_8
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdatePassword:Ljava/lang/String;

    goto/16 :goto_8

    :cond_9
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    goto/16 :goto_9

    :cond_a
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    goto/16 :goto_a

    :cond_b
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    goto/16 :goto_b

    :cond_c
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCaRootCert:Ljava/lang/String;

    goto/16 :goto_c

    :cond_d
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    goto/16 :goto_d

    :cond_e
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    goto/16 :goto_e

    :cond_f
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mOtherHomePartnerList:Ljava/util/Collection;

    goto/16 :goto_f

    :cond_10
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mExpirationDate:Ljava/lang/String;

    goto/16 :goto_10

    :cond_11
    iget-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMaxBssLoad:Ljava/lang/String;

    goto/16 :goto_11

    .end local v4    # "none":Ljava/lang/String;
    :cond_12
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeOIList:Ljava/util/Collection;

    if-eqz v7, :cond_13

    const-string v7, "HomeOIList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeOIList:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;

    .local v1, "HomeOIListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;
    const-string v7, "[HomeOI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;->HomeOI:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", HomeOIRequired:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-boolean v8, v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;->HomeOIRequired:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    .end local v1    # "HomeOIListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_13
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMinBackhaulThresholdNetwork:Ljava/util/Collection;

    if-eqz v7, :cond_14

    const-string v7, "BackHaulThreshold:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMinBackhaulThresholdNetwork:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;

    .local v0, "BhtListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;
    const-string v7, "[networkType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;->NetworkType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", dlBandwidth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;->DLBandwidth:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", ulBandwidth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;->ULBandwidth:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    .end local v0    # "BhtListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_14
    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRequiredProtoPortTuple:Ljava/util/Collection;

    if-eqz v7, :cond_15

    const-string v7, "WifiMORequiredProtoPortTupleList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRequiredProtoPortTuple:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;

    .local v2, "RpptListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;
    const-string v7, "[IPProtocol:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, v2, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->IPProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", PortNumber:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, v2, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->PortNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .end local v2    # "RpptListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_15
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mWifiSpFqdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCredentialName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
