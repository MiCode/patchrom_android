.class public Landroid/graphics/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# static fields
.field public static final DEPTH16:I = 0x44363159

.field public static final DEPTH_POINT_CLOUD:I = 0x101

.field public static final FLEX_RGBA_8888:I = 0x2a

.field public static final FLEX_RGB_888:I = 0x29

.field public static final JPEG:I = 0x100

.field public static final NV16:I = 0x10

.field public static final NV21:I = 0x11

.field public static final PRIVATE:I = 0x22

.field public static final RAW10:I = 0x25

.field public static final RAW12:I = 0x26

.field public static final RAW_SENSOR:I = 0x20

.field public static final RGB_565:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final Y16:I = 0x20363159

.field public static final Y8:I = 0x20203859

.field public static final YUV_420_888:I = 0x23

.field public static final YUV_422_888:I = 0x27

.field public static final YUV_444_888:I = 0x28

.field public static final YUY2:I = 0x14

.field public static final YV12:I = 0x32315659


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitsPerPixel(I)I
    .locals 3
    .param p0, "format"    # I

    .prologue
    const/16 v2, 0x18

    const/16 v1, 0xc

    const/16 v0, 0x10

    sparse-switch p0, :sswitch_data_0

    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_3
    move v0, v1

    goto :goto_0

    :sswitch_4
    move v0, v1

    goto :goto_0

    :sswitch_5
    move v0, v2

    goto :goto_0

    :sswitch_6
    move v0, v2

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x20

    goto :goto_0

    :sswitch_8
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_9
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_3
        0x14 -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_4
        0x25 -> :sswitch_8
        0x26 -> :sswitch_9
        0x27 -> :sswitch_0
        0x28 -> :sswitch_5
        0x29 -> :sswitch_6
        0x2a -> :sswitch_7
        0x20203859 -> :sswitch_2
        0x20363159 -> :sswitch_0
        0x32315659 -> :sswitch_1
        0x44363159 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isPublicFormat(I)Z
    .locals 1
    .param p0, "format"    # I

    .prologue
    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x14 -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
        0x32315659 -> :sswitch_0
        0x44363159 -> :sswitch_0
    .end sparse-switch
.end method
