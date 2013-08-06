.class Lcom/mediatek/epo/MtkEpoClientManagerService$GpsStatusObserver;
.super Landroid/database/ContentObserver;
.source "MtkEpoClientManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epo/MtkEpoClientManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsStatusObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/epo/MtkEpoClientManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$GpsStatusObserver;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .parameter "change"

    .prologue
    return-void
.end method
