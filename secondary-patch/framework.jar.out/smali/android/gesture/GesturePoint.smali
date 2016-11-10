.class public Landroid/gesture/GesturePoint;
.super Ljava/lang/Object;
.source "GesturePoint.java"


# instance fields
.field public final timestamp:J

.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(FFJ)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "t"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/gesture/GesturePoint;->x:F

    iput p2, p0, Landroid/gesture/GesturePoint;->y:F

    iput-wide p3, p0, Landroid/gesture/GesturePoint;->timestamp:J

    return-void
.end method

.method static deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GesturePoint;
    .locals 5
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    .local v2, "x":F
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    .local v3, "y":F
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .local v0, "timeStamp":J
    new-instance v4, Landroid/gesture/GesturePoint;

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    return-object v4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    new-instance v0, Landroid/gesture/GesturePoint;

    iget v1, p0, Landroid/gesture/GesturePoint;->x:F

    iget v2, p0, Landroid/gesture/GesturePoint;->y:F

    iget-wide v4, p0, Landroid/gesture/GesturePoint;->timestamp:J

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    return-object v0
.end method
