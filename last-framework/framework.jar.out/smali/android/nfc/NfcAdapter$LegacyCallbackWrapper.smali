.class final Landroid/nfc/NfcAdapter$LegacyCallbackWrapper;
.super Ljava/lang/Object;
.source "NfcAdapter.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LegacyCallbackWrapper"
.end annotation


# instance fields
.field final mLegacyCallback:Landroid/nfc/NfcAdapter$NdefPushCallback;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter$NdefPushCallback;)V
    .locals 0
    .parameter "legacyCallback"

    .prologue
    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    iput-object p1, p0, Landroid/nfc/NfcAdapter$LegacyCallbackWrapper;->mLegacyCallback:Landroid/nfc/NfcAdapter$NdefPushCallback;

    .line 828
    return-void
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 1
    .parameter "event"

    .prologue
    .line 835
    iget-object v0, p0, Landroid/nfc/NfcAdapter$LegacyCallbackWrapper;->mLegacyCallback:Landroid/nfc/NfcAdapter$NdefPushCallback;

    invoke-interface {v0}, Landroid/nfc/NfcAdapter$NdefPushCallback;->createMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    return-object v0
.end method

.method public onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 831
    iget-object v0, p0, Landroid/nfc/NfcAdapter$LegacyCallbackWrapper;->mLegacyCallback:Landroid/nfc/NfcAdapter$NdefPushCallback;

    invoke-interface {v0}, Landroid/nfc/NfcAdapter$NdefPushCallback;->onMessagePushed()V

    .line 832
    return-void
.end method
