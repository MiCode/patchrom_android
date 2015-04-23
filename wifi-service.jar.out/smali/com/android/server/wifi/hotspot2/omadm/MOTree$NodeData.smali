.class Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
.super Ljava/lang/Object;
.source "MOTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/omadm/MOTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NodeData"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->mName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/MOTree$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/android/server/wifi/hotspot2/omadm/MOTree$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->mPath:Ljava/lang/String;

    return-void
.end method

.method private setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->mValue:Ljava/lang/String;

    return-object v0
.end method
