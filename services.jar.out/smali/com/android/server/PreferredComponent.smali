.class public Lcom/android/server/PreferredComponent;
.super Ljava/lang/Object;
.source "PreferredComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PreferredComponent$Callbacks;
    }
.end annotation


# static fields
.field private static final ATTR_ALWAYS:Ljava/lang/String; = "always"

.field private static final ATTR_MATCH:Ljava/lang/String; = "match"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SET:Ljava/lang/String; = "set"

.field private static final TAG_SET:Ljava/lang/String; = "set"


# instance fields
.field public mAlways:Z

.field private final mCallbacks:Lcom/android/server/PreferredComponent$Callbacks;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mMatch:I

.field private mParseError:Ljava/lang/String;

.field private final mSetClasses:[Ljava/lang/String;

.field private final mSetComponents:[Ljava/lang/String;

.field private final mSetPackages:[Ljava/lang/String;

.field private final mShortComponent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/PreferredComponent$Callbacks;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .locals 8
    .param p1, "callbacks"    # Lcom/android/server/PreferredComponent$Callbacks;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "component"    # Landroid/content/ComponentName;
    .param p5, "always"    # Z

    .prologue
    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PreferredComponent;->mCallbacks:Lcom/android/server/PreferredComponent$Callbacks;

    const/high16 v6, 0xfff0000

    and-int/2addr v6, p2

    iput v6, p0, Lcom/android/server/PreferredComponent;->mMatch:I

    iput-object p4, p0, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    iput-boolean p5, p0, Lcom/android/server/PreferredComponent;->mAlways:Z

    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    if-eqz p3, :cond_2

    array-length v0, p3

    .local v0, "N":I
    new-array v5, v0, [Ljava/lang/String;

    .local v5, "myPackages":[Ljava/lang/String;
    new-array v3, v0, [Ljava/lang/String;

    .local v3, "myClasses":[Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    .local v4, "myComponents":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v1, p3, v2

    .local v1, "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    iput-object v7, p0, Lcom/android/server/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .end local v0    # "N":I
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":I
    .end local v3    # "myClasses":[Ljava/lang/String;
    .end local v4    # "myComponents":[Ljava/lang/String;
    .end local v5    # "myPackages":[Ljava/lang/String;
    :goto_1
    return-void

    .restart local v0    # "N":I
    .restart local v1    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "i":I
    .restart local v3    # "myClasses":[Ljava/lang/String;
    .restart local v4    # "myComponents":[Ljava/lang/String;
    .restart local v5    # "myPackages":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_1
    iput-object v5, p0, Lcom/android/server/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    goto :goto_1

    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "myClasses":[Ljava/lang/String;
    .end local v4    # "myComponents":[Ljava/lang/String;
    .end local v5    # "myPackages":[Ljava/lang/String;
    :cond_2
    iput-object v7, p0, Lcom/android/server/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/server/PreferredComponent$Callbacks;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 18
    .param p1, "callbacks"    # Lcom/android/server/PreferredComponent$Callbacks;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PreferredComponent;->mCallbacks:Lcom/android/server/PreferredComponent$Callbacks;

    const/4 v15, 0x0

    const-string v16, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    if-nez v15, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad activity name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    :cond_0
    const/4 v15, 0x0

    const-string v16, "match"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "matchStr":Ljava/lang/String;
    if-eqz v4, :cond_4

    const/16 v15, 0x10

    invoke-static {v4, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    :goto_0
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/PreferredComponent;->mMatch:I

    const/4 v15, 0x0

    const-string v16, "set"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "setCountStr":Ljava/lang/String;
    if-eqz v11, :cond_5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .local v10, "setCount":I
    :goto_1
    const/4 v15, 0x0

    const-string v16, "always"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "alwaysStr":Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/PreferredComponent;->mAlways:Z

    if-lez v10, :cond_7

    new-array v7, v10, [Ljava/lang/String;

    .local v7, "myPackages":[Ljava/lang/String;
    :goto_3
    if-lez v10, :cond_8

    new-array v5, v10, [Ljava/lang/String;

    .local v5, "myClasses":[Ljava/lang/String;
    :goto_4
    if-lez v10, :cond_9

    new-array v6, v10, [Ljava/lang/String;

    .local v6, "myComponents":[Ljava/lang/String;
    :goto_5
    const/4 v12, 0x0

    .local v12, "setPos":I
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .local v9, "outerDepth":I
    :cond_1
    :goto_6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .local v14, "type":I
    const/4 v15, 0x1

    if-eq v14, v15, :cond_e

    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v9, :cond_e

    :cond_2
    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x4

    if-eq v14, v15, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .local v13, "tagName":Ljava/lang/String;
    const-string v15, "set"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    const-string v16, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "name":Ljava/lang/String;
    if-nez v8, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v15, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No name in set tag in preferred activity "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    :cond_3
    :goto_7
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .end local v2    # "alwaysStr":Ljava/lang/String;
    .end local v5    # "myClasses":[Ljava/lang/String;
    .end local v6    # "myComponents":[Ljava/lang/String;
    .end local v7    # "myPackages":[Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "outerDepth":I
    .end local v10    # "setCount":I
    .end local v11    # "setCountStr":Ljava/lang/String;
    .end local v12    # "setPos":I
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "type":I
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .restart local v11    # "setCountStr":Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .restart local v2    # "alwaysStr":Ljava/lang/String;
    .restart local v10    # "setCount":I
    :cond_6
    const/4 v15, 0x1

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    goto :goto_3

    .restart local v7    # "myPackages":[Ljava/lang/String;
    :cond_8
    const/4 v5, 0x0

    goto :goto_4

    .restart local v5    # "myClasses":[Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    .restart local v6    # "myComponents":[Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "outerDepth":I
    .restart local v12    # "setPos":I
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v14    # "type":I
    :cond_a
    if-lt v12, v10, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v15, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Too many set tags in preferred activity "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_7

    :cond_b
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .local v3, "cn":Landroid/content/ComponentName;
    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v15, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad set name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " in preferred activity "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_7

    :cond_c
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v7, v12

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v12

    aput-object v8, v6, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v8    # "name":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PreferredComponent;->mCallbacks:Lcom/android/server/PreferredComponent$Callbacks;

    move-object/from16 v0, p2

    invoke-interface {v15, v13, v0}, Lcom/android/server/PreferredComponent$Callbacks;->onReadTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "PreferredComponent"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown element: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .end local v13    # "tagName":Ljava/lang/String;
    :cond_e
    if-eq v12, v10, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v15, :cond_f

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Not enough set tags (expected "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " but found "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    :cond_f
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "ident"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " mMatch=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/PreferredComponent;->mMatch:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " mAlways="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/PreferredComponent;->mAlways:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v1, p0, Lcom/android/server/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Selected from:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getParseError()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/PreferredComponent;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public sameSet(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    if-nez v10, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    move v8, v9

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    move v8, v9

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "NQ":I
    iget-object v10, p0, Lcom/android/server/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v1, v10

    .local v1, "NS":I
    const/4 v6, 0x0

    .local v6, "numMatch":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_7

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .local v3, "good":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v1, :cond_4

    iget-object v10, p0, Lcom/android/server/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v10, v10, v5

    iget-object v11, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/server/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v10, v10, v5

    iget-object v11, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x1

    :cond_4
    if-nez v3, :cond_6

    move v8, v9

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "good":Z
    .end local v5    # "j":I
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_7
    if-eq v6, v1, :cond_0

    move v8, v9

    goto :goto_0
.end method

.method public sameSet(Ljava/util/List;I)Z
    .locals 11
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "NQ":I
    iget-object v9, p0, Lcom/android/server/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v1, v9

    .local v1, "NS":I
    const/4 v6, 0x0

    .local v6, "numMatch":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_6

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget v9, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-eq v9, p2, :cond_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .local v3, "good":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v1, :cond_4

    iget-object v9, p0, Lcom/android/server/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v9, v9, v5

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v9, v9, v5

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x1

    :cond_4
    if-nez v3, :cond_2

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "good":Z
    .end local v5    # "j":I
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    if-ne v6, v1, :cond_0

    const/4 v8, 0x1

    goto :goto_0
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "full"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    array-length v0, v2

    .local v0, "NS":I
    :goto_0
    const-string v2, "name"

    iget-object v3, p0, Lcom/android/server/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p2, :cond_2

    iget v2, p0, Lcom/android/server/PreferredComponent;->mMatch:I

    if-eqz v2, :cond_0

    const-string v2, "match"

    iget v3, p0, Lcom/android/server/PreferredComponent;->mMatch:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string v2, "always"

    iget-boolean v3, p0, Lcom/android/server/PreferredComponent;->mAlways:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "set"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    .local v1, "s":I
    :goto_1
    if-ge v1, v0, :cond_2

    const-string v2, "set"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "name"

    iget-object v3, p0, Lcom/android/server/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "set"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "NS":I
    .end local v1    # "s":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "NS":I
    :cond_2
    return-void
.end method
