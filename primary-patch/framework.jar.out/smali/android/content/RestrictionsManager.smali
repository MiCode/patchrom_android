.class public Landroid/content/RestrictionsManager;
.super Ljava/lang/Object;
.source "RestrictionsManager.java"


# static fields
.field public static final ACTION_PERMISSION_RESPONSE_RECEIVED:Ljava/lang/String; = "android.content.action.PERMISSION_RESPONSE_RECEIVED"

.field public static final ACTION_REQUEST_LOCAL_APPROVAL:Ljava/lang/String; = "android.content.action.REQUEST_LOCAL_APPROVAL"

.field public static final ACTION_REQUEST_PERMISSION:Ljava/lang/String; = "android.content.action.REQUEST_PERMISSION"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.content.extra.PACKAGE_NAME"

.field public static final EXTRA_REQUEST_BUNDLE:Ljava/lang/String; = "android.content.extra.REQUEST_BUNDLE"

.field public static final EXTRA_REQUEST_ID:Ljava/lang/String; = "android.content.extra.REQUEST_ID"

.field public static final EXTRA_REQUEST_TYPE:Ljava/lang/String; = "android.content.extra.REQUEST_TYPE"

.field public static final EXTRA_RESPONSE_BUNDLE:Ljava/lang/String; = "android.content.extra.RESPONSE_BUNDLE"

.field public static final META_DATA_APP_RESTRICTIONS:Ljava/lang/String; = "android.content.APP_RESTRICTIONS"

.field public static final REQUEST_KEY_APPROVE_LABEL:Ljava/lang/String; = "android.request.approve_label"

.field public static final REQUEST_KEY_DATA:Ljava/lang/String; = "android.request.data"

.field public static final REQUEST_KEY_DENY_LABEL:Ljava/lang/String; = "android.request.deny_label"

.field public static final REQUEST_KEY_ICON:Ljava/lang/String; = "android.request.icon"

.field public static final REQUEST_KEY_ID:Ljava/lang/String; = "android.request.id"

.field public static final REQUEST_KEY_MESSAGE:Ljava/lang/String; = "android.request.mesg"

.field public static final REQUEST_KEY_NEW_REQUEST:Ljava/lang/String; = "android.request.new_request"

.field public static final REQUEST_KEY_TITLE:Ljava/lang/String; = "android.request.title"

.field public static final REQUEST_TYPE_APPROVAL:Ljava/lang/String; = "android.request.type.approval"

.field public static final RESPONSE_KEY_ERROR_CODE:Ljava/lang/String; = "android.response.errorcode"

.field public static final RESPONSE_KEY_MESSAGE:Ljava/lang/String; = "android.response.msg"

.field public static final RESPONSE_KEY_RESPONSE_TIMESTAMP:Ljava/lang/String; = "android.response.timestamp"

.field public static final RESPONSE_KEY_RESULT:Ljava/lang/String; = "android.response.result"

.field public static final RESULT_APPROVED:I = 0x1

.field public static final RESULT_DENIED:I = 0x2

.field public static final RESULT_ERROR:I = 0x5

.field public static final RESULT_ERROR_BAD_REQUEST:I = 0x1

.field public static final RESULT_ERROR_INTERNAL:I = 0x3

.field public static final RESULT_ERROR_NETWORK:I = 0x2

.field public static final RESULT_NO_RESPONSE:I = 0x3

.field public static final RESULT_UNKNOWN_REQUEST:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RestrictionsManager"

.field private static final TAG_RESTRICTION:Ljava/lang/String; = "restriction"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/content/IRestrictionsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IRestrictionsManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/IRestrictionsManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    return-void
.end method

