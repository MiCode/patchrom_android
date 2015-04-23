.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/LockSettingsService$CredentialUtil;
    }
.end annotation


# static fields
.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final VALID_SETTINGS:[Ljava/lang/String;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mFirstCallToVold:Z

.field private mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mStorage:Lcom/android/server/LockSettingsStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lockscreen.lockedoutpermanently"

    aput-object v1, v0, v3

    const-string v1, "lockscreen.lockoutattemptdeadline"

    aput-object v1, v0, v4

    const-string v1, "lockscreen.patterneverchosen"

    aput-object v1, v0, v5

    const-string v1, "lockscreen.password_type"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "lockscreen.password_type_alternate"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lockscreen.password_salt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lockscreen.disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lockscreen.options"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lockscreen.biometric_weak_fallback"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lockscreen.biometricweakeverchosen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lockscreen.power_button_instantly_locks"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lockscreen.passwordhistory"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lock_pattern_autolock"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lock_biometric_weak_flags"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "lock_pattern_visible_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lock_pattern_tactile_feedback_enabled"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    const-string v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "lockscreen.password_salt"

    aput-object v1, v0, v3

    const-string v1, "lockscreen.passwordhistory"

    aput-object v1, v0, v4

    const-string v1, "lockscreen.password_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    const-string v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    new-instance v0, Lcom/android/server/LockSettingsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$2;-><init>(Lcom/android/server/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STARTING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Lcom/android/server/LockSettingsStorage;

    new-instance v1, Lcom/android/server/LockSettingsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LockSettingsService$1;-><init>(Lcom/android/server/LockSettingsService;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/LockSettingsStorage;-><init>(Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LockSettingsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LockSettingsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->removeUser(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/LockSettingsService;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/LockSettingsService;Landroid/service/gatekeeper/IGateKeeperService;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Landroid/service/gatekeeper/IGateKeeperService;

    .prologue
    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object p1
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 6
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.READ_CONTACTS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private final checkWritePermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p5}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v3

    .local v3, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    new-instance v8, Lcom/android/server/LockSettingsService$4;

    invoke-direct {v8, p0}, Lcom/android/server/LockSettingsService$4;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v1, p0

    move v2, p5

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 13
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v5

    .local v5, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v5, :cond_1

    iget-boolean v3, v5, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    if-eqz v3, :cond_1

    const/4 v11, 0x1

    .local v11, "shouldReEnrollBaseZero":Z
    :goto_0
    if-eqz v11, :cond_2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "patternToVerify":Ljava/lang/String;
    :goto_1
    new-instance v10, Lcom/android/server/LockSettingsService$3;

    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$3;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v3, p0

    move/from16 v4, p5

    move v7, p2

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_0

    if-eqz v11, :cond_0

    move/from16 v0, p5

    invoke-virtual {p0, p1, v6, v0}, Lcom/android/server/LockSettingsService;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-object v2

    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v6    # "patternToVerify":Ljava/lang/String;
    .end local v11    # "shouldReEnrollBaseZero":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .restart local v11    # "shouldReEnrollBaseZero":Z
    :cond_2
    move-object v6, p1

    .restart local v6    # "patternToVerify":Ljava/lang/String;
    goto :goto_1
.end method

.method private enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B
    .locals 6
    .param p1, "enrolledHandle"    # [B
    .param p2, "enrolledCredential"    # Ljava/lang/String;
    .param p3, "toEnroll"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    if-nez p2, :cond_0

    move-object v0, v4

    .local v0, "enrolledCredentialBytes":[B
    :goto_0
    if-nez p3, :cond_1

    move-object v3, v4

    .local v3, "toEnrollBytes":[B
    :goto_1
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    invoke-interface {v5, p4, p1, v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2

    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-nez v2, :cond_2

    :goto_2
    return-object v4

    .end local v0    # "enrolledCredentialBytes":[B
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v3    # "toEnrollBytes":[B
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .restart local v0    # "enrolledCredentialBytes":[B
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_1

    .restart local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v3    # "toEnrollBytes":[B
    :cond_2
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .local v1, "hash":[B
    if-eqz v1, :cond_3

    invoke-direct {p0, p3, p4}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    :goto_3
    move-object v4, v1

    goto :goto_2

    :cond_3
    const-string v4, "LockSettingsService"

    const-string v5, "Throttled while enrolling a password"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private getCurrentHandle(I)[B
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->getStoredCredentialType(I)I

    move-result v2

    .local v2, "currentHandleType":I
    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    .local v1, "currentHandle":[B
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-nez v1, :cond_0

    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stored handle type ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] but no handle available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    .end local v1    # "currentHandle":[B
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .local v0, "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .restart local v1    # "currentHandle":[B
    :cond_1
    goto :goto_0

    .end local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v1    # "currentHandle":[B
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .restart local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .restart local v1    # "currentHandle":[B
    :cond_2
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    const-string v2, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    goto :goto_0

    :cond_1
    const-string v2, "LockSettingsService"

    const-string v3, "Unable to acquire GateKeeperService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private migrateOldData()V
    .locals 34

    .prologue
    :try_start_0
    const-string v31, "migrated"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .local v11, "cr":Landroid/content/ContentResolver;
    sget-object v10, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_1

    aget-object v29, v10, v15

    .local v29, "validSetting":Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-static {v11, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .local v30, "value":Ljava/lang/String;
    if-eqz v30, :cond_0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .end local v29    # "validSetting":Ljava/lang/String;
    .end local v30    # "value":Ljava/lang/String;
    :cond_1
    const-string v31, "migrated"

    const-string v32, "true"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v31, "LockSettingsService"

    const-string v32, "Migrated lock settings to new location"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    :cond_2
    const-string v31, "migrated_user_specific"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "user"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .local v24, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .restart local v11    # "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .local v28, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v25, 0x0

    .local v25, "user":I
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    .local v27, "userId":I
    const-string v6, "lock_screen_owner_info"

    .local v6, "OWNER_INFO":Ljava/lang/String;
    const-string v31, "lock_screen_owner_info"

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .local v19, "ownerInfo":Ljava/lang/String;
    if-eqz v19, :cond_3

    const-string v31, "lock_screen_owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v31, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move/from16 v2, v27

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_3
    const-string v7, "lock_screen_owner_info_enabled"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .local v7, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_1
    const-string v31, "lock_screen_owner_info_enabled"

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .local v17, "ivalue":I
    if-eqz v17, :cond_5

    const/4 v13, 0x1

    .local v13, "enabled":Z
    :goto_2
    const-string v31, "lock_screen_owner_info_enabled"

    if-eqz v13, :cond_6

    const-wide/16 v32, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v13    # "enabled":Z
    .end local v17    # "ivalue":I
    :cond_4
    :goto_4
    :try_start_2
    const-string v31, "lock_screen_owner_info_enabled"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v27

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .restart local v17    # "ivalue":I
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .restart local v13    # "enabled":Z
    :cond_6
    const-wide/16 v32, 0x0

    goto :goto_3

    .end local v13    # "enabled":Z
    .end local v17    # "ivalue":I
    :catch_0
    move-exception v12

    .local v12, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_4

    const-string v31, "lock_screen_owner_info_enabled"

    const-wide/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .end local v6    # "OWNER_INFO":Ljava/lang/String;
    .end local v7    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v19    # "ownerInfo":Ljava/lang/String;
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v25    # "user":I
    .end local v27    # "userId":I
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_1
    move-exception v20

    .local v20, "re":Landroid/os/RemoteException;
    const-string v31, "LockSettingsService"

    const-string v32, "Unable to migrate old data"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v20    # "re":Landroid/os/RemoteException;
    :cond_7
    :goto_5
    return-void

    .restart local v11    # "cr":Landroid/content/ContentResolver;
    .restart local v24    # "um":Landroid/os/UserManager;
    .restart local v25    # "user":I
    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    :try_start_3
    const-string v31, "migrated_user_specific"

    const-string v32, "true"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v31, "LockSettingsService"

    const-string v32, "Migrated per-user lock settings to new location"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v25    # "user":I
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_9
    const-string v31, "migrated_biometric_weak"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "user"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .restart local v24    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v14, v0, :cond_b

    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    .restart local v27    # "userId":I
    const-string v31, "lockscreen.password_type"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v22

    .local v22, "type":J
    const-string v31, "lockscreen.password_type_alternate"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v8

    .local v8, "alternateType":J
    const-wide/32 v32, 0x8000

    cmp-long v31, v22, v32

    if-nez v31, :cond_a

    const-string v31, "lockscreen.password_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v27

    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    :cond_a
    const-string v31, "lockscreen.password_type_alternate"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .end local v8    # "alternateType":J
    .end local v22    # "type":J
    .end local v27    # "userId":I
    :cond_b
    const-string v31, "migrated_biometric_weak"

    const-string v32, "true"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v31, "LockSettingsService"

    const-string v32, "Migrated biometric weak to use the fallback instead"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v14    # "i":I
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c
    const-string v31, "migrated_lockscreen_disabled"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "user"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .restart local v24    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v26

    .local v26, "userCount":I
    const/16 v21, 0x0

    .local v21, "switchableUsers":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_7
    move/from16 v0, v26

    if-ge v14, v0, :cond_e

    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v31 .. v31}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v31

    if-eqz v31, :cond_d

    add-int/lit8 v21, v21, 0x1

    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_e
    const/16 v31, 0x1

    move/from16 v0, v21

    move/from16 v1, v31

    if-le v0, v1, :cond_10

    const/4 v14, 0x0

    :goto_8
    move/from16 v0, v26

    if-ge v14, v0, :cond_10

    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    .local v16, "id":I
    const-string v31, "lockscreen.disabled"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v31

    if-eqz v31, :cond_f

    const-string v31, "lockscreen.disabled"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .end local v16    # "id":I
    :cond_10
    const-string v31, "migrated_lockscreen_disabled"

    const-string v32, "true"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v31, "LockSettingsService"

    const-string v32, "Migrated lockscreen disabled flag"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5
.end method

.method private removeUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->removeUser(I)V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .local v2, "ks":Landroid/security/KeyStore;
    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    .local v1, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "LockSettingsService"

    const-string v4, "unable to clear GK secure user id"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setKeystorePassword(Ljava/lang/String;I)V
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .local v4, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .local v1, "ks":Landroid/security/KeyStore;
    invoke-virtual {v4, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .local v2, "pi":Landroid/content/pm/UserInfo;
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    goto :goto_0

    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private unlockKeystore(Ljava/lang/String;I)V
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .local v4, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .local v1, "ks":Landroid/security/KeyStore;
    invoke-virtual {v4, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .local v2, "pi":Landroid/content/pm/UserInfo;
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    goto :goto_0

    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 17
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "challenge"    # J
    .param p7, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    if-nez v4, :cond_2

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    :cond_1
    :goto_0
    return-object v12

    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    :cond_3
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v4, :cond_5

    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    move-result-object v11

    .local v11, "hash":[B
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    const/4 v4, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v4, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    if-nez p4, :cond_5

    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    :cond_4
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .end local v11    # "hash":[B
    :cond_5
    const/4 v14, 0x0

    .local v14, "shouldReEnroll":Z
    if-eqz p4, :cond_9

    const/4 v15, 0x0

    .local v15, "token":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move/from16 v5, p1

    move-wide/from16 v6, p5

    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v10

    .local v10, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v13

    .local v13, "responseCode":I
    const/4 v4, 0x1

    if-ne v13, v4, :cond_6

    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v4

    invoke-direct {v12, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .end local v15    # "token":[B
    .local v12, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_1
    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    if-eqz v14, :cond_1

    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move-object/from16 v2, p3

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v15    # "token":[B
    :cond_6
    if-nez v13, :cond_8

    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v15

    if-nez v15, :cond_7

    const-string v4, "LockSettingsService"

    const-string v5, "verifyChallenge response had no associated payload"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_7
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v14

    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v12, v15}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_8
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .end local v10    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v13    # "responseCode":I
    .end local v15    # "token":[B
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move/from16 v0, p1

    invoke-interface {v4, v0, v5, v6}, Landroid/service/gatekeeper/IGateKeeperService;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v10

    .restart local v10    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v13

    .restart local v13    # "responseCode":I
    const/4 v4, 0x1

    if-ne v13, v4, :cond_a

    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v4

    invoke-direct {v12, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_a
    if-nez v13, :cond_b

    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v14

    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_b
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public checkVoldPassword(I)Z
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .local v1, "service":Landroid/os/storage/IMountService;
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPassword()Ljava/lang/String;

    move-result-object v0

    .local v0, "password":Ljava/lang/String;
    invoke-interface {v1}, Landroid/os/storage/IMountService;->clearPassword()V

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/LockSettingsService;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v4

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/LockSettingsService;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const-string v2, "lock_pattern_autolock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "ident":J
    :goto_1
    return-object v2

    .restart local v0    # "ident":J
    :cond_0
    :try_start_1
    const-string v2, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .end local v0    # "ident":J
    :cond_1
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public havePassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePattern(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v0

    return v0
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    move-result-object v0

    .local v0, "currentHandle":[B
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v3, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    invoke-direct {p0, v3, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    const-string v2, "LockSettingsService"

    const-string v3, "Saved credential provided, but none stored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p2, 0x0

    :cond_2
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v1, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    goto :goto_0

    :cond_3
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to enroll password"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    move-result-object v0

    .local v0, "currentHandle":[B
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v3, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    invoke-direct {p0, v3, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    const-string v2, "LockSettingsService"

    const-string v3, "Saved credential provided, but none stored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p2, 0x0

    :cond_2
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v1, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    goto :goto_0

    :cond_3
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to enroll pattern"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->migrateOldData()V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Failure retrieving IGateKeeperService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method
