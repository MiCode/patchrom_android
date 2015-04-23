.class public Lcom/android/internal/telephony/CallStateException;
.super Ljava/lang/Exception;
.source "CallStateException.java"


# static fields
.field public static final ERROR_DISCONNECTED:I = 0x1

.field public static final ERROR_INVALID:I = -0x1


# instance fields
.field private mError:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CallStateException;->mError:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CallStateException;->mError:I

    iput p1, p0, Lcom/android/internal/telephony/CallStateException;->mError:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CallStateException;->mError:I

    return-void
.end method


# virtual methods
.method public getError()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/CallStateException;->mError:I

    return v0
.end method
