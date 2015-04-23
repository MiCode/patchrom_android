.class public Landroid/webkit/JsPromptResult;
.super Landroid/webkit/JsResult;
.source "JsPromptResult.java"


# instance fields
.field private mStringResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/JsResult$ResultReceiver;)V
    .locals 0
    .param p1, "receiver"    # Landroid/webkit/JsResult$ResultReceiver;

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/JsResult$ResultReceiver;)V

    return-void
.end method


# virtual methods
.method public confirm(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/webkit/JsPromptResult;->mStringResult:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkit/JsPromptResult;->confirm()V

    return-void
.end method

.method public getStringResult()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/JsPromptResult;->mStringResult:Ljava/lang/String;

    return-object v0
.end method
