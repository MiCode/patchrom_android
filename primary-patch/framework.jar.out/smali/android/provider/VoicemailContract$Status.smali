.class public final Landroid/provider/VoicemailContract$Status;
.super Ljava/lang/Object;
.source "VoicemailContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/VoicemailContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation


# static fields
.field public static final CONFIGURATION_STATE:Ljava/lang/String; = "configuration_state"

.field public static final CONFIGURATION_STATE_CAN_BE_CONFIGURED:I = 0x2

.field public static final CONFIGURATION_STATE_NOT_CONFIGURED:I = 0x1

.field public static final CONFIGURATION_STATE_OK:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_CHANNEL_STATE:Ljava/lang/String; = "data_channel_state"

.field public static final DATA_CHANNEL_STATE_NO_CONNECTION:I = 0x1

.field public static final DATA_CHANNEL_STATE_OK:I = 0x0

.field public static final DIR_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/voicemail.source.status"

.field public static final ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/voicemail.source.status"

.field public static final NOTIFICATION_CHANNEL_STATE:Ljava/lang/String; = "notification_channel_state"

.field public static final NOTIFICATION_CHANNEL_STATE_MESSAGE_WAITING:I = 0x2

.field public static final NOTIFICATION_CHANNEL_STATE_NO_CONNECTION:I = 0x1

.field public static final NOTIFICATION_CHANNEL_STATE_OK:I = 0x0

.field public static final PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "phone_account_component_name"

.field public static final PHONE_ACCOUNT_ID:Ljava/lang/String; = "phone_account_id"

.field public static final SETTINGS_URI:Ljava/lang/String; = "settings_uri"

.field public static final SOURCE_PACKAGE:Ljava/lang/String; = "source_package"

.field public static final VOICEMAIL_ACCESS_URI:Ljava/lang/String; = "voicemail_access_uri"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://com.android.voicemail/status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "source_package"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static isStatusPresent(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 7
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "statusUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static setStatus(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;III)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "configurationState"    # I
    .param p3, "dataChannelState"    # I
    .param p4, "notificationChannelState"    # I

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/VoicemailContract$Status;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "statusUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "phone_account_component_name"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "phone_account_id"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "configuration_state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "data_channel_state"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "notification_channel_state"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v0, v1}, Landroid/provider/VoicemailContract$Status;->isStatusPresent(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method
