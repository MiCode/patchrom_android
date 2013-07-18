.class public Landroid/media/MiniThumbFile$ThumbResult;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MiniThumbFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbResult"
.end annotation


# static fields
.field public static final SUCCESS:I = 0x2

.field public static final UNSPECIFIED:I = 0x0

.field public static final WRONG_CHECK_CODE:I = 0x1


# instance fields
.field private mDetail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MiniThumbFile$ThumbResult;->mDetail:I

    return-void
.end method


# virtual methods
.method public getDetail()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/MiniThumbFile$ThumbResult;->mDetail:I

    return v0
.end method

.method setDetail(I)V
    .locals 0
    .parameter "detail"

    .prologue
    iput p1, p0, Landroid/media/MiniThumbFile$ThumbResult;->mDetail:I

    return-void
.end method
