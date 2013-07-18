.class public Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;
.super Ljava/lang/Object;
.source "KeyguardUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isGemini()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public static final isMediatekGemini3GSwitchSupport()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static final isMediatekVT3G324MSupport()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static final isTablet()Z
    .locals 2

    .prologue
    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final xlogD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "logs"

    .prologue
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final xlogE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "logs"

    .prologue
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final xlogI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "logs"

    .prologue
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final xlogW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "logs"

    .prologue
    invoke-static {p0, p1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
