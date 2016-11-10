.class public abstract Lcom/android/server/wifi/hotspot2/AuthMatch;
.super Ljava/lang/Object;
.source "AuthMatch.java"


# static fields
.field public static final Exact:I = 0x7

.field public static final Indeterminate:I = 0x0

.field public static final Method:I = 0x2

.field public static final MethodParam:I = 0x3

.field public static final None:I = -0x1

.field public static final Param:I = 0x1

.field public static final Realm:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "match"    # I

    .prologue
    if-gez p0, :cond_0

    const-string v1, "None"

    :goto_0
    return-object v1

    :cond_0
    if-nez p0, :cond_1

    const-string v1, "Indeterminate"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, "Realm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_3

    const-string v1, "Method"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_4

    const-string v1, "Param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
