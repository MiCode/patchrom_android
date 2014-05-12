.class public Lcom/android/internal/notification/DemoContactNotificationScorer;
.super Ljava/lang/Object;
.source "DemoContactNotificationScorer.java"

# interfaces
.implements Lcom/android/internal/notification/NotificationScorer;


# static fields
.field private static final CONTACTS_URI:Landroid/net/Uri; = null

.field private static final DBG:Z = false

.field protected static final ENABLE_CONTACT_SCORER:Z = true

.field private static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final RELEVANT_KEYS_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SETTING_ENABLE_SCORER:Ljava/lang/String; = "contact_scorer_enabled"

.field private static final TAG:Ljava/lang/String; = "DemoContactNotificationScorer"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.infoText"

    aput-object v1, v0, v3

    const-string v1, "android.text"

    aput-object v1, v0, v4

    const-string v1, "android.textLines"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "android.subText"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.title"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/notification/DemoContactNotificationScorer;->RELEVANT_KEYS_LIST:Ljava/util/List;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/notification/DemoContactNotificationScorer;->PROJECTION:[Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/internal/notification/DemoContactNotificationScorer;->CONTACTS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "low"
    .parameter "high"

    .prologue
    if-ge p0, p1, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private static extractSpannedStrings(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 11
    .parameter "charSequence"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    if-nez p0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    instance-of v8, p0, Landroid/text/SpannableString;

    if-nez v8, :cond_2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_0

    :cond_2
    move-object v5, p0

    check-cast v5, Landroid/text/SpannableString;

    .local v5, spannableString:Landroid/text/SpannableString;
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v8

    const-class v9, Ljava/lang/Object;

    invoke-virtual {v5, v10, v8, v9}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .local v6, ssArr:[Ljava/lang/Object;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, sss:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .local v4, spanObj:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v5, v4}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v4}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/text/SpannableString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v8, "DemoContactNotificationScorer"

    const-string v9, "Bad indices when extracting spanned subsequence"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static getQuestionMarksInParens(I)Ljava/lang/String;
    .locals 4
    .parameter "n"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private hasStarredContact(Landroid/os/Bundle;)Z
    .locals 16
    .parameter "extras"

    .prologue
    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .local v13, qStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/internal/notification/DemoContactNotificationScorer;->RELEVANT_KEYS_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .local v14, rk:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/android/internal/notification/DemoContactNotificationScorer;->extractSpannedStrings(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, [Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    move-object v7, v1

    check-cast v7, [Ljava/lang/CharSequence;

    .local v7, arr$:[Ljava/lang/CharSequence;
    array-length v11, v7

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    if-ge v10, v11, :cond_2

    aget-object v12, v7, v10

    .local v12, line:Ljava/lang/CharSequence;
    invoke-static {v12}, Lcom/android/internal/notification/DemoContactNotificationScorer;->extractSpannedStrings(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v7           #arr$:[Ljava/lang/CharSequence;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #line:Ljava/lang/CharSequence;
    :cond_4
    const-string v1, "DemoContactNotificationScorer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Strange, the extra "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is of unexpected type."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v14           #rk:Ljava/lang/String;
    :cond_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .local v5, qStringsArr:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display_name IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v5

    invoke-static {v2}, Lcom/android/internal/notification/DemoContactNotificationScorer;->getQuestionMarksInParens(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "starred"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " =\'1\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, selection:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/notification/DemoContactNotificationScorer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/notification/DemoContactNotificationScorer;->CONTACTS_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/notification/DemoContactNotificationScorer;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x1

    :goto_3
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_4
    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v15

    .local v15, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "DemoContactNotificationScorer"

    const-string v2, "Problem getting content resolver or performing contacts query."

    invoke-static {v1, v2, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v15           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1
.end method

.method private static priorityBumpMap(I)I
    .locals 8
    .parameter "incomingScore"

    .prologue
    const/16 v0, 0xa

    .local v0, pm:I
    move v1, p0

    .local v1, theScore:I
    const/16 v2, -0x14

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Lcom/android/internal/notification/DemoContactNotificationScorer;->clamp(III)I

    move-result v1

    if-eq v1, p0, :cond_0

    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    neg-int v2, v0

    if-gt v1, v2, :cond_1

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff8

    add-int/lit8 v6, v1, 0x14

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    :goto_1
    move p0, v1

    goto :goto_0

    :cond_1
    int-to-double v2, v1

    const-wide/high16 v4, 0x3fe0

    rsub-int/lit8 v6, v1, 0x14

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_1
.end method


# virtual methods
.method public getScore(Landroid/app/Notification;I)I
    .locals 3
    .parameter "notification"
    .parameter "score"

    .prologue
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/notification/DemoContactNotificationScorer;->mEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    move v1, p2

    .end local p2
    .local v1, score:I
    :goto_0
    return v1

    .end local v1           #score:I
    .restart local p2
    :cond_1
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/internal/notification/DemoContactNotificationScorer;->hasStarredContact(Landroid/os/Bundle;)Z

    move-result v0

    .local v0, hasStarredPriority:Z
    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/android/internal/notification/DemoContactNotificationScorer;->priorityBumpMap(I)I

    move-result p2

    :cond_2
    move v1, p2

    .end local p2
    .restart local v1       #score:I
    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/internal/notification/DemoContactNotificationScorer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/notification/DemoContactNotificationScorer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contact_scorer_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/notification/DemoContactNotificationScorer;->mEnabled:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
