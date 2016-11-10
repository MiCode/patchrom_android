.class public Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
.super Ljava/lang/Object;
.source "AccountSyncSettingsBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final JSON_FORMAT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final JSON_FORMAT_HEADER_KEY:Ljava/lang/String; = "account_data"

.field private static final JSON_FORMAT_VERSION:I = 0x1

.field private static final KEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final KEY_ACCOUNT_AUTHORITIES:Ljava/lang/String; = "authorities"

.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "name"

.field private static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_AUTHORITY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_AUTHORITY_SYNC_ENABLED:Ljava/lang/String; = "syncEnabled"

.field private static final KEY_AUTHORITY_SYNC_STATE:Ljava/lang/String; = "syncState"

.field private static final KEY_MASTER_SYNC_ENABLED:Ljava/lang/String; = "masterSyncEnabled"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final MD5_BYTE_SIZE:I = 0x10

.field private static final STATE_VERSION:I = 0x1

.field private static final SYNC_REQUEST_LATCH_TIMEOUT_SECONDS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AccountSyncSettingsBackupHelper"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    return-void
.end method

.method private generateMd5Checksum([B)[B
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .local v0, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    goto :goto_0
.end method

.method private getAccountsHashSet()Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v6, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .local v2, "accounts":[Landroid/accounts/Account;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .local v1, "accountHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/accounts/Account;>;"
    move-object v3, v2

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-object v1
.end method

.method private readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B
    .locals 8
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x1

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v0, "dataInput":Ljava/io/DataInputStream;
    new-array v2, v7, [B

    .local v2, "oldMd5Checksum":[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .local v3, "stateVersion":I
    if-gt v3, v6, :cond_0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    const-string v4, "AccountSyncSettingsBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Backup state version is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (support only up to version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .end local v3    # "stateVersion":I
    :goto_1
    return-object v2

    :catch_0
    move-exception v4

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    throw v4
.end method

.method private restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "accountJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-string v9, "authorities"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .local v3, "authorities":Lorg/json/JSONArray;
    const-string v9, "name"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "accountName":Ljava/lang/String;
    const-string v9, "type"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "accountType":Ljava/lang/String;
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "account":Landroid/accounts/Account;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_2

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .local v4, "authority":Lorg/json/JSONObject;
    const-string v9, "name"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "authorityName":Ljava/lang/String;
    const-string v9, "syncEnabled"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .local v7, "wasSyncEnabled":Z
    const-string v9, "syncState"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .local v8, "wasSyncable":I
    invoke-static {v0, v5, v7, v10}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    if-nez v7, :cond_0

    if-nez v8, :cond_1

    move v9, v10

    :goto_1
    invoke-static {v0, v5, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    goto :goto_1

    .end local v4    # "authority":Lorg/json/JSONObject;
    .end local v5    # "authorityName":Ljava/lang/String;
    .end local v7    # "wasSyncEnabled":Z
    .end local v8    # "wasSyncable":I
    :cond_2
    return-void
.end method

.method private serializeAccountSyncSettingsToJSON()Lorg/json/JSONObject;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v6

    .local v6, "accounts":[Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getUserId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v17

    .local v17, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .local v5, "accountTypeToAuthorities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v7, v17

    .local v7, "arr$":[Landroid/content/SyncAdapterType;
    array-length v15, v7

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v15, :cond_2

    aget-object v16, v7, v13

    .local v16, "syncAdapter":Landroid/content/SyncAdapterType;
    invoke-virtual/range {v16 .. v16}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v20

    if-nez v20, :cond_0

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v16    # "syncAdapter":Landroid/content/SyncAdapterType;
    :cond_2
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .local v12, "backupJSON":Lorg/json/JSONObject;
    const-string v20, "version"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v20, "masterSyncEnabled"

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .local v4, "accountJSONArray":Lorg/json/JSONArray;
    move-object v7, v6

    .local v7, "arr$":[Landroid/accounts/Account;
    array-length v15, v7

    const/4 v13, 0x0

    move v14, v13

    .end local v13    # "i$":I
    .local v14, "i$":I
    :goto_2
    if-ge v14, v15, :cond_6

    aget-object v2, v7, v14

    .local v2, "account":Landroid/accounts/Account;
    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .local v8, "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_4

    .end local v14    # "i$":I
    :cond_3
    :goto_3
    add-int/lit8 v13, v14, 0x1

    .restart local v13    # "i$":I
    move v14, v13

    .end local v13    # "i$":I
    .restart local v14    # "i$":I
    goto :goto_2

    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .local v3, "accountJSON":Lorg/json/JSONObject;
    const-string v20, "name"

    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v20, "type"

    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .local v9, "authoritiesJSONArray":Lorg/json/JSONArray;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v14    # "i$":I
    .local v13, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .local v10, "authority":Ljava/lang/String;
    invoke-static {v2, v10}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v19

    .local v19, "syncState":I
    invoke-static {v2, v10}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v18

    .local v18, "syncEnabled":Z
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .local v11, "authorityJSON":Lorg/json/JSONObject;
    const-string v20, "name"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v20, "syncState"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v20, "syncEnabled"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .end local v10    # "authority":Ljava/lang/String;
    .end local v11    # "authorityJSON":Lorg/json/JSONObject;
    .end local v18    # "syncEnabled":Z
    .end local v19    # "syncState":I
    :cond_5
    const-string v20, "authorities"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "accountJSON":Lorg/json/JSONObject;
    .end local v8    # "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "authoritiesJSONArray":Lorg/json/JSONArray;
    .end local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "i$":I
    :cond_6
    const-string v20, "accounts"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v12
.end method

.method private writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V
    .locals 4
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "md5Checksum"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v0, "dataOutput":Ljava/io/DataOutputStream;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 9
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "output"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->serializeAccountSyncSettingsToJSON()Lorg/json/JSONObject;

    move-result-object v1

    .local v1, "dataJSON":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "dataBytes":[B
    invoke-direct {p0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B

    move-result-object v5

    .local v5, "oldMd5Checksum":[B
    invoke-direct {p0, v0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->generateMd5Checksum([B)[B

    move-result-object v4

    .local v4, "newMd5Checksum":[B
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_0

    array-length v2, v0

    .local v2, "dataSize":I
    const-string v6, "account_data"

    invoke-virtual {p2, v6, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    invoke-virtual {p2, v0, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    const-string v6, "AccountSyncSettingsBackupHelper"

    const-string v7, "Backup successful."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "dataSize":I
    :goto_0
    invoke-direct {p0, p3, v4}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V

    .end local v0    # "dataBytes":[B
    .end local v1    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "newMd5Checksum":[B
    .end local v5    # "oldMd5Checksum":[B
    :goto_1
    return-void

    .restart local v0    # "dataBytes":[B
    .restart local v1    # "dataJSON":Lorg/json/JSONObject;
    .restart local v4    # "newMd5Checksum":[B
    .restart local v5    # "oldMd5Checksum":[B
    :cond_0
    const-string v6, "AccountSyncSettingsBackupHelper"

    const-string v7, "Old and new MD5 checksums match. Skipping backup."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v0    # "dataBytes":[B
    .end local v1    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "newMd5Checksum":[B
    .end local v5    # "oldMd5Checksum":[B
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    const-string v6, "AccountSyncSettingsBackupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t backup account sync settings\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 17
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v14

    new-array v8, v14, [B

    .local v8, "dataBytes":[B
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    new-instance v10, Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-direct {v10, v8, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .local v10, "dataString":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v9, "dataJSON":Lorg/json/JSONObject;
    const-string v14, "masterSyncEnabled"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .local v13, "masterSyncEnabled":Z
    const-string v14, "accounts"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .local v3, "accountJSONArray":Lorg/json/JSONArray;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v7

    .local v7, "currentMasterSyncEnabled":Z
    if-eqz v7, :cond_0

    const/4 v14, 0x0

    invoke-static {v14}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getAccountsHashSet()Ljava/util/HashSet;

    move-result-object v6

    .local v6, "currentAccounts":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/accounts/Account;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v12, v14, :cond_2

    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .local v2, "accountJSON":Lorg/json/JSONObject;
    const-string v14, "name"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "accountName":Ljava/lang/String;
    const-string v14, "type"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "accountType":Ljava/lang/String;
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "account":Landroid/accounts/Account;
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .end local v1    # "account":Landroid/accounts/Account;
    .end local v2    # "accountJSON":Lorg/json/JSONObject;
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "accountType":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-static {v13}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    const-string v14, "AccountSyncSettingsBackupHelper"

    const-string v15, "Restore successful."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "accountJSONArray":Lorg/json/JSONArray;
    .end local v6    # "currentAccounts":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/accounts/Account;>;"
    .end local v7    # "currentMasterSyncEnabled":Z
    .end local v9    # "dataJSON":Lorg/json/JSONObject;
    .end local v10    # "dataString":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "masterSyncEnabled":Z
    :goto_1
    return-void

    .restart local v3    # "accountJSONArray":Lorg/json/JSONArray;
    .restart local v7    # "currentMasterSyncEnabled":Z
    .restart local v9    # "dataJSON":Lorg/json/JSONObject;
    .restart local v10    # "dataString":Ljava/lang/String;
    .restart local v13    # "masterSyncEnabled":Z
    :catchall_0
    move-exception v14

    invoke-static {v13}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    throw v14
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v3    # "accountJSONArray":Lorg/json/JSONArray;
    .end local v7    # "currentMasterSyncEnabled":Z
    .end local v9    # "dataJSON":Lorg/json/JSONObject;
    .end local v10    # "dataString":Ljava/lang/String;
    .end local v13    # "masterSyncEnabled":Z
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    :goto_2
    const-string v14, "AccountSyncSettingsBackupHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Couldn\'t restore account sync settings\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v11    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v11

    goto :goto_2
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    return-void
.end method
