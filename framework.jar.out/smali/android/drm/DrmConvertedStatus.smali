.class public Landroid/drm/DrmConvertedStatus;
.super Ljava/lang/Object;
.source "DrmConvertedStatus.java"


# static fields
.field public static final STATUS_ERROR:I = 0x3

.field public static final STATUS_INPUTDATA_ERROR:I = 0x2

.field public static final STATUS_OK:I = 0x1


# instance fields
.field public final convertedData:[B

.field public final offset:I

.field public final statusCode:I


# direct methods
.method public constructor <init>(I[BI)V
    .locals 0
    .parameter "_statusCode"
    .parameter "_convertedData"
    .parameter "_offset"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    .line 49
    iput-object p2, p0, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    .line 50
    iput p3, p0, Landroid/drm/DrmConvertedStatus;->offset:I

    .line 51
    return-void
.end method
