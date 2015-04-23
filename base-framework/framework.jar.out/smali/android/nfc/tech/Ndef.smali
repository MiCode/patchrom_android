.class public final Landroid/nfc/tech/Ndef;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "Ndef.java"


# static fields
.field public static final EXTRA_NDEF_CARDSTATE:Ljava/lang/String; = "ndefcardstate"

.field public static final EXTRA_NDEF_MAXLENGTH:Ljava/lang/String; = "ndefmaxlength"

.field public static final EXTRA_NDEF_MSG:Ljava/lang/String; = "ndefmsg"

.field public static final EXTRA_NDEF_TYPE:Ljava/lang/String; = "ndeftype"

.field public static final ICODE_SLI:Ljava/lang/String; = "com.nxp.ndef.icodesli"

.field public static final MIFARE_CLASSIC:Ljava/lang/String; = "com.nxp.ndef.mifareclassic"

.field public static final NDEF_MODE_READ_ONLY:I = 0x1

.field public static final NDEF_MODE_READ_WRITE:I = 0x2

.field public static final NDEF_MODE_UNKNOWN:I = 0x3

.field public static final NFC_FORUM_TYPE_1:Ljava/lang/String; = "org.nfcforum.ndef.type1"

.field public static final NFC_FORUM_TYPE_2:Ljava/lang/String; = "org.nfcforum.ndef.type2"

.field public static final NFC_FORUM_TYPE_3:Ljava/lang/String; = "org.nfcforum.ndef.type3"

.field public static final NFC_FORUM_TYPE_4:Ljava/lang/String; = "org.nfcforum.ndef.type4"

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final TYPE_1:I = 0x1

.field public static final TYPE_2:I = 0x2

.field public static final TYPE_3:I = 0x3

.field public static final TYPE_4:I = 0x4

.field public static final TYPE_ICODE_SLI:I = 0x66

.field public static final TYPE_MIFARE_CLASSIC:I = 0x65

.field public static final TYPE_OTHER:I = -0x1

.field public static final UNKNOWN:Ljava/lang/String; = "android.ndef.unknown"


# instance fields
.field private final mCardState:I

.field private final mMaxNdefSize:I

.field private final mNdefMsg:Landroid/nfc/NdefMessage;

.field private final mNdefType:I


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 3
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x6

    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "ndefmaxlength"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/nfc/tech/Ndef;->mMaxNdefSize:I

    const-string v1, "ndefcardstate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/nfc/tech/Ndef;->mCardState:I

    const-string v1, "ndefmsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/nfc/NdefMessage;

    iput-object v1, p0, Landroid/nfc/tech/Ndef;->mNdefMsg:Landroid/nfc/NdefMessage;

    const-string v1, "ndeftype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "NDEF tech extras are null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;
    .locals 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Landroid/nfc/tech/Ndef;

    invoke-direct {v2, p0}, Landroid/nfc/tech/Ndef;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public canMakeReadOnly()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    .local v1, "tagService":Landroid/nfc/INfcTag;
    if-nez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget v3, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    invoke-interface {v1, v3}, Landroid/nfc/INfcTag;->canMakeReadOnly(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NFC"

    const-string v4, "NFC service dead"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getCachedNdefMessage()Landroid/nfc/NdefMessage;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/tech/Ndef;->mNdefMsg:Landroid/nfc/NdefMessage;

    return-object v0
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/nfc/tech/Ndef;->mMaxNdefSize:I

    return v0
.end method

.method public getNdefMessage()Landroid/nfc/NdefMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    :try_start_0
    iget-object v5, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v5}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v3

    .local v3, "tagService":Landroid/nfc/INfcTag;
    if-nez v3, :cond_1

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Mock tags don\'t support this operation."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "tagService":Landroid/nfc/INfcTag;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "NFC"

    const-string v6, "NFC service dead"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v1

    .restart local v3    # "tagService":Landroid/nfc/INfcTag;
    :cond_1
    :try_start_1
    iget-object v5, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v5}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    .local v2, "serviceHandle":I
    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->ndefRead(I)Landroid/nfc/NdefMessage;

    move-result-object v1

    .local v1, "msg":Landroid/nfc/NdefMessage;
    if-nez v1, :cond_0

    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->isPresent(I)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Landroid/nfc/TagLostException;

    invoke-direct {v5}, Landroid/nfc/TagLostException;-><init>()V

    throw v5

    .end local v1    # "msg":Landroid/nfc/NdefMessage;
    :cond_2
    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->isPresent(I)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Landroid/nfc/TagLostException;

    invoke-direct {v5}, Landroid/nfc/TagLostException;-><init>()V

    throw v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move-object v1, v4

    goto :goto_0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "android.ndef.unknown"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "org.nfcforum.ndef.type1"

    goto :goto_0

    :sswitch_1
    const-string v0, "org.nfcforum.ndef.type2"

    goto :goto_0

    :sswitch_2
    const-string v0, "org.nfcforum.ndef.type3"

    goto :goto_0

    :sswitch_3
    const-string v0, "org.nfcforum.ndef.type4"

    goto :goto_0

    :sswitch_4
    const-string v0, "com.nxp.ndef.mifareclassic"

    goto :goto_0

    :sswitch_5
    const-string v0, "com.nxp.ndef.icodesli"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isWritable()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/nfc/tech/Ndef;->mCardState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeReadOnly()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    :try_start_0
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    .local v2, "tagService":Landroid/nfc/INfcTag;
    if-nez v2, :cond_0

    .end local v2    # "tagService":Landroid/nfc/INfcTag;
    :goto_0
    :sswitch_0
    return v3

    .restart local v2    # "tagService":Landroid/nfc/INfcTag;
    :cond_0
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/nfc/INfcTag;->ndefMakeReadOnly(I)I

    move-result v1

    .local v1, "errorCode":I
    sparse-switch v1, :sswitch_data_0

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "errorCode":I
    .end local v2    # "tagService":Landroid/nfc/INfcTag;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "NFC"

    const-string v5, "NFC service dead"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "errorCode":I
    .restart local v2    # "tagService":Landroid/nfc/INfcTag;
    :sswitch_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .end local v1    # "errorCode":I
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Tag is not ndef"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x8 -> :sswitch_0
        -0x1 -> :sswitch_2
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic reconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public writeNdefMessage(Landroid/nfc/NdefMessage;)V
    .locals 6
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    :try_start_0
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v3

    .local v3, "tagService":Landroid/nfc/INfcTag;
    if-nez v3, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Mock tags don\'t support this operation."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "tagService":Landroid/nfc/INfcTag;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "NFC"

    const-string v5, "NFC service dead"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :sswitch_0
    return-void

    .restart local v3    # "tagService":Landroid/nfc/INfcTag;
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    .local v2, "serviceHandle":I
    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v2, p1}, Landroid/nfc/INfcTag;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    move-result v1

    .local v1, "errorCode":I
    sparse-switch v1, :sswitch_data_0

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    :sswitch_1
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    :sswitch_2
    new-instance v4, Landroid/nfc/FormatException;

    invoke-direct {v4}, Landroid/nfc/FormatException;-><init>()V

    throw v4

    .end local v1    # "errorCode":I
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Tag is not ndef"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x8 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
