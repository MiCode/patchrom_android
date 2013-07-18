.class public Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;
.super Ljava/lang/Object;
.source "SpnOverride.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SpnOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VirtualSpnByImsi"
.end annotation


# instance fields
.field public index:I

.field public length:I

.field public mccmnc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public pattern:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SpnOverride;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/SpnOverride;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "mccmnc"
    .parameter "index"
    .parameter "length"
    .parameter "pattern"
    .parameter "name"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->this$0:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->mccmnc:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->index:I

    iput p4, p0, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->length:I

    iput-object p5, p0, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/internal/telephony/gsm/SpnOverride$VirtualSpnByImsi;->name:Ljava/lang/String;

    return-void
.end method
