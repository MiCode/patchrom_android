.class Lcom/android/server/pm/PackageManagerService$MoveInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveInfo"
.end annotation


# instance fields
.field final appId:I

.field final dataAppName:Ljava/lang/String;

.field final fromUuid:Ljava/lang/String;

.field final moveId:I

.field final packageName:Ljava/lang/String;

.field final seinfo:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final toUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p2, "moveId"    # I
    .param p3, "fromUuid"    # Ljava/lang/String;
    .param p4, "toUuid"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "dataAppName"    # Ljava/lang/String;
    .param p7, "appId"    # I
    .param p8, "seinfo"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->moveId:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromUuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->appId:I

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->seinfo:Ljava/lang/String;

    return-void
.end method
