.class Lcom/android/server/policy/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTRIBUTE_CLASS:Ljava/lang/String; = "class"

.field private static final ATTRIBUTE_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTRIBUTE_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "ShortcutManager"

.field private static final TAG_BOOKMARK:Ljava/lang/String; = "bookmark"

.field private static final TAG_BOOKMARKS:Ljava/lang/String; = "bookmarks"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/policy/ShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/policy/ShortcutManager;->loadShortcuts()V

    return-void
.end method

.method private loadShortcuts()V
    .locals 20

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .local v9, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1110003

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    const-string v17, "bookmarks"

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :goto_0
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .end local v12    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_1
    return-void

    .restart local v12    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    const-string v17, "bookmark"

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x0

    const-string v18, "package"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "packageName":Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "class"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "className":Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "shortcut"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "shortcutName":Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "category"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "categoryName":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "ShortcutManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to get shortcut for: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v2    # "categoryName":Ljava/lang/String;
    .end local v3    # "className":Ljava/lang/String;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v12    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v15    # "shortcutName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v17, "ShortcutManager"

    const-string v18, "Got exception parsing bookmarks."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "categoryName":Ljava/lang/String;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v12    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v15    # "shortcutName":Ljava/lang/String;
    :cond_2
    const/16 v17, 0x0

    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .local v14, "shortcutChar":I
    if-eqz v10, :cond_3

    if-eqz v3, :cond_3

    const/4 v7, 0x0

    .local v7, "info":Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v10, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .local v4, "componentName":Landroid/content/ComponentName;
    const/16 v17, 0x0

    :try_start_2
    move/from16 v0, v17

    invoke-virtual {v9, v4, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    :goto_2
    :try_start_3
    new-instance v8, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v8, "intent":Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v7, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    .local v16, "title":Ljava/lang/String;
    :goto_3
    new-instance v13, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    move-object/from16 v0, v16

    invoke-direct {v13, v0, v8}, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .local v13, "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .end local v2    # "categoryName":Ljava/lang/String;
    .end local v3    # "className":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v12    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v13    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    .end local v14    # "shortcutChar":I
    .end local v15    # "shortcutName":Ljava/lang/String;
    .end local v16    # "title":Ljava/lang/String;
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    const-string v17, "ShortcutManager"

    const-string v18, "Got exception parsing bookmarks."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "categoryName":Ljava/lang/String;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v4    # "componentName":Landroid/content/ComponentName;
    .restart local v7    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v12    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v14    # "shortcutChar":I
    .restart local v15    # "shortcutName":Ljava/lang/String;
    :catch_2
    move-exception v5

    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v17, 0x1

    :try_start_4
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .local v11, "packages":[Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    .end local v4    # "componentName":Landroid/content/ComponentName;
    const/16 v17, 0x0

    aget-object v17, v11, v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .restart local v4    # "componentName":Landroid/content/ComponentName;
    const/16 v17, 0x0

    :try_start_5
    move/from16 v0, v17

    invoke-virtual {v9, v4, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v7

    goto :goto_2

    :catch_3
    move-exception v6

    .local v6, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string v17, "ShortcutManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to add bookmark: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    .end local v11    # "packages":[Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v16, ""

    .restart local v16    # "title":Ljava/lang/String;
    goto/16 :goto_3

    .end local v8    # "intent":Landroid/content/Intent;
    .end local v16    # "title":Ljava/lang/String;
    :cond_4
    const-string v17, "ShortcutManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to add bookmark for shortcut "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": missing package/class or category attributes"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method


# virtual methods
.method public getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;
    .locals 3
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p2, "keyCode"    # I
    .param p3, "metaState"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    invoke-virtual {p1, p2, p3}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v1

    .local v1, "shortcutChar":I
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    check-cast v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    .restart local v0    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    check-cast v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    .restart local v0    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;->intent:Landroid/content/Intent;

    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
