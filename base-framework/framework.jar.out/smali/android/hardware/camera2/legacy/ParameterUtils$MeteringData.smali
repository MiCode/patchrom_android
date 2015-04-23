.class public Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;
.super Ljava/lang/Object;
.source "ParameterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/ParameterUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeteringData"
.end annotation


# instance fields
.field public final meteringArea:Landroid/hardware/Camera$Area;

.field public final previewMetering:Landroid/graphics/Rect;

.field public final reportedMetering:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$Area;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "meteringArea"    # Landroid/hardware/Camera$Area;
    .param p2, "previewMetering"    # Landroid/graphics/Rect;
    .param p3, "reportedMetering"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;->meteringArea:Landroid/hardware/Camera$Area;

    iput-object p2, p0, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;->previewMetering:Landroid/graphics/Rect;

    iput-object p3, p0, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;->reportedMetering:Landroid/graphics/Rect;

    return-void
.end method
