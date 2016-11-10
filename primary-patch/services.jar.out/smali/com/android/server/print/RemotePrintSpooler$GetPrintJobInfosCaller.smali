.class final Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetPrintJobInfosCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/TimedRemoteCaller",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/print/PrintJobInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/print/IPrintSpoolerCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    return-void
.end method


# virtual methods
.method public getPrintJobInfos(Landroid/print/IPrintSpooler;Landroid/content/ComponentName;II)Ljava/util/List;
    .locals 6
    .param p1, "target"    # Landroid/print/IPrintSpooler;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "state"    # I
    .param p4, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrintSpooler;",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->onBeforeRemoteCall()I

    move-result v5

    .local v5, "sequence":I
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/print/IPrintSpooler;->getPrintJobInfos(Landroid/print/IPrintSpoolerCallbacks;Landroid/content/ComponentName;III)V

    invoke-virtual {p0, v5}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->getResultTimed(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
