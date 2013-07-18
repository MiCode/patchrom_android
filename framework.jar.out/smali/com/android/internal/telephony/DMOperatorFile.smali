.class public Lcom/android/internal/telephony/DMOperatorFile;
.super Ljava/lang/Object;
.source "DMOperatorFile.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DMOpFile"

.field private static instance:Lcom/android/internal/telephony/DMOperatorFile;


# instance fields
.field private isDMOpFileLoaded:Z

.field private mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

.field public mDMOperatorInfoArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DMOperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mNumberOfDMOpInfo:I

.field private r:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/DMOperatorFile;->instance:Lcom/android/internal/telephony/DMOperatorFile;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DMOpFile"

    const-string v1, "[DM create DMOperatorFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/internal/telephony/DMOperatorFile;->mNumberOfDMOpInfo:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOperatorInfoArray:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/internal/telephony/DMOperatorFile;->isDMOpFileLoaded:Z

    iput-object v3, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    iput-object v3, p0, Lcom/android/internal/telephony/DMOperatorFile;->r:Landroid/content/res/Resources;

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/DMOperatorFile;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/DMOperatorFile;->instance:Lcom/android/internal/telephony/DMOperatorFile;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/DMOperatorFile;

    invoke-direct {v0}, Lcom/android/internal/telephony/DMOperatorFile;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/DMOperatorFile;->instance:Lcom/android/internal/telephony/DMOperatorFile;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DMOperatorFile;->instance:Lcom/android/internal/telephony/DMOperatorFile;

    return-object v0
.end method


# virtual methods
.method public dump()V
    .locals 5

    .prologue
    const-string v2, "DMOpFile"

    const-string v3, "[xj dump operator info"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOperatorInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DMOperatorInfo;

    .local v0, e:Lcom/android/internal/telephony/DMOperatorInfo;
    const-string v2, "DMOpFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operator info(port/num/name): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/DMOperatorInfo;->mDMport:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/DMOperatorInfo;->mDMnum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/DMOperatorInfo;->mOpname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Lcom/android/internal/telephony/DMOperatorInfo;
    :cond_0
    return-void
.end method

.method public initFromRes(Landroid/content/Context;)V
    .locals 10
    .parameter "mContext"

    .prologue
    const-string v7, "DMOpFile"

    const-string v8, "loadDMOperatorFileFromXml: open normal file"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->r:Landroid/content/res/Resources;

    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "DMOperatorFile"

    invoke-static {v7, v8}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    const-string v9, "NumberOfDMOpInfo"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mNumberOfDMOpInfo:I

    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    const-string v9, "DMOpInfoFilterSupport"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "on"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .local v2, MTK_DM_REGISTER_SUPPORT:Z
    if-nez v2, :cond_2

    const-string v7, "DMOpFile"

    const-string v8, "DMOpInfoFilterSupport : off"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->isDMOpFileLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    instance-of v7, v7, Landroid/content/res/XmlResourceParser;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    check-cast v7, Landroid/content/res/XmlResourceParser;

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .end local v2           #MTK_DM_REGISTER_SUPPORT:Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    const-string v7, "DMOpFile"

    const-string v8, "Fail: mDMOpFileParser is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    instance-of v7, v7, Landroid/content/res/XmlResourceParser;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    check-cast v7, Landroid/content/res/XmlResourceParser;

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .restart local v2       #MTK_DM_REGISTER_SUPPORT:Z
    :cond_2
    :try_start_2
    const-string v7, "DMOpFile"

    const-string v8, "DMOpInfoFilterSupport : on"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, parsedDMOpInfo:I
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, name:Ljava/lang/String;
    if-nez v4, :cond_5

    iget v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mNumberOfDMOpInfo:I

    if-eq v6, v7, :cond_4

    const-string v7, "DMOpFile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error Parsing DMOperator file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/DMOperatorFile;->mNumberOfDMOpInfo:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " defined, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " parsed!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v7, "DMOpFile"

    const-string v8, "loadDMOpFileFromXml: DMOpFile parsing successful, file loaded"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->isDMOpFileLoaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v2           #MTK_DM_REGISTER_SUPPORT:Z
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #parsedDMOpInfo:I
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    const-string v7, "DMOpFile"

    const-string v8, "Got exception while loading DMOperatorInfo file."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    instance-of v7, v7, Landroid/content/res/XmlResourceParser;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    check-cast v7, Landroid/content/res/XmlResourceParser;

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #MTK_DM_REGISTER_SUPPORT:Z
    .restart local v4       #name:Ljava/lang/String;
    .restart local v6       #parsedDMOpInfo:I
    :cond_5
    :try_start_4
    const-string v7, "DMOperatorInfo"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    const-string v9, "OpName"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, opName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    const-string v9, "DMNum"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, DMNum:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    const-string v9, "DMPort"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, DMPort:I
    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOperatorInfoArray:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/internal/telephony/DMOperatorInfo;

    invoke-direct {v8, v5, v0, v1}, Lcom/android/internal/telephony/DMOperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .end local v0           #DMNum:Ljava/lang/String;
    .end local v1           #DMPort:I
    .end local v2           #MTK_DM_REGISTER_SUPPORT:Z
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #opName:Ljava/lang/String;
    .end local v6           #parsedDMOpInfo:I
    :catchall_0
    move-exception v7

    move-object v8, v7

    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    instance-of v7, v7, Landroid/content/res/XmlResourceParser;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOpFileParser:Lorg/xmlpull/v1/XmlPullParser;

    check-cast v7, Landroid/content/res/XmlResourceParser;

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v8
.end method

.method public searchMatchOp(Ljava/lang/String;I)Z
    .locals 6
    .parameter "DMNum"
    .parameter "DMPort"

    .prologue
    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/internal/telephony/DMOperatorFile;->isDMOpFileLoaded:Z

    if-nez v3, :cond_1

    const-string v3, "DMOpFile"

    const-string v4, "DM Operator File hasn\'t been load From xml"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "DMOpFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMNum : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DMport : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/DMOperatorFile;->mDMOperatorInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DMOperatorInfo;

    .local v0, EachOpInfo:Lcom/android/internal/telephony/DMOperatorInfo;
    iget v3, v0, Lcom/android/internal/telephony/DMOperatorInfo;->mDMport:I

    if-ne p2, v3, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/DMOperatorInfo;->mDMnum:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0
.end method