.method private static addRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)Landroid/os/Bundle;
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "entry"    # Landroid/content/RestrictionEntry;

    .prologue
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported restrictionEntry type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-object p0

    :pswitch_1
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getIntValue()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    move-result-object v3

    .local v3, "restrictions":[Landroid/content/RestrictionEntry;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    .local v1, "childBundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .end local v1    # "childBundle":Landroid/os/Bundle;
    .end local v3    # "restrictions":[Landroid/content/RestrictionEntry;
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    move-result-object v3

    .restart local v3    # "restrictions":[Landroid/content/RestrictionEntry;
    array-length v4, v3

    new-array v0, v4, [Landroid/os/Bundle;

    .local v0, "bundleArray":[Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    aget-object v5, v3, v2

    invoke-static {v4, v5}, Landroid/content/RestrictionsManager;->addRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)Landroid/os/Bundle;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .local p0, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/RestrictionEntry;

    .local v1, "entry":Landroid/content/RestrictionEntry;
    invoke-static {v0, v1}, Landroid/content/RestrictionsManager;->addRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)Landroid/os/Bundle;

    goto :goto_0

    .end local v1    # "entry":Landroid/content/RestrictionEntry;
    :cond_0
    return-object v0
.end method

.method private loadManifestRestrictions(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Ljava/util/List;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "xml"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "appContext":Landroid/content/Context;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    :try_start_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    .local v5, "tagType":I
    :goto_0
    const/4 v7, 0x1

    if-eq v5, v7, :cond_1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    invoke-direct {p0, v0, p2}, Landroid/content/RestrictionsManager;->loadRestrictionElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;

    move-result-object v3

    .local v3, "restriction":Landroid/content/RestrictionEntry;
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v3    # "restriction":Landroid/content/RestrictionEntry;
    :cond_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    goto :goto_0

    .end local v0    # "appContext":Landroid/content/Context;
    .end local v4    # "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    .end local v5    # "tagType":I
    :catch_0
    move-exception v2

    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v4, v6

    .end local v2    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_1
    return-object v4

    .restart local v0    # "appContext":Landroid/content/Context;
    .restart local v4    # "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    :catch_1
    move-exception v1

    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "RestrictionsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reading restriction metadata for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v6

    goto :goto_1

    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string v7, "RestrictionsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reading restriction metadata for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v6

    goto :goto_1
.end method

.method private loadRestriction(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;
    .locals 17
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "a"    # Landroid/content/res/TypedArray;
    .param p3, "xml"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "key":Ljava/lang/String;
    const/4 v14, 0x6

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .local v12, "restrictionType":I
    const/4 v14, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "title":Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "description":Ljava/lang/String;
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .local v5, "entries":I
    const/4 v14, 0x5

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .local v6, "entryValues":I
    const/4 v14, -0x1

    if-ne v12, v14, :cond_1

    const-string v14, "RestrictionsManager"

    const-string v15, "restrictionType cannot be omitted"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    if-nez v7, :cond_2

    const-string v14, "RestrictionsManager"

    const-string v15, "key cannot be omitted"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    new-instance v10, Landroid/content/RestrictionEntry;

    invoke-direct {v10, v12, v7}, Landroid/content/RestrictionEntry;-><init>(ILjava/lang/String;)V

    .local v10, "restriction":Landroid/content/RestrictionEntry;
    invoke-virtual {v10, v13}, Landroid/content/RestrictionEntry;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Landroid/content/RestrictionEntry;->setDescription(Ljava/lang/String;)V

    if-eqz v5, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v5}, Landroid/content/RestrictionEntry;->setChoiceEntries(Landroid/content/Context;I)V

    :cond_3
    if-eqz v6, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v6}, Landroid/content/RestrictionEntry;->setChoiceValues(Landroid/content/Context;I)V

    :cond_4
    packed-switch v12, :pswitch_data_0

    :pswitch_0
    const-string v14, "RestrictionsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown restriction type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const/4 v14, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/content/RestrictionEntry;->setIntValue(I)V

    goto :goto_0

    :pswitch_3
    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .local v9, "resId":I
    if-eqz v9, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    goto :goto_0

    .end local v9    # "resId":I
    :pswitch_4
    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    invoke-virtual {v10, v14}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    goto :goto_0

    :pswitch_5
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .local v8, "outerDepth":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .local v11, "restrictionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    :cond_5
    :goto_1
    move-object/from16 v0, p3

    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/content/RestrictionsManager;->loadRestrictionElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;

    move-result-object v3

    .local v3, "childEntry":Landroid/content/RestrictionEntry;
    if-nez v3, :cond_6

    const-string v14, "RestrictionsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Child entry cannot be loaded for bundle restriction "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x8

    if-ne v12, v14, :cond_5

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getType()I

    move-result v14

    const/4 v15, 0x7

    if-eq v14, v15, :cond_5

    const-string v14, "RestrictionsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bundle_array "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " can only contain entries of type bundle"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3    # "childEntry":Landroid/content/RestrictionEntry;
    :cond_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Landroid/content/RestrictionEntry;

    invoke-interface {v11, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/RestrictionEntry;

    invoke-virtual {v10, v14}, Landroid/content/RestrictionEntry;->setRestrictions([Landroid/content/RestrictionEntry;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private loadRestrictionElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "xml"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "restriction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .local v1, "attrSet":Landroid/util/AttributeSet;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/internal/R$styleable;->RestrictionEntry:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v0, p2}, Landroid/content/RestrictionsManager;->loadRestriction(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;

    move-result-object v2

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "attrSet":Landroid/util/AttributeSet;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createLocalApprovalIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    invoke-interface {v1}, Landroid/content/IRestrictionsManager;->createLocalApprovalIntent()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RestrictionsManager"

    const-string v2, "Couldn\'t reach service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationRestrictions()Landroid/os/Bundle;
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    iget-object v2, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/IRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RestrictionsManager"

    const-string v2, "Couldn\'t reach service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getManifestRestrictions(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v3, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.content.APP_RESTRICTIONS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "pnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1    # "pnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v3, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.content.APP_RESTRICTIONS"

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .local v2, "xml":Landroid/content/res/XmlResourceParser;
    invoke-direct {p0, p1, v2}, Landroid/content/RestrictionsManager;->loadManifestRestrictions(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method

.method public hasRestrictionsProvider()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    invoke-interface {v1}, Landroid/content/IRestrictionsManager;->hasRestrictionsProvider()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RestrictionsManager"

    const-string v2, "Couldn\'t reach service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/PersistableBundle;

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "packageName cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "request cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v1, "android.request.id"

    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "REQUEST_KEY_ID must be specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v1, "android.response.result"

    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "RESPONSE_KEY_RESULT must be specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    invoke-interface {v1, p1, p2}, Landroid/content/IRestrictionsManager;->notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RestrictionsManager"

    const-string v2, "Couldn\'t reach service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestPermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "requestType"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/os/PersistableBundle;

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "requestType cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "requestId cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez p3, :cond_2

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "request cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    iget-object v2, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/content/IRestrictionsManager;->requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RestrictionsManager"

    const-string v2, "Couldn\'t reach service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
