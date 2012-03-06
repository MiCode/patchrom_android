.class public final Lcom/android/internal/telephony/gsm/UsimServiceTable;
.super Lcom/android/internal/telephony/IccServiceTable;
.source "UsimServiceTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;
    }
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "table"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccServiceTable;-><init>([B)V

    .line 127
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "UsimServiceTable"

    return-object v0
.end method

.method protected getValues()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->values()[Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z
    .locals 1
    .parameter "service"

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->ordinal()I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/internal/telephony/IccServiceTable;->isAvailable(I)Z

    move-result v0

    return v0
.end method
