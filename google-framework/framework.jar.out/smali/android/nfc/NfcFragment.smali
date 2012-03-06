.class public final Landroid/nfc/NfcFragment;
.super Landroid/app/Fragment;
.source "NfcFragment.java"


# static fields
.field static final FRAGMENT_TAG:Ljava/lang/String; = "android.nfc.NfcFragment"

.field static sIsInitialized:Z

.field static sNfcActivityManager:Landroid/nfc/NfcActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/NfcFragment;->sIsInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static attach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 39
    .local v0, manager:Landroid/app/FragmentManager;
    const-string v1, "android.nfc.NfcFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroid/nfc/NfcFragment;

    invoke-direct {v2}, Landroid/nfc/NfcFragment;-><init>()V

    const-string v3, "android.nfc.NfcFragment"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 42
    :cond_0
    return-void
.end method

.method public static remove(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 49
    .local v1, manager:Landroid/app/FragmentManager;
    const-string v2, "android.nfc.NfcFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 50
    .local v0, fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 61
    sget-boolean v1, Landroid/nfc/NfcFragment;->sIsInitialized:Z

    if-nez v1, :cond_0

    .line 62
    const/4 v1, 0x1

    sput-boolean v1, Landroid/nfc/NfcFragment;->sIsInitialized:Z

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 65
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 66
    iget-object v1, v0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    sput-object v1, Landroid/nfc/NfcFragment;->sNfcActivityManager:Landroid/nfc/NfcActivityManager;

    .line 69
    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 90
    sget-object v0, Landroid/nfc/NfcFragment;->sNfcActivityManager:Landroid/nfc/NfcActivityManager;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Landroid/nfc/NfcFragment;->sNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {p0}, Landroid/nfc/NfcFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcActivityManager;->onDestroy(Landroid/app/Activity;)V

    .line 93
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 82
    sget-object v0, Landroid/nfc/NfcFragment;->sNfcActivityManager:Landroid/nfc/NfcActivityManager;

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Landroid/nfc/NfcFragment;->sNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {p0}, Landroid/nfc/NfcFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcActivityManager;->onPause(Landroid/app/Activity;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 74
    sget-object v0, Landroid/nfc/NfcFragment;->sNfcActivityManager:Landroid/nfc/NfcActivityManager;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Landroid/nfc/NfcFragment;->sNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {p0}, Landroid/nfc/NfcFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcActivityManager;->onResume(Landroid/app/Activity;)V

    .line 77
    :cond_0
    return-void
.end method
