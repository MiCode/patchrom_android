.class public Lcom/android/internal/telephony/cat/CatResponseMessage;
.super Ljava/lang/Object;
.source "CatResponseMessage.java"


# instance fields
.field mAddedInfo:[B

.field mAdditionalInfo:I

.field mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field mEventValue:I

.field mIncludeAdditionalInfo:Z

.field mResCode:Lcom/android/internal/telephony/cat/ResultCode;

.field mUsersConfirm:Z

.field mUsersInput:Ljava/lang/String;

.field mUsersMenuSelection:I

.field mUsersYesNoSelection:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-void
.end method


# virtual methods
.method getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-object v0
.end method

.method public setAdditionalInfo(I)V
    .locals 1
    .param p1, "info"    # I

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    return-void
.end method

.method public setConfirmation(Z)V
    .locals 0
    .param p1, "confirm"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    return-void
.end method

.method public setEventDownload(I[B)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "addedInfo"    # [B

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .param p1, "selection"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 0
    .param p1, "resCode"    # Lcom/android/internal/telephony/cat/ResultCode;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .param p1, "yesNo"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    return-void
.end method
