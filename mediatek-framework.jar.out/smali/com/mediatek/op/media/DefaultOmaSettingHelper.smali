.class public Lcom/mediatek/op/media/DefaultOmaSettingHelper;
.super Ljava/lang/Object;
.source "DefaultOmaSettingHelper.java"

# interfaces
.implements Lcom/mediatek/common/media/IOmaSettingHelper;


# static fields
.field private static final DEFAULT_HTTP_BUFFER_SIZE:I = 0xa

.field private static final DEFAULT_RTSP_BUFFER_SIZE:I = 0x4

.field private static final KEY_HTTP_BUFFER_SIZE:Ljava/lang/String; = "MTK-HTTP-CACHE-SIZE"

.field private static final KEY_HTTP_PROXY_HOST:Ljava/lang/String; = "MTK-HTTP-PROXY-HOST"

.field private static final KEY_HTTP_PROXY_PORT:Ljava/lang/String; = "MTK-HTTP-PROXY-PORT"

.field private static final KEY_MAX_BANDWIDTH:Ljava/lang/String; = "MAX-BANDWIDTH"

.field private static final KEY_MAX_UDP_PORT:Ljava/lang/String; = "MAX-UDP-PORT"

.field private static final KEY_MIN_UDP_PORT:Ljava/lang/String; = "MIN-UDP-PORT"

.field private static final KEY_NAME:Ljava/lang/String; = "NAME"

.field private static final KEY_NETINFO:Ljava/lang/String; = "NETINFO"

.field private static final KEY_PROVIDER_ID:Ljava/lang/String; = "PROVIDER-ID"

.field private static final KEY_RTSP_BUFFER_SIZE:Ljava/lang/String; = "MTK-RTSP-CACHE-SIZE"

.field private static final KEY_RTSP_PROXY_HOST:Ljava/lang/String; = "MTK-RTSP-PROXY-HOST"

.field private static final KEY_RTSP_PROXY_PORT:Ljava/lang/String; = "MTK-RTSP-PROXY-PORT"

.field private static final KEY_SIM_ID:Ljava/lang/String; = "SIM-ID"

.field private static final KEY_TO_NAPID:Ljava/lang/String; = "TO-NAPID"

.field private static final KEY_TO_PROXY:Ljava/lang/String; = "TO-PROXY"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "DefaultOmaSettingHelper"

