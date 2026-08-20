.class public Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;
.super Ljava/lang/Object;
.source "AdvertisingTermsDialog.java"


# static fields
.field private static final PREFERENCES_PREFIX:Ljava/lang/String; = "AdvertisingTermsDialogAlreadyShown"

.field private static volatile onScreen:Z = false


# instance fields
.field private final dialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    sget p1, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_advertising_terms:I

    .line 23
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_advertising_terms_message:I

    .line 24
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_accept:I

    new-instance v2, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog$2;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog$2;-><init>(Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;)V

    .line 26
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_refuse:I

    new-instance v2, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog$1;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog$1;-><init>(Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;)V

    .line 35
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;->dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 14
    sput-boolean p0, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;->onScreen:Z

    return p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;->setAlreadyShown()V

    return-void
.end method

.method private isAlreadyShown()Z
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getSettingsCoder()Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;->PREFERENCES_PREFIX:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isOnScreen()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;->onScreen:Z

    return v0
.end method

.method private setAlreadyShown()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getSettingsCoder()Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;->PREFERENCES_PREFIX:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefBoolean(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public show(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;->isAlreadyShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 50
    sput-boolean p1, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;->onScreen:Z

    .line 51
    iget-object p1, p0, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
