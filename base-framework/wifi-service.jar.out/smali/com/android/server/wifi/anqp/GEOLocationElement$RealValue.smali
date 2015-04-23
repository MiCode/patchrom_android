.class public Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;
.super Ljava/lang/Object;
.source "GEOLocationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/GEOLocationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RealValue"
.end annotation


# instance fields
.field private final mResolution:I

.field private final mResolutionSet:Z

.field private final mValue:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mValue:D

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mResolution:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mResolutionSet:Z

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 1
    .param p1, "value"    # D
    .param p3, "resolution"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mValue:D

    iput p3, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mResolution:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mResolutionSet:Z

    return-void
.end method


# virtual methods
.method public getResolution()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mResolution:I

    return v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mValue:D

    return-wide v0
.end method

.method public isResolutionSet()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mResolutionSet:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "%f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mValue:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mResolutionSet:Z

    if-eqz v1, :cond_0

    const-string v1, "+/-2^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;->mResolution:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
