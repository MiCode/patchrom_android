.class Lcom/android/internal/policy/impl/keyguard/PointCloud$Point;
.super Ljava/lang/Object;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/PointCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Point"
.end annotation


# instance fields
.field radius:F

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PointCloud;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/PointCloud;FFF)V
    .locals 0
    .parameter
    .parameter "x2"
    .parameter "y2"
    .parameter "r"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PointCloud$Point;->this$0:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/PointCloud$Point;->x:F

    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/PointCloud$Point;->y:F

    iput p4, p0, Lcom/android/internal/policy/impl/keyguard/PointCloud$Point;->radius:F

    return-void
.end method
