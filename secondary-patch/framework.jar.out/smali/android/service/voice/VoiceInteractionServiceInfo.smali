.class public Landroid/service/voice/VoiceInteractionServiceInfo;
.super Ljava/lang/Object;
.source "VoiceInteractionServiceInfo.java"


# static fields
.field static final TAG:Ljava/lang/String; = "VoiceInteractionServiceInfo"


# instance fields
.field private mParseError:Ljava/lang/String;

.field private mRecognitionService:Ljava/lang/String;

.field private mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private mSessionService:Ljava/lang/String;

.field private mSettingsActivity:Ljava/lang/String;

.field private mSupportsAssist:Z

.field private mSupportsLaunchFromKeyguard:Z


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "comp"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "comp"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, p2, v1, p3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V
    .locals 11
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "si"    # Landroid/content/pm/ServiceInfo;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v7, "android.permission.BIND_VOICE_INTERACTION"

    iget-object v8, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "Service does not require permission android.permission.BIND_VOICE_INTERACTION"

    iput-object v7, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v7, "android.voice_interaction"

    invoke-virtual {p2, p1, v7}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No android.voice_interaction meta-data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v7, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .local v5, "res":Landroid/content/res/Resources;
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .local v1, "attrs":Landroid/util/AttributeSet;
    :cond_3
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v9, :cond_4

    if-ne v6, v10, :cond_3

    :cond_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .local v3, "nodeName":Ljava/lang/String;
    const-string v7, "voice-interaction-service"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "Meta-data does not start with voice-interaction-service tag"

    iput-object v7, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    :cond_5
    :try_start_2
    sget-object v7, Lcom/android/internal/R$styleable;->VoiceInteractionService:[I

    invoke-virtual {v5, v1, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSettingsActivity:Ljava/lang/String;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsAssist:Z

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLaunchFromKeyguard:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v7, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    if-nez v7, :cond_6

    const-string v7, "No sessionService specified"

    iput-object v7, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    :cond_6
    :try_start_3
    iget-object v7, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    if-nez v7, :cond_7

    const-string v7, "No recognitionService specified"

    iput-object v7, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_8

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8
    iput-object p2, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    goto/16 :goto_0

    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "type":I
    :catch_0
    move-exception v2

    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing voice interation service meta-data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    const-string v7, "VoiceInteractionServiceInfo"

    const-string v8, "error parsing voice interaction service meta-data"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing voice interation service meta-data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    const-string v7, "VoiceInteractionServiceInfo"

    const-string v8, "error parsing voice interaction service meta-data"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing voice interation service meta-data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    const-string v7, "VoiceInteractionServiceInfo"

    const-string v8, "error parsing voice interaction service meta-data"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_9

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v7
.end method


# virtual methods
.method public getParseError()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognitionService()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getSessionService()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSettingsActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportsAssist()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsAssist:Z

    return v0
.end method

.method public getSupportsLaunchFromKeyguard()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLaunchFromKeyguard:Z

    return v0
.end method
