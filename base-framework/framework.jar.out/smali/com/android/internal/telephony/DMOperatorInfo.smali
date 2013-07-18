.class public final Lcom/android/internal/telephony/DMOperatorInfo;
.super Ljava/lang/Object;
.source "DMOperatorInfo.java"


# instance fields
.field public mDMnum:Ljava/lang/String;

.field public mDMport:I

.field public mOpname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "Opname"
    .parameter "DMnum"
    .parameter "DMport"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/DMOperatorInfo;->mOpname:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/DMOperatorInfo;->mDMnum:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/telephony/DMOperatorInfo;->mDMport:I

    return-void
.end method
