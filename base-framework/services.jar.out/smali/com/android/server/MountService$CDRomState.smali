.class Lcom/android/server/MountService$CDRomState;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CDRomState"
.end annotation


# static fields
.field public static final Not_Exist:I = 0x4

.field public static final Shared:I = 0x0

.field public static final Sharing:I = 0x2

.field public static final Unknown:I = -0x1

.field public static final Unshared:I = 0x1

.field public static final Unsharing:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$CDRomState;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