.field private static final UNKNOWN_PORT:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    const-string v0, "DefaultOmaSettingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillHeader: cannot fill key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private judgeStreamingType(Landroid/net/Uri;)I
    .locals 6
    .parameter "uri"

    .prologue
    const-string v3, "DefaultOmaSettingHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "judgeStreamingType("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .local v1, streamingType:I
    if-nez p1, :cond_0

    const-string v3, "DefaultOmaSettingHelper"

    const-string v4, "judgeStreamingType: uri is null, cannot judge streaming type."

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .end local v1           #streamingType:I
    .local v2, streamingType:I
    :goto_0
    return v2

    .end local v2           #streamingType:I
    .restart local v1       #streamingType:I
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .local v0, scheme:Ljava/lang/String;
    const-string v3, "rtsp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    :goto_1
    const-string v3, "DefaultOmaSettingHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "judgeStreamingType: type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .end local v1           #streamingType:I
    .restart local v2       #streamingType:I
    goto :goto_0

    .end local v2           #streamingType:I
    .restart local v1       #streamingType:I
    :cond_1
    const-string v3, "http"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setOmaSettingHeader(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 17
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "DefaultOmaSettingHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setOmaSettingHeader("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v14, "DefaultOmaSettingHelper"

    const-string v15, "setOmaSettingHeader: Null context!"

    invoke-static {v14, v15}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local p2           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object p2

    .restart local p2       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, cr:Landroid/content/ContentResolver;
    move-object/from16 v13, p2

    .local v13, tempHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v13, :cond_1

    new-instance v13, Ljava/util/HashMap;

    .end local v13           #tempHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .restart local v13       #tempHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v7, -0x1

    .local v7, minUdpPort:I
    const/4 v6, -0x1

    .local v6, maxUdpPort:I
    const/4 v9, 0x0

    .local v9, rtspProxyEnable:I
    const/4 v10, 0x0

    .local v10, rtspProxyHost:Ljava/lang/String;
    const/4 v11, -0x1

    .local v11, rtspProxyPort:I
    const/4 v3, 0x0

    .local v3, httpProxyEnable:I
    const/4 v4, 0x0

    .local v4, httpProxyHost:Ljava/lang/String;
    const/4 v5, -0x1

    .local v5, httpProxyPort:I
    const-string v14, "MTK-HTTP-CACHE-SIZE"

    const/16 v15, 0xa

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, httpBufferSize:I
    const-string v14, "MTK-HTTP-CACHE-SIZE"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/mediatek/op/media/DefaultOmaSettingHelper;->fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "MTK-RTSP-CACHE-SIZE"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/op/media/DefaultOmaSettingHelper;->getRtspDefaultBufferSize()I

    move-result v15

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .local v8, rtspBufferSize:I
    const-string v14, "MTK-RTSP-CACHE-SIZE"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/mediatek/op/media/DefaultOmaSettingHelper;->fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "mtk_rtsp_min_udp_port"

    const/4 v15, -0x1

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const-string v14, "mtk_rtsp_max_udp_port"

    const/4 v15, -0x1

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v14, -0x1

    if-eq v7, v14, :cond_2

    const/4 v14, -0x1

    if-eq v6, v14, :cond_2

    const-string v14, "MIN-UDP-PORT"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/mediatek/op/media/DefaultOmaSettingHelper;->fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "MAX-UDP-PORT"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/mediatek/op/media/DefaultOmaSettingHelper;->fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v14, "mtk_rtsp_proxy_enabled"

    const/4 v15, 0x0

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v14, 0x1

    if-ne v9, v14, :cond_3

    const-string v14, "mtk_rtsp_proxy_host"

    invoke-static {v1, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v14, "mtk_rtsp_proxy_port"

    const/4 v15, -0x1

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v10, :cond_3

    const/4 v14, -0x1

    if-eq v11, v14, :cond_3

    const-string v14, "MTK-RTSP-PROXY-HOST"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v10}, Lcom/mediatek/op/media/DefaultOmaSettingHelper;->fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "MTK-RTSP-PROXY-PORT"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/mediatek/op/media/DefaultOmaSettingHelper;->fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v14, "mtk_http_proxy_enabled"

    const/4 v15, 0x0

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v14, 0x1

    if-ne v3, v14, :cond_4

    const-string v14, "mtk_http_proxy_host"

    invoke-static {v1, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v14, "mtk_http_proxy_port"

    const/4 v15, -0x1

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    :cond_4
    const/4 v14, 0x1

    if-ne v3, v14, :cond_5

    const/4 v14, -0x1

    if-ne v5, v14, :cond_6

    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v5

    :cond_6
    if-eqz v4, :cond_7

    const/4 v14, -0x1

    if-eq v5, v14, :cond_7

    const-string v14, "MTK-HTTP-PROXY-HOST"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v4}, Lcom/mediatek/op/media/DefaultOmaSettingHelper;->fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "MTK-HTTP-PROXY-PORT"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/mediatek/op/media/DefaultOmaSettingHelper;->fillHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .local v12, sb:Ljava/lang/StringBuilder;
    const-string v14, "minUdpPort="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "minUdpPort="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "maxUdpPort="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "rtspProxyEnable="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "rtspProxyHost="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "rtspProxyPort="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "httpProxyEnable="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "httpProxyHost="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "httpProxyPort="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "httpBufferSize="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "rtspBufferSize="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "DefaultOmaSettingHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setOmaSettingHeader: params:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 p2, v13

    goto/16 :goto_0
.end method


# virtual methods
.method protected getRtspDefaultBufferSize()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    return v0
.end method

.method protected isOMAEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .local v0, enabled:Z
    const-string v1, "DefaultOmaSettingHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOMAEnabled: enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setSettingHeader(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mediatek/op/media/DefaultOmaSettingHelper;->isOMAEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/mediatek/op/media/DefaultOmaSettingHelper;->judgeStreamingType(Landroid/net/Uri;)I

    move-result v0

    .local v0, type:I
    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/mediatek/op/media/DefaultOmaSettingHelper;->setOmaSettingHeader(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    .end local v0           #type:I
    .end local p3           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object p3

    .restart local p3       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v1, "DefaultOmaSettingHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSettingHeader: headers unchanged. uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
