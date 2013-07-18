.class public Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;
.super Lcom/android/internal/policy/impl/keyguard/UnReadObserver;
.source "EmailUnReadObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver$MessageColumns;,
        Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver$MailboxColumns;
    }
.end annotation


# static fields
.field private static final ALL_INBOX_SELECTION:Ljava/lang/String; = "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1,4)"

.field private static final ALL_LATEST_UNREAD_SELECTION:Ljava/lang/String; = "flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1,4) AND _id>?"

.field private static final ALL_UNREAD_SELECTION:Ljava/lang/String; = "flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1,4)"

.field private static final CONTENT_PROJECTION:[Ljava/lang/String; = null

.field private static final EMAIL_AUTHORITY:Ljava/lang/String; = "com.android.email.provider"

.field public static final EMAIL_CONTENT_URI:Landroid/net/Uri; = null

.field private static final EMAIL_MESSAGE_CONTENT_URI:Landroid/net/Uri; = null

.field private static final EMAIL_NOTIFIER_AUTHORITY:Ljava/lang/String; = "com.android.email.notifier"

.field private static final EMAIL_NOTIFIER_CONTENT_URI:Landroid/net/Uri; = null

.field private static final FLAG_LOADED_COMPLETE:I = 0x1

.field private static final FLAG_LOADED_DELETED:I = 0x3

.field private static final FLAG_LOADED_ENVELOPE:I = 0x4

.field private static final FLAG_LOADED_PARTIAL:I = 0x2

.field private static final FLAG_LOADED_SELECTION:Ljava/lang/String; = "flagLoaded IN (2,1,4)"

.field private static final FLAG_LOADED_UNLOADED:I = 0x0

.field private static final MESSAGE_ID_SELECTION:Ljava/lang/String; = "_id>?"

.field private static final READ:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EmailUnReadObserver"

.field private static final TYPE_INBOX:I = 0x0

.field private static final TYPE_NONE:I = -0x1

.field private static final UNREAD:I


# instance fields
.field private mLatestIdOnLock:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v0, "content://com.android.email.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;->EMAIL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.email.notifier"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;->EMAIL_NOTIFIER_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;->EMAIL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;->EMAIL_MESSAGE_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;->CONTENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V
    .locals 9
    .parameter "handler"
    .parameter "newEventView"
    .parameter "createTime"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;-><init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V

    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;->EMAIL_MESSAGE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1,4)"

    const/4 v4, 0x0

    const-string v5, "_id desc"

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v0 .. v8}, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;->mLatestIdOnLock:J

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;->EMAIL_MESSAGE_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;->CONTENT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;->mLatestIdOnLock:J

    return-wide v0
.end method

.method private static getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IJ)J
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "column"
    .parameter "defaultValue"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6, p6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide p7

    .end local p7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-wide p7

    .restart local p7
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public refreshUnReadNumber()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver$1;-><init>(Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
